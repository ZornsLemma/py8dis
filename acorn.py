import a as SFTODOA
import b as disassembly
from memory import * # TODO?

def label_os_entry_points():
    # TODO: Ideally we wouldn't show any labels in the output that aren't referenced
    disassembly.add_label(0xffb9, "osrdrm")
    disassembly.add_label(0xffbf, "osevent")
    disassembly.add_label(0xffc2, "gsinit")
    disassembly.add_label(0xffc5, "gsread")
    disassembly.add_label(0xffc8, "nvrdch")
    disassembly.add_label(0xffcb, "nvwrch")
    disassembly.add_label(0xffce, "osfind")
    disassembly.add_label(0xffd4, "osbput")
    disassembly.add_label(0xffd7, "osbget")
    disassembly.add_label(0xffda, "osargs")
    disassembly.add_label(0xffdd, "osfile")
    disassembly.add_label(0xfff1, "osword")
    disassembly.add_label(0xfff4, "osbyte")
    disassembly.add_label(0xffe0, "osrdch")
    disassembly.add_label(0xffe3, "osasci")
    disassembly.add_label(0xffe7, "osnewl")
    disassembly.add_label(0xffee, "oswrch")
    disassembly.add_label(0xfff7, "oscli")

# TODO: This and other Acorn-specific stuff should be moved into an acorn.py file
def is_sideways_rom():
    disassembly.add_comment(0x8000, "Sideways ROM header")
    disassembly.add_label(0x8000, "rom_header")
    def check_entry(addr, entry_type):
        jmp_abs_opcode = 0x4c
        disassembly.add_label(addr, entry_type + "_entry")
        if memory[addr] == jmp_abs_opcode:
            entry_points.append(addr)
            disassembly.add_label(SFTODOA.get_abs(addr + 1), entry_type + "_handler")
        else:
            disassembly.add_classification(addr, SFTODOA.Data(3))
    check_entry(0x8000, "language")
    check_entry(0x8003, "service")
    disassembly.add_label(0x8006, "rom_type")
    disassembly.add_label(0x8007, "copyright_offset")
    copyright_offset = memory[0x8007]
    expressions[0x8007] = "copyright - rom_header"
    disassembly.add_label(0x8008, "binary_version")
    disassembly.add_label(0x8009, "title")
    nul_at_title_end = SFTODOA.string_nul(0x8009, True) - 1
    if nul_at_title_end < (0x8000 + copyright_offset):
        disassembly.add_label(nul_at_title_end, "version")
        SFTODOA.string_nul(nul_at_title_end + 1, True)
    disassembly.add_label(0x8000 + copyright_offset, "copyright")
    SFTODOA.string_nul(0x8000 + copyright_offset + 1)
    # TODO: We could recognise tube transfer/relocation data in header
