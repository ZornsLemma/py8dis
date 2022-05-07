# ENHANCE: This is just a skeleton to help confirm the basic idea of separate
# tracefoo.py modules more-or-less works. It isn't capable of disassembling real
# 8080 code and it doesn't try to be smart about understanding the structure of
# 8080 opcodes.

import collections

import config
import classification
import config
import disassembly
import movemanager
import newformatter
import trace
import utils

class Cpu8080(trace.Cpu):
    """Singleton class representing an 8080 CPU"""

    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Cpu8080, cls).__new__(cls)

            #TODO: self.code_analysis_fns.append(subroutine_argument_finder)
        return cls.instance

    def __init__(self):
        super(Cpu8080, self).__init__()

        self.call_hooks = {}

        # TODO: indent_level is a bit of a hack (after all, arguably byte/word directives etc should have it too) and should probably be handled at a higher level by the code controlling emission of text disassembly output
        self.indent_level_dict = collections.defaultdict(int)

        self.opcodes = {
            0x00: self.OpcodeImplied("NOP"),
            0x01: self.OpcodeImmediate16("LXI BC,"),
            0x02: self.OpcodeImplied("STAX B"),
            0x03: self.OpcodeImplied("INX B"),
            0x04: self.OpcodeImplied("INR B"),
            0x05: self.OpcodeImplied("DCR B"),
            0x06: self.OpcodeImmediate("MVI B,"),
            0x07: self.OpcodeImplied("RLC"),
            0x08: self.OpcodeImplied("NOP"),
            0x09: self.OpcodeImplied("DAD B"),
            0x0a: self.OpcodeImplied("LDAX B"),
            0x0b: self.OpcodeImplied("DCX B"),
            0x0c: self.OpcodeImplied("INR C"),
            0x0d: self.OpcodeImplied("DCR C"),
            0x0e: self.OpcodeImmediate("MVI C,"),
            0x0f: self.OpcodeImplied("RRC"),

            0x10: self.OpcodeImplied("NOP"),
            0x11: self.OpcodeImmediate16("LXI DE,"),
            0x12: self.OpcodeImplied("STAX D"),
            0x13: self.OpcodeImplied("INX D"),
            0x14: self.OpcodeImplied("INR D"),
            0x15: self.OpcodeImplied("DCR D"),
            0x16: self.OpcodeImmediate("MVI D,"),
            0x17: self.OpcodeImplied("RAL"),
            0x18: self.OpcodeImplied("NOP"),
            0x19: self.OpcodeImplied("DAD D"),
            0x1a: self.OpcodeImplied("LDAX D"),
            0x1b: self.OpcodeImplied("DCX D"),
            0x1c: self.OpcodeImplied("INR E"),
            0x1d: self.OpcodeImplied("DCR E"),
            0x1e: self.OpcodeImmediate("MVI E,"),
            0x1f: self.OpcodeImplied("RAR"),

            0x20: self.OpcodeImplied("RIM"),
            0x21: self.OpcodeImmediate16("LXI HL,"),
            0x22: self.OpcodeAddr16("SHLD"),
            0x23: self.OpcodeImplied("INX H"),
            0x24: self.OpcodeImplied("INR H"),
            0x25: self.OpcodeImplied("DCR H"),
            0x26: self.OpcodeImmediate("MVI H,"),
            0x27: self.OpcodeImplied("DAA"),
            0x28: self.OpcodeImplied("NOP"),
            0x29: self.OpcodeImplied("DAD H"),
            0x2a: self.OpcodeAddr16("LHLD"),
            0x2b: self.OpcodeImplied("DCX H"),
            0x2c: self.OpcodeImplied("INR L"),
            0x2d: self.OpcodeImplied("DCR L"),
            0x2e: self.OpcodeImmediate("MVI L,"),
            0x2f: self.OpcodeImplied("CMA"),

            0x30: self.OpcodeImplied("SIM"),
            0x31: self.OpcodeImmediate16("LXI SP,"),
            0x32: self.OpcodeAddr16("STA"),
            0x33: self.OpcodeImplied("INX SP"),
            0x34: self.OpcodeImplied("INR M"),
            0x35: self.OpcodeImplied("DCR M"),
            0x36: self.OpcodeImmediate("MVI M,"),
            0x37: self.OpcodeImplied("STC"),
            0x38: self.OpcodeImplied("NOP"),
            0x39: self.OpcodeImplied("DAD SP"),
            0x3a: self.OpcodeAddr16("LDA"),
            0x3b: self.OpcodeImplied("DCX SP"),
            0x3c: self.OpcodeImplied("INR A"),
            0x3d: self.OpcodeImplied("DCR A"),
            0x3e: self.OpcodeImmediate("MVI A,"),
            0x3f: self.OpcodeImplied("CMC"),

            0x40: self.OpcodeImplied("MOV B, B"),
            0x41: self.OpcodeImplied("MOV B, C"),
            0x42: self.OpcodeImplied("MOV B, D"),
            0x43: self.OpcodeImplied("MOV B, E"),
            0x44: self.OpcodeImplied("MOV B, H"),
            0x45: self.OpcodeImplied("MOV B, L"),
            0x46: self.OpcodeImplied("MOV B, M"),
            0x47: self.OpcodeImplied("MOV B, A"),
            0x48: self.OpcodeImplied("MOV C, B"),
            0x49: self.OpcodeImplied("MOV C, C"),
            0x4a: self.OpcodeImplied("MOV C, D"),
            0x4b: self.OpcodeImplied("MOV C, E"),
            0x4c: self.OpcodeImplied("MOV C, H"),
            0x4d: self.OpcodeImplied("MOV C, L"),
            0x4e: self.OpcodeImplied("MOV C, M"),
            0x4f: self.OpcodeImplied("MOV C, A"),

            0x50: self.OpcodeImplied("MOV D, B"),
            0x51: self.OpcodeImplied("MOV D, C"),
            0x52: self.OpcodeImplied("MOV D, D"),
            0x53: self.OpcodeImplied("MOV D, E"),
            0x54: self.OpcodeImplied("MOV D, H"),
            0x55: self.OpcodeImplied("MOV D, L"),
            0x56: self.OpcodeImplied("MOV D, M"),
            0x57: self.OpcodeImplied("MOV D, A"),
            0x58: self.OpcodeImplied("MOV E, B"),
            0x59: self.OpcodeImplied("MOV E, C"),
            0x5a: self.OpcodeImplied("MOV E, D"),
            0x5b: self.OpcodeImplied("MOV E, E"),
            0x5c: self.OpcodeImplied("MOV E, H"),
            0x5d: self.OpcodeImplied("MOV E, L"),
            0x5e: self.OpcodeImplied("MOV E, M"),
            0x5f: self.OpcodeImplied("MOV E, A"),

            0x60: self.OpcodeImplied("MOV H, B"),
            0x61: self.OpcodeImplied("MOV H, C"),
            0x62: self.OpcodeImplied("MOV H, D"),
            0x63: self.OpcodeImplied("MOV H, E"),
            0x64: self.OpcodeImplied("MOV H, H"),
            0x65: self.OpcodeImplied("MOV H, L"),
            0x66: self.OpcodeImplied("MOV H, M"),
            0x67: self.OpcodeImplied("MOV H, A"),
            0x68: self.OpcodeImplied("MOV L, B"),
            0x69: self.OpcodeImplied("MOV L, C"),
            0x6a: self.OpcodeImplied("MOV L, D"),
            0x6b: self.OpcodeImplied("MOV L, E"),
            0x6c: self.OpcodeImplied("MOV L, H"),
            0x6d: self.OpcodeImplied("MOV L, L"),
            0x6e: self.OpcodeImplied("MOV L, M"),
            0x6f: self.OpcodeImplied("MOV L, A"),

            0x70: self.OpcodeImplied("MOV M, B"),
            0x71: self.OpcodeImplied("MOV M, C"),
            0x72: self.OpcodeImplied("MOV M, D"),
            0x73: self.OpcodeImplied("MOV M, E"),
            0x74: self.OpcodeImplied("MOV M, H"),
            0x75: self.OpcodeImplied("MOV M, L"),
            0x76: self.OpcodeImplied("HLT"),
            0x77: self.OpcodeImplied("MOV M, A"),
            0x78: self.OpcodeImplied("MOV A, B"),
            0x79: self.OpcodeImplied("MOV A, C"),
            0x7a: self.OpcodeImplied("MOV A, D"),
            0x7b: self.OpcodeImplied("MOV A, E"),
            0x7c: self.OpcodeImplied("MOV A, H"),
            0x7d: self.OpcodeImplied("MOV A, L"),
            0x7e: self.OpcodeImplied("MOV A, M"),
            0x7f: self.OpcodeImplied("MOV A, A"),

            0x80: self.OpcodeImplied("ADD B"),
            0x81: self.OpcodeImplied("ADD C"),
            0x82: self.OpcodeImplied("ADD D"),
            0x83: self.OpcodeImplied("ADD E"),
            0x84: self.OpcodeImplied("ADD H"),
            0x85: self.OpcodeImplied("ADD L"),
            0x86: self.OpcodeImplied("ADD M"),
            0x87: self.OpcodeImplied("ADD A"),
            0x88: self.OpcodeImplied("ADC B"),
            0x89: self.OpcodeImplied("ADC C"),
            0x8a: self.OpcodeImplied("ADC E"),
            0x8b: self.OpcodeImplied("ADC E"),
            0x8c: self.OpcodeImplied("ADC H"),
            0x8d: self.OpcodeImplied("ADC L"),
            0x8e: self.OpcodeImplied("ADC M"),
            0x8f: self.OpcodeImplied("ADC A"),

            0x90: self.OpcodeImplied("SUB B"),
            0x91: self.OpcodeImplied("SUB C"),
            0x92: self.OpcodeImplied("SUB D"),
            0x93: self.OpcodeImplied("SUB E"),
            0x94: self.OpcodeImplied("SUB H"),
            0x95: self.OpcodeImplied("SUB L"),
            0x96: self.OpcodeImplied("SUB M"),
            0x97: self.OpcodeImplied("SUB A"),
            0x98: self.OpcodeImplied("SBB B"),
            0x99: self.OpcodeImplied("SBB C"),
            0x9a: self.OpcodeImplied("SBB D"),
            0x9b: self.OpcodeImplied("SBB E"),
            0x9c: self.OpcodeImplied("SBB H"),
            0x9d: self.OpcodeImplied("SBB L"),
            0x9e: self.OpcodeImplied("SBB M"),
            0x9f: self.OpcodeImplied("SBB A"),

            0xa0: self.OpcodeImplied("ANA B"),
            0xa1: self.OpcodeImplied("ANA C"),
            0xa2: self.OpcodeImplied("ANA D"),
            0xa3: self.OpcodeImplied("ANA E"),
            0xa4: self.OpcodeImplied("ANA H"),
            0xa5: self.OpcodeImplied("ANA L"),
            0xa6: self.OpcodeImplied("ANA M"),
            0xa7: self.OpcodeImplied("ANA A"),
            0xa8: self.OpcodeImplied("XRA B"),
            0xa9: self.OpcodeImplied("XRA C"),
            0xaa: self.OpcodeImplied("XRA D"),
            0xab: self.OpcodeImplied("XRA E"),
            0xac: self.OpcodeImplied("XRA H"),
            0xad: self.OpcodeImplied("XRA L"),
            0xae: self.OpcodeImplied("XRA M"),
            0xaf: self.OpcodeImplied("XRA A"),

            0xb0: self.OpcodeImplied("ORA B"),
            0xb1: self.OpcodeImplied("ORA C"),
            0xb2: self.OpcodeImplied("ORA D"),
            0xb3: self.OpcodeImplied("ORA E"),
            0xb4: self.OpcodeImplied("ORA H"),
            0xb5: self.OpcodeImplied("ORA L"),
            0xb6: self.OpcodeImplied("ORA M"),
            0xb7: self.OpcodeImplied("ORA A"),
            0xb8: self.OpcodeImplied("CMP B"),
            0xb9: self.OpcodeImplied("CMP C"),
            0xba: self.OpcodeImplied("CMP D"),
            0xbb: self.OpcodeImplied("CMP E"),
            0xbc: self.OpcodeImplied("CMP H"),
            0xbd: self.OpcodeImplied("CMP L"),
            0xbe: self.OpcodeImplied("CMP M"),
            0xbf: self.OpcodeImplied("CMP A"),

            0xc0: self.OpcodeImplied("RNZ"),
            0xc1: self.OpcodeImplied("POP B"),
            0xc2: self.OpcodeConditionalBranch("JNZ"),
            0xc3: self.OpcodeJmp("JMP"),
            0xc4: self.OpcodeCall("CNZ"),
            0xc5: self.OpcodeImplied("PUSH B"),
            0xc6: self.OpcodeImmediate("ADI"),
            0xc7: self.OpcodeReset("RST 0"),
            0xc8: self.OpcodeImplied("RZ"),
            0xc9: self.OpcodeReturn("RET"),
            0xca: self.OpcodeConditionalBranch("JZ"),
            0xcb: self.OpcodeImplied("NOP"),
            0xcc: self.OpcodeCall("CZ"),
            0xcd: self.OpcodeCall("CALL"),
            0xce: self.OpcodeImmediate("ACI"),
            0xcf: self.OpcodeReset("RST 1"),

            0xd0: self.OpcodeImplied("RNC"),
            0xd1: self.OpcodeImplied("POP D"),
            0xd2: self.OpcodeConditionalBranch("JNC"),
            0xd3: self.OpcodeImmediate("OUT"),
            0xd4: self.OpcodeCall("CNC"),
            0xd5: self.OpcodeImplied("PUSH D"),
            0xd6: self.OpcodeImmediate("SUI"),
            0xd7: self.OpcodeReset("RST 2"),
            0xd8: self.OpcodeImplied("RC"),
            0xd9: self.OpcodeImplied("NOP"),
            0xda: self.OpcodeConditionalBranch("JC"),
            0xdb: self.OpcodeImmediate("IN"),
            0xdc: self.OpcodeCall("CC"),
            0xdd: self.OpcodeImplied("NOP"),
            0xde: self.OpcodeImmediate("SBI"),
            0xdf: self.OpcodeReset("RST 3"),

            0xe0: self.OpcodeImplied("RPO"),
            0xe1: self.OpcodeImplied("POP H"),
            0xe2: self.OpcodeConditionalBranch("JPO"),
            0xe3: self.OpcodeImplied("XTHL"),
            0xe4: self.OpcodeCall("CPO"),
            0xe5: self.OpcodeImplied("PUSH H"),
            0xe6: self.OpcodeImmediate("ANI"),
            0xe7: self.OpcodeReset("RST 4"),
            0xe8: self.OpcodeImplied("RPE"),
            0xe9: self.OpcodeJmpInd("PCHL"),
            0xea: self.OpcodeConditionalBranch("JPE"),
            0xeb: self.OpcodeImplied("XCHG"),
            0xec: self.OpcodeCall("CPE"),
            0xed: self.OpcodeImplied("NOP"),
            0xee: self.OpcodeImmediate("XRI"),
            0xef: self.OpcodeReset("RST 5"),

            0xf0: self.OpcodeImplied("RP"),
            0xf1: self.OpcodeImplied("POP PSW"),
            0xf2: self.OpcodeConditionalBranch("JP"),
            0xf3: self.OpcodeImplied("DI"),
            0xf4: self.OpcodeCall("CP"),
            0xf5: self.OpcodeImplied("PUSH PSW"),
            0xf6: self.OpcodeImmediate("ORI"),
            0xf7: self.OpcodeReset("RST 6"),
            0xf8: self.OpcodeImplied("RM"),
            0xf9: self.OpcodeImplied("SPHL"),
            0xfa: self.OpcodeConditionalBranch("JM"),
            0xfb: self.OpcodeImplied("EI"),
            0xfc: self.OpcodeCall("CM"),
            0xfd: self.OpcodeImplied("NOP"),
            0xfe: self.OpcodeImmediate("CPI"),
            0xff: self.OpcodeReset("RST 7"),
        }

    def hook_subroutine(self, runtime_addr, name, hook, warn=True):
        runtime_addr = utils.RuntimeAddr(runtime_addr)
        binary_addr, move_id = movemanager.r2b_checked(runtime_addr)
        # TODO: Should probably warn rather than assert in other fns too
        if warn:
            utils.check_data_loaded_at_binary_addr(binary_addr)
        self.add_entry(binary_addr, name, move_id)
        self.call_hooks[runtime_addr] = hook


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
        with movemanager.moved(movemanager.move_id_for_binary_addr[context]):
            #if context in (0x8fda, 0x2fda):
            #    print("XAL", hex(target), movemanager.r2b(target))
            return self.apply_move(target)


    class Opcode(object):
        def __init__(self, mnemonic, operand_length, suffix = None, update=None):
            self.mnemonic = mnemonic
            self.suffix = suffix if suffix is not None else ""
            self.prefix = "(" if ")" in self.suffix else ""
            self.update = update
            self.operand_length = operand_length

        def is_mergeable(self):
            return False

        def length(self):
            return 1 + self.operand_length

        def is_code(self, addr):
            return True

        def update_cpu_state(self, addr, state):
            if self.update is not None:
                self.update(addr, state)
            else:
                state.clear()

        def update_references(self, addr):
            pass

        def is_block_end(self):
            return False

        def as_string(self, addr):
            return "%s%s" % (utils.make_indent(1), utils.force_case(self.mnemonic))

        def as_string_list(self, addr, annotations):
            result = [newformatter.add_inline_comment(addr, self.length(), annotations, utils.LazyString(utils.make_indent(trace.cpu.indent_level_dict.get(addr, 0)) + "%s", self.as_string(addr)))]
            if self.is_block_end() and config.get_blank_line_at_block_end():
                result.append("")
            return result


    class OpcodeImplied(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeImplied, self).__init__(mnemonic, 0, update=update)

        def disassemble(self, binary_addr):
            return [binary_addr + 1]


    class OpcodeImmediate(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeImmediate, self).__init__(mnemonic, 1, update=update)

        def disassemble(self, binary_addr):
            return [binary_addr + 2]

        def as_string(self, addr):
            s = "%s%s %s" % (utils.make_indent(1), utils.force_case(self.mnemonic), classification.get_constant8(addr + 1))
            if (addr + 1) not in classification.expressions and disassembly.format_hint.get(addr + 1) is None:
                c = trace.cpu.memory_binary[addr + 1]
                if config.get_show_char_literals() and utils.isprint(c):
                    s += " %s '%s'" % (config.get_formatter().comment_prefix(), chr(c))
            return s


    class OpcodeImmediate16(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeImmediate16, self).__init__(mnemonic, 2, update=update)

        def disassemble(self, binary_addr):
            return [binary_addr + 3]

        def as_string(self, addr):
            s = "%s%s %s" % (utils.make_indent(1), utils.force_case(self.mnemonic), classification.get_constant16(addr + 1))
            if (addr + 1) not in classification.expressions and disassembly.format_hint.get(addr + 1) is None:
                c = trace.cpu.memory_binary[addr + 1]
                if config.get_show_char_literals() and utils.isprint(c):
                    s += " %s '%s'" % (config.get_formatter().comment_prefix(), chr(c))
            return s

    class OpcodeAddr16(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeAddr16, self).__init__(mnemonic, 2, update=update)

        def abs_operand(self, addr):
            return utils.get_u16_binary(addr + 1)

        def as_string(self, addr):
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
            return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

        def update_references(self, addr):
            trace.cpu.labels[self.abs_operand(addr)].add_reference(addr)

        def disassemble(self, binary_addr):
            return [binary_addr + 3]

    class OpcodeJmp(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeJmp, self).__init__(mnemonic, 2, update=update)

        def _target(self, addr):
            return utils.RuntimeAddr(utils.get_u16_binary(addr + 1))

        def abs_operand(self, addr):
            return self._target(addr)

        def as_string(self, addr):
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
            return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

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

    class OpcodeJmpInd(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeJmpInd, self).__init__(mnemonic, 0, update=update)

        def is_block_end(self):
            return True

        def disassemble(self, binary_addr):
            return [None]


    class OpcodeConditionalBranch(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeConditionalBranch, self).__init__(mnemonic, 2, update=update)

        def _target(self, binary_addr):
            return utils.RuntimeAddr(utils.get_u16_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self._target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self._target(binary_addr)].add_reference(binary_addr)
            #trace.references[self._target(binary_addr)].add(binary_addr)

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return [binary_addr + 3] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

        def update_cpu_state(self, addr, state):
            # In our optimistic model (at least), a branch invalidates everything.
            # Consider "ldy #3:.label:dey:bne label" - in the optimistic model we ignore
            # labels and the only way we don't finish that sequence assuming y=2 is if
            # the branch invalidates.
            state.clear()

        def as_string(self, binary_addr):
            #print("XXX", hex(binary_addr), movemanager.move_id_for_binary_addr[binary_addr])
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))

    class OpcodeCall(Opcode):
        def __init__(self, mnemonic, update=None):
            super(Cpu8080.OpcodeCall, self).__init__(mnemonic, 2, update=update)

        def _target(self, addr):
            return utils.RuntimeAddr(utils.get_u16_binary(addr + 1))

        def abs_operand(self, addr):
            return self._target(addr)

        def update_references(self, addr):
            trace.cpu.labels[self._target(addr)].add_reference(addr)
            #trace.references[self._target(addr)].add(addr)

        def disassemble(self, binary_addr):
            assert isinstance(binary_addr, utils.BinaryAddr)
            # A hook only gets to return the "straight line" address to continue
            # tracing from (if there is one; it can return None if it wishes). Some
            # subroutines (e.g. jsr is_yx_zero:equw target_if_true, target_if_false)
            # might have no "straight line" case and want to return some labelled
            # entry points. This is supported by having the hook simply return None
            # and call entry() itself for the labelled entry points.
            # TODO: Do we need to apply_move() here or in _target() or in abs_operand() or before/after call_hooks.get()?
            target_runtime_addr = self._target(binary_addr)
            def simple_call_hook(target_runtime_addr, caller_runtime_addr):
                assert isinstance(target_runtime_addr, utils.RuntimeAddr)
                assert isinstance(caller_runtime_addr, utils.RuntimeAddr)
                # TODO: It might be possible the following assertion fails if the moves
                # in effect are sufficiently tricky, but I'll leave it for now as it
                # may catch bugs - once the code is more trusted it can be removed
                # if it's technically incorrect.
                assert movemanager.r2b_checked(caller_runtime_addr)[0] == binary_addr
                return caller_runtime_addr + 3
            call_hook = trace.cpu.call_hooks.get(target_runtime_addr, simple_call_hook)
            caller_runtime_addr = movemanager.b2r(binary_addr)
            with movemanager.moved(movemanager.move_id_for_binary_addr[binary_addr]):
                return_runtime_addr = call_hook(target_runtime_addr, caller_runtime_addr)
            if return_runtime_addr is not None:
                return_runtime_addr = utils.RuntimeAddr(return_runtime_addr)
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

        def as_string(self, addr):
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
            return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

    class OpcodeReturn(Opcode):
        def __init__(self, mnemonic):
            super(Cpu8080.OpcodeReturn, self).__init__(mnemonic, 0)

        def disassemble(self, binary_addr):
            return [None]

        def is_block_end(self):
            return True

    class OpcodeReset(Opcode):
        def __init__(self, mnemonic):
            super(Cpu8080.OpcodeReset, self).__init__(mnemonic, 0)

        def disassemble(self, binary_addr):
            return [None]

        def is_block_end(self):
            return True

    class CpuState(object):
        def __init__(self):
            self.clear()

        def clear(self):
            self._d = {
                # For A/X/Y, value is (integer value if known, address of integer
                # value if set by LDA/X/Y #).
                "a": [None, None],
                "b": [None, None],
                "c": [None, None],
                "d": [None, None],
                "e": [None, None],
                "h": [None, None],
                "l": [None, None],
                # For flags, value is True/False if known.
                "C": None,
                "H": None,      # Also known as 'half carry', 'alternative carry', or 'AC'
                "S": None,
                "Z": None,
                "P": None,
            }

        def __getitem__(self, key):
            assert key in "abcdehlCHSZP"
            return self._d[key]

        def __setitem__(self, key, item):
            assert key in "abcdehlCHSZP"
            if key in "abcdehl":
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
            s += "A:%s B:%s C:%s D:%s E:%s H:%s L:%s" % (reg('a'), reg('b'), reg('c'), reg('d'), reg('e'), reg('h'), reg('l'))
            def flag(name):
                b = self[name]
                if b is None:
                    return "-"
                return name.upper() if b else name.lower()
            s += " %s%s%s%s%s" % (flag('C'), flag('H'), flag('S'), flag('Z'), flag('P'))
            return s


    def is_subroutine_call(self, addr):
        return False

    def is_branch_to(self, addr, target):
        c = disassembly.classifications[addr]

        # TODO: hacky use of isinstance()
        if isinstance(c, self.OpcodeConditionalBranch):
            return c._target(addr) == target
        return False

