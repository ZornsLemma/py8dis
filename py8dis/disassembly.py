from __future__ import print_function
import collections
import copy
import six

import config
import trace # SFTODO TEMP?
import utils

_final_commands = []
_labels_fixed = False
_user_label_hook = None

primary_labels = {}
all_simple_labels = {}
simple_labelled_addrs = set()

# We assign this to elements of classification which are for second and
# subsequent bytes of a multi-byte classifcation. Its value doesn't really
# matter, as long as it's not None so we know these bytes have been classified.
partial_classification = 0

def set_user_label_hook(hook):
    global _user_label_hook
    assert _user_label_hook is None
    _user_label_hook = hook

def add_comment(addr, text):
    annotations[addr].append(Comment(text))

def add_constant(value, name):
    constants.append((value, name))

def is_simple_name(s):
    assert len(s) > 0
    assert isinstance(s, six.string_types)
    def valid_first(c):
        return c.isalpha() or c == "_"
    def valid_later(c):
        return c.isalnum() or c == "_"
    return valid_first(s[0]) and all(valid_later(c) for c in s)

def ensure_annotation(addr, s): # TODO: rename "ensure_simple_label"?
    assert is_simple_name(s)
    if s in all_simple_labels:
        assert all_simple_labels[s] == addr
    else:
        all_simple_labels[s] = addr
        simple_labelled_addrs.add(addr)
        annotations[addr].append(Label(addr, s))

def add_label(addr, s):
    assert 0 <= addr <= 0xffff
    if addr not in primary_labels:
        primary_labels[addr] = s
    if is_simple_name(s):
        ensure_annotation(addr, s)

def add_optional_label(addr, s, base_addr=None):
    assert 0 <= addr <= 0xffff
    if base_addr is not None:
        assert addr != base_addr
        assert 0 <= base_addr <= 0xffff
        assert base_addr in optional_labels
        assert optional_labels[base_addr][1] is None
    assert addr not in optional_labels
    optional_labels[addr] = (s, base_addr)

expr_labels = {}
defined_labels = {}
def SFTODOOLDadd_label(addr, name, expr=False):
    # ENHANCE: die_rt() that addr is in 0-&ffff inclusive?
    assert not _labels_fixed
    labelled_addrs[addr] = [] # TODO: THIS SHOULD JUST BE A SET
    if expr:
        assert addr not in expr_labels
        expr_labels[addr] = name
    else:
        # The first name assigned to an address by this function has priority
        # and will be used by default, but all names will be emitted as labels.
        if addr not in defined_labels:
            defined_labels[addr] = name
        if name not in all_labels:
            annotations[addr].append(Label(addr, name))
            all_labels.add(name)

def SFTODOOLDadd_optional_label(addr, name, base_addr=None):
    assert not _labels_fixed
    assert base_addr is None or addr != base_addr
    optional_labels[addr] = (name, base_addr)

# TODO: Later it might make sense for context to default to None, but for now don't want this.
def get_label(addr, context):
    #SFTODODELETEassert addr in labelled_addrs
    return utils.LazyString("%s", lambda: get_final_label(addr, context))

# TODO: May want to expose this to use as it make be useful in a user label maker hook
def is_code(addr):
    classification = classifications[addr]
    if classification is None or classification == partial_classification:
        return False
    return classification.is_code(addr)

# TODO: Should I call these "references", since they may be things like expressions? then again, I am calling things labels when they are really expressions too.
# TODO: If the is expr return is always is_simple_name-ish then we don't need it
def our_label_maker(addr, context):
    if addr in primary_labels:
        s = primary_labels[addr]
        return (s, not is_simple_name(s))
    if addr in optional_labels:
        s, base_addr = optional_labels[addr]
        if base_addr is not None:
            # TODO: *If* our "suggestion" is not acted on, we will have added
            # this base label unnecessarily. I don't think this is a big deal,
            # but ideally we wouldn't do it.
            add_label(base_addr, optional_labels[base_addr][0])
        return (s, not is_simple_name(s))
    return (utils.force_case(("c%04x" if is_code(addr) else "l%04x") % addr), False)

def label_maker(addr, context):
    suggestion = our_label_maker(addr, context)
    if _user_label_hook is not None:
        user_suggestion = _user_label_hook(addr, context, suggestion)
        if user_suggestion is not None:
            return user_suggestion
    return suggestion




