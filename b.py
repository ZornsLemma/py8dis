from __future__ import print_function
import collections

def add_label(addr, name):
    if labels[addr] is None:
       labels[addr] = name
    annotations[addr].append(Label(addr, name))

def ensure_addr_labelled(addr):
    if labels[addr] is None:
        add_label(addr, "L%04X" % addr)


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
            ensure_addr_labelled(self.addr + offset)
            print("%s = %s-%d" % (self.name, labels[self.addr + offset], offset))



class Comment(object):
    priority = 0

    def __init__(self, text):
        self.text = text

    def emit(self, offset):
        print("; %s" % self.text)


class Instruction(object):
    def __init__(self, addr):
        # TODO: length would be worked out from the opcode at addr
        self.addr = addr
        self.length = 3

    def emit(self):
        print("    instruction at &%04X" % self.addr)
        return self.length


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

classifications[0x8000] = Instruction(0x8000)
classifications[0x8003] = Instruction(0x8003)

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

addr = 0x8000
while addr < 0x8006:
    # TODO: We might want to sort annotations, e.g. so comments appear before labels.
    for annotation in sorted(annotations[addr], key=lambda x: x.priority):
        annotation.emit(0)
    classification_length = classifications[addr].emit()
    for i in range(1, classification_length):
        for annotation in annotations[addr + i]:
            annotation.emit(classification_length - i)
    addr += classification_length
