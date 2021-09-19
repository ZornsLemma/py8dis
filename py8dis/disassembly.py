from __future__ import print_function
import classification # TODO!?
import collections
import copy
import six

import config
import trace # SFTODO TEMP?
import trace6502 # SFTODO TEMP?
import utils

user_label_maker_hook = None

primary_labels = {}
all_simple_labels = {}
simple_labelled_addrs = set()
sequence_hooks = [] # TODO: move?

trace_done = False # TODO!?


# There is at most one classification for any address; in practice by the end of
# disassembly there will be exactly one for all addresses in the target range,
# because we'll classify anything left over as data. Classifications are effectively
# "things in the assembler input which generate direct output", like instructions
# or data.
classifications = [None] * 64*1024
# TODO: Experimental, "optimistic" because it's based on straight line code "this is *a* possible execution" - we may want to add a "pessimistic" variant which does its best to *guess* at the "common to all possible executions" behaviour
cpu_state_optimistic = [None] * 64*1024

optional_labels = {}
constants = []

# An address can have an arbitrary number of annotations; we may need to slide
# them around in the code slight to fit them round multi-byte classifications.
# By using a list we preserve the relative order of additions; we do sort this
# based on the annotation priorities but this is a stable sort and preserves
# order for any particular annotation type.
annotations = collections.defaultdict(list)

# We assign this to elements of classification which are for second and
# subsequent bytes of a multi-byte classifcation. Its value doesn't really
# matter, as long as it's not None so we know these bytes have been classified.
partial_classification = 0

def set_user_label_maker_hook(hook):
    global user_label_maker_hook
    assert user_label_maker_hook is None
    user_label_maker_hook = hook

def add_comment(addr, text):
    annotations[addr].append(Comment(text))

def add_constant(value, name):
    # TODO: inefficient linear search!
    for v, n in constants:
        if n == name:
            assert v == value
            return
    constants.append((value, name))

def is_simple_name(s):
    assert isinstance(s, six.string_types)
    assert len(s) > 0
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
    assert 0 <= addr <= 0x10000 # 0x10000 is valid for labels, not code/data TODO?
    if addr not in primary_labels:
        primary_labels[addr] = s
    if is_simple_name(s):
        ensure_annotation(addr, s)

def add_optional_label(addr, s, base_addr=None):
    assert 0 <= addr <= 0xffff
    if addr in optional_labels:
        assert optional_labels[addr] == (s, base_addr)
        return
    if base_addr is not None:
        assert addr != base_addr
        assert 0 <= base_addr <= 0xffff
        assert base_addr in optional_labels
        assert optional_labels[base_addr][1] is None
    else:
        assert is_simple_name(s)
    optional_labels[addr] = (s, base_addr)

# TODO: Later it might make sense for context to default to None, but for now don't want this.
def get_label(addr, context):
    return utils.LazyString("%s", lambda: get_final_label(addr, context))

# TODO: May want to expose this to use as it make be useful in a user label maker hook
def is_code(addr):
    classification = classifications[addr]
    if classification is None or classification == partial_classification:
        return False
    return classification.is_code(addr)

# TODO: Should I call these "references", since they may be things like expressions? then again, I am calling things labels when they are really expressions too.
def our_label_maker(addr, context):
    assert context is not None
    if addr in primary_labels:
        return primary_labels[addr]
    if addr in optional_labels:
        s, base_addr = optional_labels[addr]
        if base_addr is not None:
            # TODO: If our "suggestion" is not acted on, we will have added
            # this base label unnecessarily. I don't think this is a big deal,
            # but ideally we wouldn't do it.
            add_label(base_addr, optional_labels[base_addr][0])
        return s
    return utils.force_case(("c%04x" if is_code(addr) else "l%04x") % addr)

def label_maker(addr, context):
    suggestion = our_label_maker(addr, context)
    if user_label_maker_hook is not None:
        user_suggestion = user_label_maker_hook(addr, context, suggestion)
        if user_suggestion is not None:
            return user_suggestion
    return suggestion

def get_final_label(addr, context):
    assert trace_done
    s = label_maker(addr, context)
    add_label(addr, s)
    return s

def is_classified(addr, length=1):
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
def merge_classifications():
    addr = 0
    while addr < len(classifications):
        if classifications[addr] is not None and classifications[addr].is_mergeable():
            addr2 = addr + classifications[addr].length()
            while addr2 < len(classifications) and type(classifications[addr2]) is type(classifications[addr]) and classifications[addr2].is_mergeable():
                addr2_length = classifications[addr2].length()
                classifications[addr].set_length(classifications[addr].length() + addr2_length)
                classifications[addr2] = partial_classification
                addr2 += addr2_length
        addr += 1 if classifications[addr] is None else classifications[addr].length()

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

