import collections

# There is at most one classification for any address; in practice by the end of
# disassembly there will be exactly one for all addresses in the target range,
# because we'll classify anything left over as data.
classifications = [None] * 64*1024
# An address can have an arbitrary number of annotations; we may need to slide
# them around in the code slight to fit them round multi-byte classifications.
annotations = collections.defaultdict(set)

# TODO: In practice (for ease of doing looks like label[addr]) we'd probably track
# labels via a separate data structure during disassembly, but we'd dump them into
# annotations prior to generating the final output.
annotations[0x8000].add(Label("foo"))
annotations[0x8001].add(Label("bar"))

# annotations implement an emit(offset) method, which emits the annotation accounting
# for the fact that it may be offset bytes "in the assembly" later than it wants to be.
# For things like pure comments this is irrelevant, for labels we need to emit a
# derived form to assign the label the right value without it just being defined via
# implicitly at the current assembly pointer.

addr = 0x8000
while addr < 0xc000:
    for annotation in annotations[addr]:
        annotation.emit(0)
    classification_length = classifications[addr].emit()
    for i in range(1, classification_length):
        for annotation in annotations[addr + i]:
            annotation.emit(classification_length - i)
    addr += classification_length
