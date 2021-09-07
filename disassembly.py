from __future__ import print_function
import collections
import copy

import config

def add_comment(addr, text):
    annotations[addr].append(Comment(text))

def add_constant(value, name):
    constants.append((value, name))

def add_label(addr, name, expr=False):
    # TODO: die_rt() that addr is in 0-&ffff inclusive?
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

# TODO: This could maybe just do ensure_addr_labelled()??? And then no longer expose that???
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
        classifications[addr+i] = 0 # TODO: slightly ugly dummy value

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
                classifications[addr2] = 0 # TODO: slightly ugly dummy value
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
                if (addr + i) in labels:
                    classifications[addr + i] = copy.copy(c)
                    classifications[addr + i].set_length(c.length() - i)
                    c.set_length(i)
                    break
        addr += classifications[addr].length()

def emit(start_addr, end_addr):
    formatter = config.formatter()

    if len(constants) > 0:
        for value, name in sorted(constants, key=lambda x: x[0]):
            # TODO: Are constants always numbers (not expressions)? Should we output them in hex?
            print(formatter.explicit_label(name, value))
        print()

    sep = ""
    for addr in sorted(annotations.keys()):
        if addr < start_addr or addr >= end_addr:
            for annotation in sorted_annotations(annotations[addr]):
                if isinstance(annotation, Label):
                    annotation.emit_assignment()
                    sep = "\n"
    print(sep, end="")

    print(formatter.code_start(start_addr, end_addr))
    addr = start_addr
    while addr < end_addr:
        # We need to emit any annotations that are "due" part-way through the
        # classification output first. This may involve creating a label at
        # the point before the classification output.
        classification_length = classifications[addr].length()
        pending_annotations = []
        for i in range(1, classification_length):
            for annotation in sorted_annotations(annotations[addr + i]):
                pending_annotations.append(annotation.as_string(addr))
        for annotation in sorted_annotations(annotations[addr]):
            annotation.emit(addr)
        for annotation in pending_annotations:
            print(annotation)
        # We can now emit the classification output.
        classifications[addr].emit(addr)
        addr += classification_length
    print(formatter.code_end())

# TODO: Idea is below here is just implementation detail, perhaps prefix things e.g. class names with _


class Label(object):
    priority = 1000

    def __init__(self, addr, name):
        self.addr = addr
        self.name = name

    def emit(self, emit_addr):
        print(self.as_string(emit_addr))

    def as_string(self, emit_addr): # TODO: ARG IS MISNAMED NOW
        formatter = config.formatter()
        offset = self.addr - emit_addr
        assert offset >= 0
        if offset == 0:
            return formatter.inline_label(self.name)
        else:
            label = ensure_addr_labelled(emit_addr)
            return formatter.explicit_label(self.name, label, offset)

    def emit_assignment(self):
        formatter = config.formatter()
        print(formatter.explicit_label(self.name, formatter.hex4(self.addr)))



class Comment(object):
    priority = 0

    def __init__(self, text):
        self.text = text

    # TODO: Do the emit() functions add any value any more or should callers just use as_string?
    def emit(self, emit_addr):
        print(self.as_string(emit_addr))

    def as_string(self, emit_addr):
        formatter = config.formatter()
        return "\n".join("%s %s" % (formatter.comment_prefix(), line) for line in self.text.split("\n"))


def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

# There is at most one classification for any address; in practice by the end of
# disassembly there will be exactly one for all addresses in the target range,
# because we'll classify anything left over as data. Classifications are effectively
# "things in the assembler input which generate direct output", like instructions
# or data.
classifications = [None] * 64*1024
# TODO: COMMENT
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