# TODO: WIP - this creates a name, it doesn't update any data structures (but can ref them of course)
def SFTODOOLDlabel_maker(addr, context):
    # TODO: This should probably call some kind of user level hook
    if addr in expr_labels:
        suggestion = (expr_labels[addr], True)
    elif addr in defined_labels:
        suggestion = (defined_labels[addr], False)
    elif addr in optional_labels:
        # TODO: We need to respect the base_addr part of optional_labels
        value, base_addr = optional_labels[addr]
        if base_addr is None:
            suggestion = (value, False)
        else:
            # TODO: We need to be sure optional_label[base_addr] exists (or we change how optional label expressions work)
            suggestion = (value, True)
    else:
        if is_code(addr):
            label = "c%04x" % addr
        else:
            label = "l%04x" % addr
        suggestion = (utils.force_case(label), False)
    if _user_label_hook is not None: # TODO
        user_suggestion = _user_label_hook(addr, context, suggestion)
        if user_suggestion is not None:
            suggestion = user_suggestion
    return suggestion

all_labels = set()
def get_final_label(addr, context):
    #SFTODOOLDassert _labels_fixed
    #SFTODOOLDassert addr in labelled_addrs
    label, is_expr = label_maker(addr, context)
    add_label(addr, label)
    return label

# TODO: WIP - but my current thinking is that all this function is doing is saying "make sure there is a label at address addr, because we will want to refer to it by label - I (the caller) don't care what that label is, I don't have any suggestions to make (though TODO: maybe I could in fact say "code" or "data"?) just make sure there is one"
def ensure_addr_labelled(addr):
    return # TODO!?
    if addr not in labelled_addrs:
        assert not _labels_fixed
        labelled_addrs[addr] = []
    return get_label(addr, None) # TODO: NEED A CONTEXT REALLY
    # TODO!? FOLLOWING REDUNDANT/TO BE MOVED?
    if addr not in labels:
        assert not _labels_fixed
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
    return get_label(addr, None) # TODO: NEED A CONTEXT REALLY

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
    return # SFTODO!? THINK WE HAVE THIS DONE ELSEWHERE NOW
    addr = start_addr
    while addr < end_addr:
        c = classifications[addr]
        if c.is_mergeable() and c.length() > 1:
            for i in range(1, c.length()):
                if (addr + i) in labelled_addrs:
                    # TODO: We need to decide if there are non-expression labels at addr+i, for now we just hack and split even if there is only an expression label
                    if addr+i in labelled_addrs: # TODO any(not is_expr for name, is_expr in labelled_addrs[addr+i]):
                        classifications[addr + i] = copy.copy(c)
                        classifications[addr + i].set_length(c.length() - i)
                        c.set_length(i)
                        break
        addr += classifications[addr].length()

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

def fix_labels():
    global _labels_fixed
    _labels_fixed = True

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

    # TODO!?
    classification_str = emitSFTODO()

    # If there are labels which fall in the middle of multi-byte classifications,
    # they will have to be defined via expressions from labels at the start of the
    # multi-byte classification they fall within. Define those start labels now.
    # TODO: This is a bit pessimistic - those labels might be expression labels, for example.
    for start_addr, end_addr in sorted(config.disassembly_range()):
        addr = start_addr
        while addr < end_addr:
            classification_length = classifications[addr].length()
            for i in range(1, classification_length):
                if addr+i in simple_labelled_addrs:
                    ensure_addr_labelled(addr)
                    break
            addr += classification_length

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
                print("\n".join(classification_str[addr]))
            addr += classification_length
        print(formatter.code_end(), end="")

    if len(_final_commands) > 0:
        print()
        for line in _final_commands:
            print(line)

    print(formatter.disassembly_end(), end="")


def emitSFTODO():
    c_str = {}

    for start_addr, end_addr in sorted(config.disassembly_range()):
        addr = start_addr
        while addr < end_addr:
            c = classifications[addr]
            c_str[addr] = c.as_string_list(addr)
            addr += c.length()

    for start_addr, end_addr in sorted(config.disassembly_range()):
        addr = start_addr
        while addr < end_addr:
            c = classifications[addr]
            if c.is_mergeable() and c.length() > 1:
                for i in range(1, c.length()):
                    if addr+i in simple_labelled_addrs:
                        classifications[addr + i] = copy.copy(c)
                        classifications[addr + i].set_length(c.length() - i)
                        c.set_length(i)
                        c_str[addr] = c.as_string_list(addr)
                        c_str[addr + i] = classifications[addr + i].as_string_list(addr + i)
                        break
            addr += c.length()

    return c_str


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
            label = get_label(addr, None) # TODO NEED CONTEXT IDEALLY? MAYBE NOT HERE
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
SFTODOXXXlabelled_addrs = collections.defaultdict(set)

# An address can have an arbitrary number of annotations; we may need to slide
# them around in the code slight to fit them round multi-byte classifications.
# By using a list we preserve the relative order of additions; we do sort this
# based on the annotation priorities but this is a stable sort and preserves
# order for any particular annotation type.
annotations = collections.defaultdict(list)