# TODO: Move
opcode_jsr = 0x20
opcode_jmp = 0x4c
opcode_lda_imm = 0xa9
opcode_ldx_imm = 0xa2
opcode_ldy_imm = 0xa0
opcode_tax = 0xaa
opcode_txa = 0x8a
opcode_tay = 0xa8
opcode_tya = 0x98
opcode_sequence = [opcode_lda_imm, opcode_ldx_imm, opcode_ldy_imm]
opcode_corrupt_a = [opcode_txa, opcode_tya]
opcode_corrupt_x = [opcode_tax]
opcode_corrupt_y = [opcode_tay]
opcode_neutral = []

# TODO: Move - this is 6502 specific code
def sequence_complete(sequence):
    memory = config.memory
    if len(sequence) < 2 or memory[sequence[-1]] not in (opcode_jsr, opcode_jmp):
        del sequence[:]
        return
    target = utils.get_u16(sequence[-1] + 1)
    a_addr = None
    x_addr = None
    y_addr = None
    for addr in sequence[:-1]:
        opcode = memory[addr]
        if opcode == opcode_lda_imm:
            a_addr = addr + 1
        elif opcode == opcode_ldx_imm:
            x_addr = addr + 1
        elif opcode == opcode_ldy_imm:
            y_addr = addr + 1
        elif opcode in opcode_corrupt_a:
            a_addr = None
        elif opcode in opcode_corrupt_x:
            x_addr = None
        elif opcode in opcode_corrupt_y:
            y_addr = None
        elif opcode in opcode_neutral:
            pass
        else:
            assert False
    if False:
        def SFTODO(x):
            if x is None:
                return "-"
            return "%04x=%02x" % (x, config.memory[x])
        print("; XXX %04x %s %s %s" % (target, SFTODO(a_addr), SFTODO(x_addr), SFTODO(y_addr)))
    for hook in sequence_hooks:
        if hook(target, a_addr, x_addr, y_addr) is not None:
            break
    del sequence[:]

# TODO: Move? We do need to do this before setting trace_done though (I think)...
# Note that this does *not* check for labels breaking up a sequence. We're not
# optimising code here, we are making an inference from a series of straight
# line instructions - the fact that the sequence might *also* be entered
# part-way through via a label doesn't invalidate that inference.
def analyse_sequences():
    addr = 0
    sequence = []
    state = {}
    while addr < 0x10000:
        c = classifications[addr]
        if c is not None:
            if c.is_code(addr):
                c.update_cpu_state(addr, state)
            else:
                state = {}
            cpu_state_optimistic[addr] = copy.copy(state)
            addr += c.length()
        else:
            addr += 1
    return # TODO: DELETE BELOW HERE, KEPT TEMP
    global opcode_neutral
    global opcode_corrupt_a
    global opcode_corrupt_x
    global opcode_corrupt_y
    for opcode, c in trace6502.opcodes.items(): # TODO: V HACKY
        if c.mnemonic.startswith("ST") or c.mnemonic.startswith("PH"):
            opcode_neutral.append(opcode)
        if c.mnemonic == "LDA" and opcode != opcode_lda_imm:
            opcode_corrupt_a.append(opcode)
        if c.mnemonic == "LDX" and opcode != opcode_ldx_imm:
            opcode_corrupt_x.append(opcode)
        if c.mnemonic == "LDY" and opcode != opcode_ldy_imm:
            opcode_corrupt_y.append(opcode)
    opcode_sequence.extend(opcode_corrupt_a)
    opcode_sequence.extend(opcode_corrupt_x)
    opcode_sequence.extend(opcode_corrupt_y)
    for start_addr, end_addr in config.load_ranges:
        addr = start_addr
        sequence = []
        while addr < end_addr:
            c = classifications[addr]
            # TODO: Use of isinstance() is hacky - not the only problem, but this is
            # supposed to be generic code yet it's using trace6502...
            if isinstance(c, trace6502.Opcode):
                opcode = config.memory[addr]
                # TODO: Super hacky.
                if opcode in (opcode_jsr, opcode_jmp) or opcode in opcode_sequence:
                    sequence.append(addr)
                if opcode not in opcode_sequence and opcode not in opcode_neutral:
                    sequence_complete(sequence)
            else:
                sequence_complete(sequence)
            if c is not None:
                addr += c.length()
            else:
                addr += 1

