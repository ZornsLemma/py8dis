from __future__ import print_function
import collections

def add_label(addr, name):
    # An address has one "primary" label, which is the first label we see; this
    # will be used for references to the address in the disassembly.
    if labels[addr] is None:
       labels[addr] = name
    # An address can have multiple labels as annotations.
    annotations[addr].append(Label(addr, name))

def ensure_addr_labelled(addr):
    if labels[addr] is None:
        add_label(addr, "L%04X" % addr)
    return labels[addr]

def is_classified(addr, length):
    return any(x is not None for x in classifications[addr:addr+length])

def add_classification(addr, classification):
    assert not is_classified(addr, classification.length())
    assert classification is not None
    classifications[addr] = classification
    for i in range(1, classification.length()):
        classifications[addr+i] = 0 # TODO: slightly ugly dummy value

def emit(start_addr, end_addr):
    addr = start_addr
    while addr < end_addr:
        # TODO: We might want to sort annotations, e.g. so comments appear before labels.
        for annotation in sorted_annotations(annotations[addr]):
            annotation.emit(0)
        classifications[addr].emit()
        classification_length = classifications[addr].length()
        for i in range(1, classification_length):
            for annotation in sorted_annotations(annotations[addr + i]):
                annotation.emit(classification_length - i)
        addr += classification_length

# TODO: Idea is below here is just implementation detail, perhaps prefix things e.g. class names with _


class Label(object):
    priority = 1000

    def __init__(self, addr, name):
        self.addr = addr
        self.name = name

    def emit(self, offset):
        assert offset >= 0
        if offset == 0:
            print(".%s" % self.name)
        else:
            label = ensure_addr_labelled(self.addr + offset)
            print("%s = %s-%d" % (self.name, label, offset))



class Comment(object):
    priority = 0

    def __init__(self, text):
        self.text = text

    def emit(self, offset):
        print("; %s" % self.text)


class Instruction(object):
    def __init__(self, addr):
        # TODO: length would be worked out from the opcode at addr
        self._addr = addr
        self._length = 3

    def emit(self):
        print("    instruction at &%04X" % self._addr)

    def length(self):
        return self._length

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

# There is at most one classification for any address; in practice by the end of
# disassembly there will be exactly one for all addresses in the target range,
# because we'll classify anything left over as data. Classifications are effectively
# "things in the assembler input which generate direct output", like instructions
# or constants.
classifications = [None] * 64*1024
# TODO: COMMENT
labels = [None] * 64*1024
# An address can have an arbitrary number of annotations; we may need to slide
# them around in the code slight to fit them round multi-byte classifications.
# By using a list we preserve the relative order of additions; we do sort this
# based on the annotation priorities but this is a stable sort and preserves
# order for any particular annotation type.
annotations = collections.defaultdict(list)

add_classification(0x8000, Instruction(0x8000))
add_classification(0x8003, Instruction(0x8003))

# TODO: In practice (for ease of doing lookups like label[addr]) we'd probably track
# labels via a separate data structure during disassembly, but we'd dump them into
# annotations prior to generating the final output.
add_label(0x8000, "rom_header")
add_label(0x8000, "foo")
add_label(0x8001, "bar")
#add_label(0x8003, "baz")
annotations[0x8000].append(Comment("ROM header in standard format for Acorn MOS"))

# annotations implement an emit(offset) method, which emits the annotation accounting
# for the fact that it may be offset bytes "in the assembly" later than it wants to be.
# For things like pure comments this is irrelevant, for labels we need to emit a
# derived form to assign the label the right value without it just being defined via
# implicitly at the current assembly pointer.

emit(0x8000, 0x8006)
