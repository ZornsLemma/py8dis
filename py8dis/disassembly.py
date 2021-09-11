from __future__ import print_function
import collections
import copy
import six

import config

_final_commands = []

# We assign this to elements of classification which are for second and
# subequent bytes of a multi-byte classifcation. Its value doesn't really
# matter, as long as it's not None so we know these bytes have been classified.
partial_classification = 0

def add_comment(addr, text):
    annotations[addr].append(Comment(text))

def add_constant(value, name):
    constants.append((value, name))

def add_label(addr, name, expr=False):
    # ENHANCE: die_rt() that addr is in 0-&ffff inclusive?
    # An address has one "primary" label, which is the first label we see; this
    # will be used for references to the address in the disassembly.
    if addr not in labels:
       labels[addr] = name
       is_expr_label[addr] = expr
    if not expr:
        # An address can have multiple labels as annotations.
        annotations[addr].append(Label(addr, name))

def add_optional_label(addr, name, base_addr=None):
    assert base_addr is None or addr != base_addr
    optional_labels[addr] = (name, base_addr)

def get_label(addr):
    assert addr in labels
    return labels[addr]

def ensure_addr_labelled(addr):
    if addr not in labels:
        if addr in optional_labels:
            label, base_addr = optional_labels.get(addr)
            if base_addr is None:
                add_label(addr, label)
            else:
                ensure_addr_labelled(base_addr)
                add_label(addr, label, True)
        else:
            label = ("l%04x" if config.lower_case() else "L%04X") % addr
            add_label(addr, label)
    return labels[addr]

def is_classified(addr, length):
    return any(x is not None for x in classifications[addr:addr+length])

def add_classification(addr, classification):
    assert classification is not None
    assert not is_classified(addr, classification.length())
    classifications[addr] = classification
    for i in range(1, classification.length()):
        classifications[addr+i] = partial_classification

def get_classification(addr):
    return classifications[addr]

# Combine adjacent mergeable classifications of the same type.
def merge_classifications(start_addr, end_addr):
    addr = start_addr
    while addr < end_addr:
        if classifications[addr].is_mergeable():
            addr2 = addr + classifications[addr].length()
            while addr2 < end_addr and type(classifications[addr2]) is type(classifications[addr]) and classifications[addr2].is_mergeable():
                addr2_length = classifications[addr2].length()
                classifications[addr].set_length(classifications[addr].length() + addr2_length)
                classifications[addr2] = partial_classification
                addr2 += addr2_length
        addr += classifications[addr].length()

# Split variable-length classifications at labels to minimise the number of
# labels assigned via expressions instead of simple "label here" definitions.
def split_classifications(start_addr, end_addr):
    addr = start_addr
    while addr < end_addr:
        c = classifications[addr]
        if c.is_mergeable() and c.length() > 1:
            for i in range(1, c.length()):
                if (addr + i) in labels and not is_expr_label[addr + i]:
                    classifications[addr + i] = copy.copy(c)
                    classifications[addr + i].set_length(c.length() - i)
                    c.set_length(i)
                    break
        addr += classifications[addr].length()

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

# TODO: General note, not here - we should probably check all disassembly ranges are non-overlapping and merge any adjacent ones.
def emit():
    formatter = config.formatter()

    print(formatter.disassembly_start(), end="")

    disassembled_addresses = set()
    for start_addr, end_addr in config.disassembly_range():
        # We include end_addr in the range because we're going to use the set
        # we're building up to control emission of inline labels - the end
        # address of a range has no classification, but the assembly pointer
        # does reach it and we can emit labels inline there.
        disassembled_addresses.update(range(start_addr, end_addr + 1))

    # Give every classification a chance to do any last-minute processing (e.g.
    # creating labels) before we start to emit things and it's too late to
    # make changes.
    for classification in classifications:
        if classification is not None and classification != partial_classification:
            classification.finalise()

    # Emit constants first
    if len(constants) > 0:
        for value, name in sorted(constants, key=lambda x: x[0]):
            if isinstance(value, six.integer_types):
                value = formatter.hex(value)
            print(formatter.explicit_label(name, value))
        print()

    # Emit labels which aren't within one of the disassembled ranges and which
    # therefore must be defined explicitly.
    sep = ""
    for addr in sorted(annotations.keys()):
        if addr not in disassembled_addresses:
            for annotation in sorted_annotations(annotations[addr]):
                if isinstance(annotation, Label):
                    print(annotation.as_string_assignment())
                    sep = "\n"
    print(sep, end="")

    sep = ""
    for start_addr, end_addr in sorted(config.disassembly_range()):
        print(sep, end="")
        sep = "\n"
        print(formatter.code_start(start_addr, end_addr))
        addr = start_addr
        while addr <= end_addr:
            # We need to emit any annotations that are "due" part-way through the
            # classification output first. This may involve creating a label at
            # the point before the classification output.
            if addr < end_addr:
                classification_length = classifications[addr].length()
            else:
                classification_length = 1
            pending_annotations = []
            for i in range(1, classification_length):
                for annotation in sorted_annotations(annotations[addr + i]):
                    pending_annotations.append(annotation.as_string(addr))
            for annotation in sorted_annotations(annotations[addr]):
                print(annotation.as_string(addr))
            for annotation in pending_annotations:
                print(annotation)
            if addr < end_addr:
                # We can now emit the classification output.
                classifications[addr].emit(addr)
            addr += classification_length
        print(formatter.code_end(), end="")

    if len(_final_commands) > 0:
        print()
        for line in _final_commands:
            print(line)

    print(formatter.disassembly_end(), end="")


class Label(object):
    priority = 1000

    def __init__(self, addr, name):
        self.addr = addr
        self.name = name

    def as_string(self, addr):
        formatter = config.formatter()
        offset = self.addr - addr
        assert offset >= 0
        if offset == 0:
            return formatter.inline_label(self.name)
        else:
            label = ensure_addr_labelled(addr)
            return formatter.explicit_label(self.name, label, offset)

    def as_string_assignment(self):
        formatter = config.formatter()
        return formatter.explicit_label(self.name, formatter.hex4(self.addr))


class Comment(object):
    priority = 0

    def __init__(self, text):
        self.text = text

    def as_string(self, addr):
        formatter = config.formatter()
        return "\n".join("%s %s" % (formatter.comment_prefix(), line) for line in self.text.split("\n"))


# There is at most one classification for any address; in practice by the end of
# disassembly there will be exactly one for all addresses in the target range,
# because we'll classify anything left over as data. Classifications are effectively
# "things in the assembler input which generate direct output", like instructions
# or data.
classifications = [None] * 64*1024

# labels are named addresses which are used automatically when disassembling.
# Some labels are expression labels and are defined in terms of other labels;
# the expression is used directly to represent the address. Optional labels are
# pruned away if they aren't used. Constants are named values which are not used
# automatically, only when specifically indicated for a particular address.
labels = {}
is_expr_label = {}
optional_labels = {}
constants = []

# An address can have an arbitrary number of annotations; we may need to slide
# them around in the code slight to fit them round multi-byte classifications.
# By using a list we preserve the relative order of additions; we do sort this
# based on the annotation priorities but this is a stable sort and preserves
# order for any particular annotation type.
annotations = collections.defaultdict(list)
