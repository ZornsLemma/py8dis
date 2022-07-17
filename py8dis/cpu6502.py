import collections # TODO!?
import six # TODO!?

import classification
import config
import disassembly
import labelmanager
import mainformatter
import memorymanager
import movemanager
import trace
import utils

class Cpu6502(trace.Cpu):
    """Singleton class representing a 6502 CPU"""

    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Cpu6502, cls).__new__(cls)
        return cls.instance

    def __init__(self):
        super(Cpu6502, self).__init__()

        self.code_analysis_fns.append(self.subroutine_argument_finder)     # TODO!?

        # TODO: indent_level is a bit of a hack (after all, arguably byte/word directives etc should have it too) and should probably be handled at a higher level by the code controlling emission of text disassembly output
        self.indent_level_dict = collections.defaultdict(int)

        self.opcodes = {
            0x00: self.OpcodeReturn("BRK",      cycles="7"),
            0x01: self.OpcodeZp("ORA", ",X)",   cycles="6", update=self.update_anz),
            0x05: self.OpcodeZp("ORA",          cycles="3", update=self.update_anz),
            0x06: self.OpcodeZp("ASL",          cycles="5", update=self.update_nzc),
            0x08: self.OpcodeImplied("PHP",     cycles="3", update=self.neutral),
            0x09: self.OpcodeImmediate("ORA",   cycles="2", update=self.update_anz),
            0x0a: self.OpcodeImplied("ASL A",   cycles="2", update=self.update_anzc),
            0x0d: self.OpcodeDataAbs("ORA",     cycles="4", update=self.update_anz),
            0x0e: self.OpcodeDataAbs("ASL",     cycles="6", update=self.update_nzc),
            0x10: self.OpcodeConditionalBranch("BPL", cycles="2a"),
            0x11: self.OpcodeZp("ORA", "),Y",   cycles="5b", update=self.update_anz),
            0x15: self.OpcodeZp("ORA", ",X",    cycles="4", update=self.update_anz),
            0x16: self.OpcodeZp("ASL", ",X",    cycles="6", update=self.update_nzc),
            0x18: self.OpcodeImplied("CLC",     cycles="2", update=self.make_update_flag('c', False)),
            0x19: self.OpcodeDataAbs("ORA", ",Y", cycles="4f", has_zp_version=False, update=self.update_anz),
            0x1d: self.OpcodeDataAbs("ORA", ",X", cycles="4f", update=self.update_anz),
            0x1e: self.OpcodeDataAbs("ASL", ",X", cycles="7", update=self.update_nzc),
            0x20: self.OpcodeJsr(               cycles="6"),
            0x21: self.OpcodeZp("AND", ",X)",   cycles="6", update=self.update_anzc),
            0x24: self.OpcodeZp("BIT",          cycles="3", update=self.update_bit),
            0x25: self.OpcodeZp("AND",          cycles="3", update=self.update_anz),
            0x26: self.OpcodeZp("ROL",          cycles="5", update=self.update_nzc),
            0x28: self.OpcodeImplied("PLP",     cycles="4", update=self.corrupt_flags),
            0x29: self.OpcodeImmediate("AND",   cycles="2", update=self.update_anz),
            0x2a: self.OpcodeImplied("ROL A",   cycles="2", update=self.update_anzc),
            0x2c: self.OpcodeDataAbs("BIT",     cycles="4", update=self.update_bit),
            0x2d: self.OpcodeDataAbs("AND",     cycles="4", update=self.update_anz),
            0x2e: self.OpcodeDataAbs("ROL",     cycles="6", update=self.update_nzc),
            0x30: self.OpcodeConditionalBranch("BMI", cycles="2a"),
            0x31: self.OpcodeZp("AND", "),Y",   cycles="5b", update=self.update_anz),
            0x35: self.OpcodeZp("AND", ",X",    cycles="4", update=self.update_anz),
            0x36: self.OpcodeZp("ROL", ",X",    cycles="6", update=self.update_nzc),
            0x38: self.OpcodeImplied("SEC",     cycles="2", update=self.make_update_flag('c', True)),
            0x39: self.OpcodeDataAbs("AND", ",Y", cycles="4f", has_zp_version=False, update=self.update_anz),
            0x3d: self.OpcodeDataAbs("AND", ",X", cycles="4f", update=self.update_anz),
            0x3e: self.OpcodeDataAbs("ROL", ",X", cycles="7", update=self.update_nzc),
            0x40: self.OpcodeReturn("RTI",      cycles="6"),
            0x41: self.OpcodeZp("EOR", ",X)",   cycles="6", update=self.update_anz),
            0x45: self.OpcodeZp("EOR",          cycles="3", update=self.update_anz),
            0x46: self.OpcodeZp("LSR",          cycles="5", update=self.update_nzc),
            0x48: self.OpcodeImplied("PHA",     cycles="3", update=self.neutral),
            0x49: self.OpcodeImmediate("EOR",   cycles="2", update=self.update_anz),
            0x4a: self.OpcodeImplied("LSR A",   cycles="2", update=self.update_anzc),
            0x4c: self.OpcodeJmpAbs(            cycles="3"),
            0x4d: self.OpcodeDataAbs("EOR",     cycles="4", update=self.update_anz),
            0x4e: self.OpcodeDataAbs("LSR",     cycles="6", update=self.update_nzc),
            0x50: self.OpcodeConditionalBranch("BVC", cycles="2a"),
            0x51: self.OpcodeZp("EOR", "),Y",   cycles="5b", update=self.update_anz),
            0x55: self.OpcodeZp("EOR", ",X",    cycles="4", update=self.update_anz),
            0x56: self.OpcodeZp("LSR", ",X",    cycles="6",  update=self.update_nzc),
            0x58: self.OpcodeImplied("CLI",     cycles="2", update=self.make_update_flag('i', False)),
            0x59: self.OpcodeDataAbs("EOR", ",Y", cycles="4f", has_zp_version=False, update=self.update_anz),
            0x5d: self.OpcodeDataAbs("EOR", ",X", cycles="4f", update=self.update_anz),
            0x5e: self.OpcodeDataAbs("LSR", ",X", cycles="7", update=self.update_nzc),
            0x60: self.OpcodeReturn("RTS",      cycles="6"),
            0x61: self.OpcodeZp("ADC", ",X)",   cycles="6", update=self.update_adc_sbc),
            0x65: self.OpcodeZp("ADC",          cycles="3", update=self.update_adc_sbc),
            0x66: self.OpcodeZp("ROR",          cycles="5", update=self.update_nzc),
            0x68: self.OpcodeImplied("PLA",     cycles="4", update=self.update_anz),
            0x69: self.OpcodeImmediate("ADC",   cycles="2", update=self.update_adc_sbc),
            0x6a: self.OpcodeImplied("ROR A",   cycles="2", update=self.update_anzc),
            0x6c: self.OpcodeJmpInd(            cycles="5"),
            0x6d: self.OpcodeDataAbs("ADC",     cycles="4", update=self.update_adc_sbc),
            0x6e: self.OpcodeDataAbs("ROR",     cycles="6", update=self.update_nzc),
            0x70: self.OpcodeConditionalBranch("BVS", cycles="2a"),
            0x71: self.OpcodeZp("ADC", "),Y",   cycles="5b", update=self.update_adc_sbc),
            0x75: self.OpcodeZp("ADC", ",X",    cycles="4", update=self.update_adc_sbc),
            0x76: self.OpcodeZp("ROR", ",X",    cycles="6", update=self.update_nzc),
            0x78: self.OpcodeImplied("SEI",     cycles="2", update=self.make_update_flag('i', True)),
            0x79: self.OpcodeDataAbs("ADC", ",Y", cycles="4f", has_zp_version=False, update=self.update_adc_sbc),
            0x7d: self.OpcodeDataAbs("ADC", ",X", cycles="4f", update=self.update_adc_sbc),
            0x7e: self.OpcodeDataAbs("ROR", ",X", cycles="7", update=self.update_nzc),
            0x81: self.OpcodeZp("STA", ",X)",   cycles="6", update=self.neutral),
            0x84: self.OpcodeZp("STY",          cycles="3", update=self.neutral),
            0x85: self.OpcodeZp("STA",          cycles="3", update=self.neutral),
            0x86: self.OpcodeZp("STX",          cycles="3", update=self.neutral),
            0x88: self.OpcodeImplied("DEY",     cycles="2", update=self.make_decrement('y')),
            0x8a: self.OpcodeImplied("TXA",     cycles="2", update=self.make_transfer('x', 'a')),
            0x8c: self.OpcodeDataAbs("STY",     cycles="4", update=self.neutral),
            0x8d: self.OpcodeDataAbs("STA",     cycles="4", update=self.neutral),
            0x8e: self.OpcodeDataAbs("STX",     cycles="4", update=self.neutral),
            0x90: self.OpcodeConditionalBranch("BCC", cycles="2a"),
            0x91: self.OpcodeZp("STA", "),Y",   cycles="6", update=self.neutral),
            0x94: self.OpcodeZp("STY", ",X",    cycles="4", update=self.neutral),
            0x95: self.OpcodeZp("STA", ",X",    cycles="4", update=self.neutral),
            0x96: self.OpcodeZp("STX", ",Y",    cycles="4", update=self.neutral),
            0x98: self.OpcodeImplied("TYA",     cycles="2", update=self.make_transfer('y', 'a')),
            0x99: self.OpcodeDataAbs("STA", ",Y", cycles="5", has_zp_version=False, update=self.neutral),
            0x9a: self.OpcodeImplied("TXS",     cycles="2", update=self.neutral), # we don't model S at all
            0x9d: self.OpcodeDataAbs("STA", ",X", cycles="5", update=self.neutral),
            0xa0: self.OpcodeImmediate("LDY",   cycles="2", update=self.make_load_immediate('y')),
            0xa1: self.OpcodeZp("LDA", ",X)",   cycles="6", update=self.update_anz),
            0xa2: self.OpcodeImmediate("LDX",   cycles="2", update=self.make_load_immediate('x')),
            0xa4: self.OpcodeZp("LDY",          cycles="3", update=self.update_ynz),
            0xa5: self.OpcodeZp("LDA",          cycles="3", update=self.update_anz),
            0xa6: self.OpcodeZp("LDX",          cycles="3", update=self.update_xnz),
            0xa8: self.OpcodeImplied("TAY",     cycles="2", update=self.make_transfer('a', 'y')),
            0xa9: self.OpcodeImmediate("LDA",   cycles="2", update=self.make_load_immediate('a')),
            0xaa: self.OpcodeImplied("TAX",     cycles="2", update=self.make_transfer('a', 'x')),
            0xac: self.OpcodeDataAbs("LDY",     cycles="4", update=self.update_ynz),
            0xad: self.OpcodeDataAbs("LDA",     cycles="4", update=self.update_anz),
            0xae: self.OpcodeDataAbs("LDX",     cycles="4", update=self.update_xnz),
            0xb0: self.OpcodeConditionalBranch("BCS", cycles="2a"),
            0xb1: self.OpcodeZp("LDA", "),Y",   cycles="5b", update=self.update_anz),
            0xb4: self.OpcodeZp("LDY", ",X",    cycles="4", update=self.update_anz),
            0xb5: self.OpcodeZp("LDA", ",X",    cycles="4", update=self.update_anz),
            0xb6: self.OpcodeZp("LDX", ",Y",    cycles="4", update=self.update_anz),
            0xb8: self.OpcodeImplied("CLV",     cycles="2", update=self.make_update_flag('v', False)),
            0xb9: self.OpcodeDataAbs("LDA", ",Y", cycles="4f", has_zp_version=False, update=self.update_anz),
            0xba: self.OpcodeImplied("TSX",     cycles="2", update=self.update_xnz),
            0xbc: self.OpcodeDataAbs("LDY", ",X", cycles="4f", update=self.update_ynz),
            0xbd: self.OpcodeDataAbs("LDA", ",X", cycles="4f", update=self.update_anz),
            0xbe: self.OpcodeDataAbs("LDX", ",Y", cycles="4f", update=self.update_xnz),
            0xc0: self.OpcodeImmediate("CPY",   cycles="2", update=self.update_nzc),
            0xc1: self.OpcodeZp("CMP", ",X)",   cycles="6", update=self.update_nzc),
            0xc4: self.OpcodeZp("CPY",          cycles="3", update=self.update_nzc),
            0xc5: self.OpcodeZp("CMP",          cycles="3", update=self.update_nzc),
            0xc6: self.OpcodeZp("DEC",          cycles="5", update=self.update_nz),
            0xc8: self.OpcodeImplied("INY",     cycles="2", update=self.make_increment('y')),
            0xc9: self.OpcodeImmediate("CMP",   cycles="2", update=self.update_nzc),
            0xca: self.OpcodeImplied("DEX",     cycles="2", update=self.make_decrement('x')),
            0xcc: self.OpcodeDataAbs("CPY",     cycles="4", update=self.update_nzc),
            0xcd: self.OpcodeDataAbs("CMP",     cycles="4", update=self.update_nzc),
            0xce: self.OpcodeDataAbs("DEC",     cycles="6", update=self.update_nz),
            0xd0: self.OpcodeConditionalBranch("BNE", cycles="2a"),
            0xd1: self.OpcodeZp("CMP", "),Y",   cycles="5b", update=self.update_nzc),
            0xd5: self.OpcodeZp("CMP", ",X",    cycles="4", update=self.update_nzc),
            0xd6: self.OpcodeZp("DEC", ",X",    cycles="6", update=self.update_nz),
            0xd8: self.OpcodeImplied("CLD",     cycles="2", update=self.make_update_flag('d', False)),
            0xd9: self.OpcodeDataAbs("CMP", ",Y", cycles="4f", has_zp_version=False, update=self.update_nzc),
            0xdd: self.OpcodeDataAbs("CMP", ",X", cycles="4f", update=self.update_nzc),
            0xde: self.OpcodeDataAbs("DEC", ",X", cycles="7", update=self.update_nz),
            0xe0: self.OpcodeImmediate("CPX",   cycles="2", update=self.update_nzc),
            0xe1: self.OpcodeZp("SBC", ",X)",   cycles="6", update=self.update_adc_sbc),
            0xe4: self.OpcodeZp("CPX",          cycles="3", update=self.update_nzc),
            0xe5: self.OpcodeZp("SBC",          cycles="3", update=self.update_adc_sbc),
            0xe6: self.OpcodeZp("INC",          cycles="5", update=self.update_nz),
            0xe8: self.OpcodeImplied("INX",     cycles="2", update=self.make_increment('x')),
            0xe9: self.OpcodeImmediate("SBC",   cycles="2", update=self.update_adc_sbc),
            0xea: self.OpcodeImplied("NOP",     cycles="2", update=self.neutral),
            0xec: self.OpcodeDataAbs("CPX",     cycles="4", update=self.update_nzc),
            0xed: self.OpcodeDataAbs("SBC",     cycles="4", update=self.update_adc_sbc),
            0xee: self.OpcodeDataAbs("INC",     cycles="6", update=self.update_nz),
            0xf0: self.OpcodeConditionalBranch("BEQ", cycles="2a"),
            0xf1: self.OpcodeZp("SBC", "),Y",   cycles="5b", update=self.update_adc_sbc),
            0xf5: self.OpcodeZp("SBC", ",X",    cycles="4", update=self.update_adc_sbc),
            0xf6: self.OpcodeZp("INC", ",X",    cycles="6", update=self.update_nz),
            0xf8: self.OpcodeImplied("SED",     cycles="2", update=self.make_update_flag('d', True)),
            0xf9: self.OpcodeDataAbs("SBC", ",Y", cycles="4f", has_zp_version=False, update=self.update_adc_sbc),
            0xfd: self.OpcodeDataAbs("SBC", ",X", cycles="4f", update=self.update_adc_sbc),
            0xfe: self.OpcodeDataAbs("INC", ",X", cycles="7", update=self.update_nz),
        }


    # TODO: Perhaps rename this function to make its behaviour more obvious, once I understand it myself...
    # TODO: This returns a list so it can return an empty list when it wants to say "give up" and this "just works" when appending the result to other lists
    def apply_move(self, runtime_addr):
        # TODO: This is a re-implementation using movemanager, may want to get rid of apply_move() fn later
        binary_addr, _ = movemanager.r2b(runtime_addr)
        if binary_addr is None:
            return []
        return [binary_addr]

    # TODO: Perhaps rename this function to make its behaviour more obvious, once I understand it myself...
    def apply_move2(self, target, context):
        # TODO: Rewritten in terms of movemanager - change this eventually? I think the rewrite does the same thing, but it may not, or it may do but not be right anyway...
        with movemanager.move_id_for_binary_addr[context]:
            #if context in (0x8fda, 0x2fda):
            #    print("XAL", hex(target), movemanager.r2b(target))
            return self.apply_move(target)


    def hook_subroutine(self, runtime_addr, name, hook, warn=True):
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        binary_addr, move_id = movemanager.r2b_checked(runtime_addr)
        memorymanager.check_data_loaded_at_binary_addr(binary_addr, 1, warn)
        self.add_entry(binary_addr, name, move_id)
        self.subroutine_hooks[runtime_addr] = hook

    class Opcode(object):
        def __init__(self, mnemonic, operand_length, suffix=None, update=None, cycles="???"):
            self.mnemonic = mnemonic
            self.suffix = suffix if suffix is not None else ""
            self.prefix = "(" if ")" in self.suffix else ""
            self.update = update
            self.operand_length = operand_length
            self.indent_level = 0
            self.cycles = cycles

        def length(self):
            return 1 + self.operand_length

        def is_code(self, addr):
            return True

        def indent(self, addr):
            trace.cpu.indent_level_dict[addr] += 1

        def update_cpu_state(self, addr, state):
            if self.update is not None:
                self.update(addr, state)
            else:
                state.clear()

        def is_block_end(self):
            return False

        def cycles_description(self, binary_addr):
            # Letter suffix on self.cycles explains cycle adjustments:
            #
            # a: +1 if branch occurs to same page, +2 if branch occurs to different page
            # b: +1 if page boundary crossed (zero page, post indirect addressing)
            # f: +1 if page boundary crossed (absolute address)

            # These three are 65c02 only:
            # c: +1 cycle if in decimal mode, +1 more cycle if indexing across a page boundary
            # d: +1 if branch target is to a different page
            # e: +1 cycle if in decimal mode

            letter = self.cycles[-1]
            if letter == "a":
                # A branch instruction
                result = int(self.cycles[:-1])

                # Check the target address to see if it is in the same page
                target = self._target(binary_addr)
                same_page = (target // 256) == (binary_addr // 256)

                if same_page:
                    return str(result) + "/" + str(result+1)
                return str(result) + "/" + str(result+2)

            if letter == "b":
                # zero page post indexed addressing
                result = int(self.cycles[:-1])
                return str(result) + "/" + str(result+1)

            if letter == "f":
                # absolute address indexed by X or Y
                # we only know the exact cycle count if it on a page boundary
                # since then we know it can't cross a page boundary.
                result = int(self.cycles[:-1])

                # Check the target address to see if it is on a page boundary
                target = self._target(binary_addr)
                if (target & 255) == 0:
                    return str(result)
                return str(result) + "/" + str(result+1)

            if letter == "c":
                result = int(self.cycles[:-1])
                result = str(result) + "/" + str(result+1) + "/" + str(result+2)
            if letter == "d":
                result = int(self.cycles[:-1])

                # Check the target address to see if it is in the same page
                target = self._target(binary_addr)
                same_page = (target // 256) == (binary_addr // 256)

                if same_page:
                    return str(result)
                return str(result+1)

            if letter == "e":
                result = int(self.cycles[:-1])
                return str(result) + "/" + str(result+1)

            result = self.cycles
            return result

        def as_string_list(self, addr, annotations):
            result = [mainformatter.add_inline_comment(addr, self.length(), self.cycles_description(addr), annotations, utils.LazyString(utils.make_indent(trace.cpu.indent_level_dict.get(addr, 0)) + "%s", self.as_string(addr)))]
            if self.is_block_end() and config.get_blank_line_at_block_end():
                result.append("")
            return result


    class OpcodeReturn(Opcode):
        def __init__(self, mnemonic, cycles="???"):
            super(Cpu6502.OpcodeReturn, self).__init__(mnemonic, 0, cycles=cycles)

        def update_references(self, addr):
            pass

        def disassemble(self, binary_addr):
            return [None]

        def is_block_end(self):
            return True

        def as_string(self, addr):
            return "%s%s" % (utils.make_indent(1), utils.force_case(self.mnemonic))


    class OpcodeImplied(Opcode):
        def __init__(self, mnemonic, cycles="???", update=None):
            super(Cpu6502.OpcodeImplied, self).__init__(mnemonic, 0, cycles=cycles, update=update)

        def update_references(self, addr):
            pass

        def disassemble(self, binary_addr):
            return [binary_addr + 1]

        def as_string(self, addr):
            mnemonic = self.mnemonic
            if (not config.get_assembler().explicit_a) and mnemonic.endswith(" A"):
                mnemonic = mnemonic[:-2]
            return "%s%s" % (utils.make_indent(1), utils.force_case(mnemonic))


    class OpcodeImmediate(Opcode):
        def __init__(self, mnemonic, cycles="???", update=None):
            super(Cpu6502.OpcodeImmediate, self).__init__(mnemonic, 1, cycles=cycles, update=update)

        def update_references(self, addr):
            pass

        def disassemble(self, binary_addr):
            return [binary_addr + 2]

        def as_string(self, addr):
            s = "%s%s #%s" % (utils.make_indent(1), utils.force_case(self.mnemonic), classification.get_constant8(addr + 1))
            if (addr + 1) not in classification.expressions and disassembly.format_hint.get(addr + 1) is None:
                c = trace.cpu.memory_binary[addr + 1]
                if config.get_show_char_literals() and utils.isprint(c):
                    s += " %s '%s'" % (config.get_assembler().comment_prefix(), chr(c))
            return s


    class OpcodeZp(Opcode):
        def __init__(self, mnemonic, suffix=None, cycles="???", update=None):
            super(Cpu6502.OpcodeZp, self).__init__(mnemonic, 1, suffix=suffix, update=update, cycles=cycles)

        def abs_operand(self, addr):
            return trace.cpu.memory_binary[addr + 1]

        def update_references(self, addr):
            trace.cpu.labels[self.abs_operand(addr)].add_reference(addr)

        def disassemble(self, binary_addr):
            return [binary_addr + 2]

        def as_string(self, addr):
            return utils.LazyString("%s%s %s%s%s", utils.make_indent(1), utils.force_case(self.mnemonic), self.prefix, classification.get_address8(addr + 1), utils.force_case(self.suffix))


    class OpcodeAbs(Opcode):
        def __init__(self, mnemonic, suffix=None, has_zp_version=True, cycles="???", update=None):
            super(Cpu6502.OpcodeAbs, self).__init__(mnemonic, 2, suffix, cycles=cycles, update=update)
            self._has_zp_version = has_zp_version

        def abs_operand(self, addr):
            return memorymanager.get_u16_binary(addr + 1)

        def has_zp_version(self):
            return self._has_zp_version

        def as_string(self, addr):
            # We need to avoid misassembly of absolute instructions with zero-page
            # operands. These are relatively rare in real code, but apart from the
            # fact we should still handle them even if they're rare, they can also
            # happen when the disassembly is imperfect and data is interpreted as
            # code. If we don't cope with them, bytes get lost and the disassembly
            # can't be correctly reassembled into a binary matching the input.
            # TODO: If we could evaluate expressions, *and* (unlikely) we don't
            # fail at disassembly time when we spot the mismatch, we should force
            # absolute addressing if the expression is a zero page value and the
            # value in the input is not.
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
            if not self.has_zp_version() or memorymanager.get_u16_binary(addr + 1) >= 0x100:
                return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

            # This is an absolute instruction with a zero-page operand which could
            # be misassembled. If the assembler has a way to explicitly request
            # absolute addressing, we use that.
            force_abs_instruction = config.get_assembler().force_abs_instruction(result1, self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
            if force_abs_instruction is not None:
                return force_abs_instruction

            # This assembler has no way to force absolute addressing, so emit the
            # instruction as data with a comment showing what it is; the comment
            # includes an acme-style "+2" suffix to help indicate what's going on.
            operand = classification.get_address16(addr + 1)
            return utils.LazyString("%s%s%s, <(%s), >(%s) ; %s+2 %s", utils.make_indent(1), config.get_assembler().byte_prefix(), classification.get_constant8(addr), operand, operand, result1, result2)


    class OpcodeDataAbs(OpcodeAbs):
        def __init__(self, mnemonic, suffix=None, has_zp_version=True, cycles="???", update=None):
            super(Cpu6502.OpcodeDataAbs, self).__init__(mnemonic, suffix, has_zp_version, cycles=cycles, update=update)

        def _target(self, addr):
            return memorymanager.RuntimeAddr(self.abs_operand(addr))

        def update_references(self, addr):
            trace.cpu.labels[self.abs_operand(addr)].add_reference(addr)

        def disassemble(self, binary_addr):
            return [binary_addr + 3]


    class OpcodeJmpAbs(OpcodeAbs):
        def __init__(self, cycles="???"):
            super(Cpu6502.OpcodeJmpAbs, self).__init__("JMP", has_zp_version=False, cycles=cycles)

        def _target(self, addr):
            return memorymanager.RuntimeAddr(memorymanager.get_u16_binary(addr + 1))

        def abs_operand(self, addr):
            return self._target(addr)

        # TODO: Might want to rename this function to reflect the fact it creates labels as well/instead as updating trace.references
        def update_references(self, addr):
            trace.cpu.labels[self._target(addr)].add_reference(addr)
            #trace.references[self._target(addr)].add(addr)

        def is_block_end(self):
            return True

        def disassemble(self, binary_addr):
            #print("PCC %s" % apply_move(self._target(binary_addr)))
            # TODO: Should the apply_move() call be inside _target and/or abs_operand? Still feeling my way here...
            return [None] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)
            return [None] + trace.cpu.apply_move(self._target(binary_addr))


    class OpcodeJmpInd(OpcodeAbs):
        def __init__(self, cycles="???"):
            super(Cpu6502.OpcodeJmpInd, self).__init__("JMP", ")", has_zp_version=False, cycles=cycles)

        def update_references(self, addr):
            trace.cpu.labels[memorymanager.get_u16_binary(addr + 1)].add_reference(addr)

        def is_block_end(self):
            return True

        def disassemble(self, binary_addr):
            return [None]


    class OpcodeJsr(OpcodeAbs):
        def __init__(self, cycles="???"):
            super(Cpu6502.OpcodeJsr, self).__init__("JSR", has_zp_version=False, cycles=cycles)

        def _target(self, addr):
            return memorymanager.RuntimeAddr(memorymanager.get_u16_binary(addr + 1))

        def abs_operand(self, addr):
            return self._target(addr)

        def update_references(self, addr):
            trace.cpu.labels[self._target(addr)].add_reference(addr)
            #trace.references[self._target(addr)].add(addr)

        def disassemble(self, binary_addr):
            assert isinstance(binary_addr, memorymanager.BinaryAddr)
            # A hook only gets to return the "straight line" address to continue
            # tracing from (if there is one; it can return None if it wishes). Some
            # subroutines (e.g. jsr is_yx_zero:equw target_if_true, target_if_false)
            # might have no "straight line" case and want to return some labelled
            # entry points. This is supported by having the hook simply return None
            # and call entry() itself for the labelled entry points.
            # TODO: Do we need to apply_move() here or in _target() or in abs_operand() or before/after subroutine_hooks.get()?
            target_runtime_addr = self._target(binary_addr)
            def simple_subroutine_hook(target_runtime_addr, caller_runtime_addr):
                assert isinstance(target_runtime_addr, memorymanager.RuntimeAddr)
                assert isinstance(caller_runtime_addr, memorymanager.RuntimeAddr)
                # TODO: It might be possible the following assertion fails if the moves
                # in effect are sufficiently tricky, but I'll leave it for now as it
                # may catch bugs - once the code is more trusted it can be removed
                # if it's technically incorrect.
                assert movemanager.r2b_checked(caller_runtime_addr)[0] == binary_addr
                return caller_runtime_addr + 3
            subroutine_hook = trace.cpu.subroutine_hooks.get(target_runtime_addr, simple_subroutine_hook)
            caller_runtime_addr = movemanager.b2r(binary_addr)
            with movemanager.move_id_for_binary_addr[binary_addr]:
                return_runtime_addr = subroutine_hook(target_runtime_addr, caller_runtime_addr)
            if return_runtime_addr is not None:
                return_runtime_addr = memorymanager.RuntimeAddr(return_runtime_addr)
                result = trace.cpu.apply_move(return_runtime_addr)
                if len(result) == 0:
                    # The return runtime address could not be unambiguously converted into a binary
                    # address. It's highly likely the JSR is returning to the immediately following
                    # instruction, so if binary_addr+3 maps to the return runtime address, use that,
                    # otherwise give up and don't trace anything "after" the JSR.
                    simple_return_binary_addr = binary_addr + 3
                    if return_runtime_addr == movemanager.b2r(simple_return_binary_addr):
                        result = [simple_return_binary_addr]
                    else:
                        result = [None]
            else:
                result = [None]
            result += trace.cpu.apply_move(target_runtime_addr)
            return result


    class OpcodeConditionalBranch(Opcode):
        def __init__(self, mnemonic, cycles="???"):
            super(Cpu6502.OpcodeConditionalBranch, self).__init__(mnemonic, 1, cycles=cycles)

        def _target(self, binary_addr):
            base = movemanager.b2r(binary_addr)
            return base + 2 + utils.signed8(memorymanager.get_u8_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self._target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self._target(binary_addr)].add_reference(binary_addr)
            #trace.references[self._target(binary_addr)].add(binary_addr)

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return [binary_addr + 2] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

        def update_cpu_state(self, addr, state):
            # In our optimistic model (at least), a branch invalidates everything.
            # Consider "ldy #3:.label:dey:bne label" - in the optimistic model we ignore
            # labels and the only way we don't finish that sequence assuming y=2 is if
            # the branch invalidates.
            state.clear()

        def as_string(self, binary_addr):
            #print("XXX", hex(binary_addr), movemanager.move_id_for_binary_addr[binary_addr])
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))


    # TODO: Not a high priority, but once we have support for generating arbitrary inline
    # comments, we could potentially track things like inx/dex/iny/dey which adjust a
    # constant slightly and when we infer what that constant means (e.g. a keycode) we could
    # add an inline comment so we end up with something like "dex ; X=keycode_p" - at the
    # moment we can only do this for raw constants which we can convert into an expression.
    class CpuState(object):
        def __init__(self):
            self.clear()

        def clear(self):
            self._d = {
                # For A/X/Y, value is (integer value if known, address of integer
                # value if set by LDA/X/Y #).
                "a": [None, None],
                "x": [None, None],
                "y": [None, None],
                # For flags, value is True/False if known.
                "n": None,
                "v": None,
                "d": None,
                "i": None,
                "z": None,
                "c": None,
            }

        def __getitem__(self, key):
            assert key in "axynvdizc"
            return self._d[key]

        def __setitem__(self, key, item):
            assert key in "axynvdizc"
            if key in "axy":
                if item is None:
                    item = [None, None]
                assert len(item) == 2
                assert item[1] is None or item[0] is not None
            else:
                assert item is None or isinstance(item, six.integer_types)
            self._d[key] = item

        def show(self):
            s = ""
            def reg(r):
                v = self[r][0]
                if v is None:
                    return "--"
                return utils.plainhex2(v)
            s += "A:%s X:%s Y:%s" % (reg('a'), reg('x'), reg('y'))
            def flag(name):
                b = self[name]
                if b is None:
                    return "-"
                return name.upper() if b else name.lower()
            s += " %s%s%s%s%s%s" % (flag('n'), flag('v'), flag('d'), flag('i'), flag('z'), flag('c'))
            return s



    def make_corrupt_rnz(self, reg):
        def corrupt(addr, state):
            state[reg] = None
            state['n'] = None
            state['z'] = None
        return corrupt

    def make_corrupt_rnzc(self, reg):
        def corrupt(addr, state):
            state[reg] = None
            state['n'] = None
            state['z'] = None
            state['c'] = None
        return corrupt

    def make_update_flag(self, flag, b):
        def update_flag(addr, state):
            state[flag] = b
        return update_flag

    # TODO: make_decrement() and make_increment() are probably not that useful -
    # it's all very well knowing the value of a register, but without an address to
    # use with expr() it doesn't help that much. If they *are* useful, we should
    # probably make adc # and sbc # update the value where possible.

    def make_decrement(self, reg):
        def decrement(addr, state):
            v = state[reg][0]
            if v is not None:
                v -= 1
                if v == -1:
                    v = 0xff
                state[reg] = (v, None)
        return decrement

    def make_increment(self, reg):
        def increment(addr, state):
            v = state[reg][0]
            if v is not None:
                v += 1
                if v == 0x100:
                    v = 0
                state[reg] = (v, None)
        return increment

    def make_load_immediate(self, reg):
        def load_immediate(addr, state):
            v = trace.cpu.memory_binary[addr+1]
            state[reg] = (v, addr+1)
            state['n'] = ((v & 0x80) == 0x80)
            state['z'] = (v == 0)
        return load_immediate

    def make_transfer(self, src_reg, dest_reg):
        def transfer(addr, state):
            state[dest_reg] = state[src_reg]
            v = state[dest_reg][0]
            if v is not None:
                state['n'] = ((v & 0x80) == 0x80)
                state['z'] = (v == 0)
        return transfer

    def neutral(self, addr, state):
        pass

    def update_anz(self, addr, state):
        return self.make_corrupt_rnz('a')(addr, state)

    def update_anzc(self, addr, state):
        return self.make_corrupt_rnzc('a')(addr, state)

    def update_xnz(self, addr, state):
        return self.make_corrupt_rnz('x')(addr, state)

    def update_ynz(self, addr, state):
        return self.make_corrupt_rnz('y')(addr, state)

    def update_nz(self, addr, state):
        state['n'] = None
        state['z'] = None

    def update_nzc(self, addr, state):
        state['n'] = None
        state['z'] = None
        state['c'] = None

    def update_bit(self, addr, state):
        state['n'] = None
        state['v'] = None
        state['z'] = None

    def update_adc_sbc(self, addr, state):
        state['n'] = None
        state['v'] = None
        state['z'] = None
        state['c'] = None

    def corrupt_flags(self, addr, state):
        state['n'] = None
        state['v'] = None
        state['d'] = None
        state['i'] = None
        state['z'] = None
        state['c'] = None

    def is_subroutine_call(self, addr):
        c = disassembly.classifications[addr]
        return isinstance(c, trace.cpu.Opcode) and c.mnemonic == "JSR"

    def is_branch_to(self, addr, target):
        c = disassembly.classifications[addr]

        # TODO: hacky use of isinstance()
        if isinstance(c, self.OpcodeConditionalBranch):
            return c._target(addr) == target
        if isinstance(c, self.OpcodeJmpAbs):
            return memorymanager.get_u16_binary(addr + 1) == target
        return False

    # TODO: Move? We do need to do this before setting trace_done though (I think)...
    # Note that this does *not* check for labels breaking up a sequence. We're not
    # optimising code here, we are making an inference from a series of straight
    # line instructions - the fact that the sequence might *also* be entered
    # part-way through via a label doesn't invalidate that inference.
    def subroutine_argument_finder(self):
        if len(trace.subroutine_argument_finder_hooks) == 0:
            return

        addr = 0
        state = trace.cpu.CpuState()
        while addr < 0x10000:
            c = disassembly.classifications[addr]
            if c is not None:
                # TODO: Hacky use of isinstance()
                if isinstance(c, trace.cpu.Opcode):
                    opcode = trace.cpu.memory_binary[addr]
                    opcode_jsr = 0x20
                    opcode_jmp = 0x4c
                    if opcode in (opcode_jsr, opcode_jmp):
                        target = memorymanager.get_u16_binary(addr + 1)
                        for hook in trace.subroutine_argument_finder_hooks:
                            def get(reg):
                                v = state[reg][1]
                                if v is None:
                                    return v
                                return memorymanager.BinaryAddr(v)
                            if hook(memorymanager.RuntimeAddr(target), get('a'), get('x'), get('y')) is not None:
                                break
                state = trace.cpu.cpu_state_optimistic[addr]
                addr += c.length()
            else:
                addr += 1
