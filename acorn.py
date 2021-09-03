from commands import *
import utils

# TODO: Do this automatically just from "import acorn"?
def label_os_entry_points():
    # TODO: Ideally we wouldn't show any labels in the output that aren't referenced
    label(0xffb9, "osrdrm")
    label(0xffbf, "osevent")
    label(0xffc2, "gsinit")
    label(0xffc5, "gsread")
    label(0xffc8, "nvrdch")
    label(0xffcb, "nvwrch")
    label(0xffce, "osfind")
    label(0xffd4, "osbput")
    label(0xffd7, "osbget")
    label(0xffda, "osargs")
    label(0xffdd, "osfile")
    label(0xfff1, "osword")
    label(0xfff4, "osbyte")
    label(0xffe0, "osrdch")
    label(0xffe3, "osasci")
    label(0xffe7, "osnewl")
    label(0xffee, "oswrch")
    label(0xfff7, "oscli")

def is_sideways_rom():
    comment(0x8000, "Sideways ROM header")
    label(0x8000, "rom_header")
    def check_entry(addr, entry_type):
        jmp_abs_opcode = 0x4c
        label(addr, entry_type + "_entry")
        if memory[addr] == jmp_abs_opcode:
            entry_points.append(addr)
            label(utils.get_abs(addr + 1), entry_type + "_handler")
        else:
            byte(addr, 3)
    check_entry(0x8000, "language")
    check_entry(0x8003, "service")
    label(0x8006, "rom_type")
    label(0x8007, "copyright_offset")
    copyright_offset = memory[0x8007]
    expressions[0x8007] = "copyright - rom_header"
    label(0x8008, "binary_version")
    label(0x8009, "title")
    nul_at_title_end = stringz(0x8009, True) - 1
    if nul_at_title_end < (0x8000 + copyright_offset):
        label(nul_at_title_end, "version")
        stringz(nul_at_title_end + 1, True)
    label(0x8000 + copyright_offset, "copyright")
    stringz(0x8000 + copyright_offset + 1)
    # TODO: We could recognise tube transfer/relocation data in header