# TODO: General note, not here - we should probably check all disassembly ranges are non-overlapping and merge any adjacent ones.
def emit():
    formatter = config.formatter()
    output = []

    output.extend(formatter.disassembly_start())

    disassembled_addresses = set()
    for start_addr, end_addr in config.load_ranges:
        # We include end_addr in the range because we're going to use the set
        # we're building up to control emission of inline labels - the end
        # address of a range has no classification, but the assembly pointer
        # does reach it and we can emit labels inline there.
        disassembled_addresses.update(range(start_addr, end_addr + 1))
        addr = start_addr
        while addr < end_addr:
            c = classifications[addr]
            # TODO: Bit of a hack
            if isinstance(c, classification.Relocation):
                disassembled_addresses.update(range(c._dest, c._dest + c._length + 1))
            addr += c.length()

    # TODO!?!? We are discarding the results of emitSFTODO() but I think we need to do
    # this or something v similar to force all labels to be generated
    emitSFTODO()

    # Emit constants first in the order they were defined.
    if len(constants) > 0:
        for value, name in constants:
            if isinstance(value, six.integer_types):
                value = formatter.hex(value)
            output.append(formatter.explicit_label(name, value))
        output.append("")

    # Emit labels which aren't within one of the disassembled ranges and which
    # therefore must be defined explicitly.
    for addr in sorted(annotations.keys()):
        if addr not in disassembled_addresses:
            for annotation in sorted_annotations(annotations[addr]):
                if isinstance(annotation, Label):
                    output.append(annotation.as_string_assignment())

    for start_addr, end_addr in sorted(config.load_ranges):
        output.extend(formatter.code_start(start_addr, end_addr))
        output.extend(disassemble_range(start_addr, end_addr))
        output.extend(formatter.code_end())

    output.extend(trace.add_reference_histogram())

    output.extend(formatter.disassembly_end())
    print("\n".join(formatter.sanitise(str(line)) for line in output))

def split_classification(addr):
    if addr >= 0x10000:
        return
    if classifications[addr] != partial_classification:
        return
    split_addr = addr
    while classifications[addr] == partial_classification:
        addr -= 1
    first_split_length = split_addr - addr
    classifications[split_addr] = classification.Byte(classifications[addr].length() - first_split_length, False)
    classifications[addr] = classification.Byte(first_split_length, False)

def disassemble_range(start_addr, end_addr):
    result = []

    # It's possible (but unlikely) there is a multi-byte classification straddling the
    # ends of our range; if so, split them so we can output the precise range wanted.
    split_classification(start_addr)
    split_classification(end_addr)

    addr = start_addr
    while addr <= end_addr:
        if addr < end_addr:
            assert classifications[addr] is not None
            classification_length = classifications[addr].length()
        else:
            classification_length = 1
        pending_annotations = []
        # We queue up annotations for addresses >addr (i.e. those
        # "within" a multi-byte classification) first because their
        # as_string() method might cause new annotations to appear at
        # address addr.
        # TODO: isinstance(Label) is a hack
        for i in range(1, classification_length):
            for annotation in sorted_annotations(annotations[addr + i]):
                if isinstance(annotation, Label):
                    pending_annotations.append(annotation.as_string(addr))
        for annotation in sorted_annotations(annotations[addr]):
            result.append(annotation.as_string(addr))
        # TODO: result.extend(pending_annotations)?
        for annotation in pending_annotations:
            result.append(annotation)
        if addr < end_addr:
            # We can now emit the classification output.
            result.extend(classifications[addr].as_string_list(addr))
        for i in range(1, classification_length):
            for annotation in sorted_annotations(annotations[addr + i]):
                if not isinstance(annotation, Label):
                    result.append(annotation.as_string(addr))
        addr += classification_length
    return result

def emitSFTODO():
    # TODO: Will this function go wrong/be sub-optimal for acme move() case where not everything is in disassembly_range?
    c_str = {}

    addr = 0
    while addr < len(classifications):
        c = classifications[addr]
        if c is not None:
            # TODO: As noted elsewhere emitSFTODO() is partially unnecessary now but note that we force str() here so LazyStrings are evaluated and all necessary label definitions are created before we start the final "emit" pass
            c_str[addr] = [str(line) for line in c.as_string_list(addr)]
            addr += c.length()
        else:
            addr += 1

    addr = 0
    while addr < len(classifications):
        c = classifications[addr]
        if c is not None:
            if c.is_mergeable() and c.length() > 1:
                for i in range(1, c.length()):
                    # TODO: I think this could incorrectly split a Word at an odd byte boundary and break things
                    if addr+i in simple_labelled_addrs:
                        # TODO: Use split_classification() here? Perhaps not, think about it.
                        classifications[addr + i] = copy.copy(c)
                        classifications[addr + i].set_length(c.length() - i)
                        c.set_length(i)
                        c_str[addr] = c.as_string_list(addr)
                        c_str[addr + i] = classifications[addr + i].as_string_list(addr + i)
                        break
            addr += c.length()
        else:
            addr += 1

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
            label = get_label(addr, self.addr)
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
        return "\n".join("%s %s" % (formatter.comment_prefix(), line) for line in str(self.text).split("\n"))

# TODO: We seem to assert some simple constants have their own value - is this wrong/weird?
