# TODO: This is just a skeleton to help confirm the basic idea of separate tracefoo.py
# modules more-or-less works. It isn't capable of disassembling real 8080 code and
# it doesn't try to be smart about understanding the structure of 8080 opcodes.

import config
import classification
import config
import disassembly
from trace import * # TODO!?
import utils

memory = config.memory


class Opcode(object):
    def __init__(self, mnemonic, operand_length, suffix = None):
        self.mnemonic = mnemonic
        self.suffix = suffix if suffix is not None else ""
        self.prefix = "(" if ")" in self.suffix else ""
        self.operand_length = operand_length

    def is_mergeable(self):
        return False

    def length(self):
        return 1 + self.operand_length

    def emit(self, addr):
        print(utils.add_hex_dump(self.as_string(addr), addr, self.length()))


class OpcodeImplied(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeImplied, self).__init__(mnemonic, 0)
        self.mnemonic = mnemonic
        self.operand_length = 0

    def disassemble(self, addr):
        return [addr + 1]

    def as_string(self, addr):
        mnemonic = self.mnemonic
        if (not config.formatter().explicit_a) and mnemonic.endswith(" A"):
            mnemonic = mnemonic[:-2]
        return "    %s" % utils.force_case(mnemonic)


class OpcodeConditionalBranch(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeConditionalBranch, self).__init__(mnemonic, 2)

    def _target(self, addr):
        return utils.get_u16(addr + 1)

    def disassemble(self, addr):
        return [addr + 3, self._target(addr)]

    def as_string(self, addr):
        return "    %s %s" % (utils.force_case(self.mnemonic), disassembly.get_label(self._target(addr)))


opcodes = {
    0x0b: OpcodeImplied("DCX B"),
    0x13: OpcodeImplied("INX D"),
    0x23: OpcodeImplied("INX H"),
    0x1a: OpcodeImplied("LDAX D"),
    0x77: OpcodeImplied("MOV M,A"),
    0x78: OpcodeImplied("MOV A, B"),
    0x78: OpcodeImplied("MOV A,B"),
    0xb1: OpcodeImplied("ORA C"),
    0xc2: OpcodeConditionalBranch("JNZ"),
    0xc8: OpcodeImplied("RZ"),
    0xc9: OpcodeImplied("RET"),
}


# TODO: We don't really want to be duplicating the next two functions
def disassemble_instruction(addr):
    assert not disassembly.is_classified(addr, 1)
    opcode_value = memory[addr]
    #print(hex(opcode_value))
    if opcode_value not in opcodes:
        return [None]
    opcode = opcodes[opcode_value]
    if disassembly.is_classified(addr, 1 + opcode.operand_length):
        return [None]
    # Up to this point we hadn't decided addr contains an instruction; we now
    # have.
    disassembly.add_classification(addr, opcode)
    return opcode.disassemble(addr)

def trace():
    start_addr, end_addr = config.disassembly_range()
    while len(entry_points) > 0:
        entry_point = entry_points.pop(0)
        if not disassembly.is_classified(entry_point, 1) and start_addr <= entry_point < end_addr:
            #print(hex(entry_point))
            new_entry_points = disassemble_instruction(entry_point)
            # The first element of new_entry_points is the implicit next
            # instruction (if there is one; it might be None) which is handled
            # slightly differently, as it *isn't* automatically assigned a
            # label.
            assert len(new_entry_points) >= 1
            implied_entry_point = new_entry_points.pop(0)
            if implied_entry_point is not None:
                entry_points.append(implied_entry_point)
            for new_entry_point in new_entry_points:
                add_entry(new_entry_point)

# ENHANCE: I can't help thinking entry_points and its associated functions
# belong in here, but I won't move them now as I think it would be clearer where
# they should live when/if other CPUs are supported and "core" tracing is split
# out from CPU-specific tracing.

config.set_trace(trace)
