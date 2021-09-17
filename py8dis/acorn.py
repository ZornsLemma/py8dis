from commands import *
import utils

def xy_addr(x_addr, y_addr):
    if x_addr is not None and y_addr is not None:
        label = get_label((memory[y_addr] << 8) | memory[x_addr], x_addr)
        expr(x_addr, utils.LazyString("<(%s)", label))
        expr(y_addr, utils.LazyString(">(%s)", label))

osfile_enum = {
    0x00: "osfile_save",
    0x01: "osfile_write_catalogue_info",
    0x02: "osfile_write_load_addr",
    0x03: "osfile_write_exec_addr",
    0x04: "osfile_write_attributes",
    0x05: "osfile_read_catalogue_info",
    0x06: "osfile_delete",
    0xff: "osfile_load",
}

osword_enum = {
    0x00: "osword_read_line",
    0x01: "osword_read_clock",
    0x02: "osword_write_clock",
    0x03: "osword_read_interval_timer",
    0x04: "osword_write_interval_timer",
    0x05: "osword_read_io_memory",
    0x06: "osword_write_io_memory",
    0x07: "osword_sound",
    0x08: "osword_envelope",
    0x09: "osword_read_pixel",
    0x0a: "osword_read_char",
    0x0b: "osword_read_palette",
    0x0c: "osword_write_palette",
    0x0d: "osword_read_graphics_cursor_position",
}

def enum_lookup(r_addr, e):
    if r_addr is None:
        return
    r = config.memory[r_addr]
    if r in e:
        constant(r, e[r])
        expr(r_addr, e[r])

def osfile_sequence_hook(a_addr, x_addr, y_addr):
    enum_lookup(a_addr, osfile_enum)
    xy_addr(x_addr, y_addr)

def osword_sequence_hook(a_addr, x_addr, y_addr):
    enum_lookup(a_addr, osword_enum)
    xy_addr(x_addr, y_addr)

def osbyte_sequence_hook(a_addr, x_addr, y_addr):
    pass # TODO!

def acorn_sequence_hook(target, a_addr, x_addr, y_addr):
    # TODO: magic constants, should share with add_standard_labels via Python "constants"
    # TODO: do other OS calls
    d = {
        0xffdd: osfile_sequence_hook,
        0xfff1: osword_sequence_hook,
        0xfff4: osbyte_sequence_hook,
    }
    if target in d:
        (d[target])(a_addr, x_addr, y_addr)

# ENHANCE: Split this up somehow into "tube or host" and "just host"?
def add_standard_labels():
    optional_label(0x00f2, "os_text_ptr")
    optional_label(0x00f4, "romsel_copy")
    optional_label(0x00f6, "osrdsc_ptr")

    def ol2(addr, name):
        optional_label(addr    , name)
        optional_label(addr + 1, "%s+1" % name, addr)

    ol2(0x0200, "userv")
    ol2(0x0202, "brkv")
    ol2(0x0204, "irq1v")
    ol2(0x0206, "irq2v")
    ol2(0x0208, "cliv")
    ol2(0x020a, "bytev")
    ol2(0x020c, "wordv")
    ol2(0x020e, "wrchv")
    ol2(0x0210, "rdchv")
    ol2(0x0212, "filev")
    ol2(0x0214, "argsv")
    ol2(0x0216, "bgetv")
    ol2(0x0218, "bputv")
    ol2(0x021a, "gbpbv")
    ol2(0x021c, "findv")
    ol2(0x021e, "fscv")
    ol2(0x0220, "evntv")
    ol2(0x0222, "uptv")
    ol2(0x0224, "netv")
    ol2(0x0226, "vduv")
    ol2(0x0228, "keyv")
    ol2(0x022a, "insv")
    ol2(0x022c, "remv")
    ol2(0x022e, "cnpv")
    ol2(0x0230, "ind1v")
    ol2(0x0232, "ind2v")
    ol2(0x0234, "ind3v")

    optional_label(0xfe30, "romsel")

    optional_label(0xffb9, "osrdsc")
    optional_label(0xffbc, "vduchr")
    optional_label(0xffbf, "oseven")
    optional_label(0xffc2, "gsinit")
    optional_label(0xffc5, "gsread")
    optional_label(0xffc8, "nvrdch")
    optional_label(0xffcb, "nvwrch")
    optional_label(0xffce, "osfind")
    optional_label(0xffd1, "osgbpb")
    optional_label(0xffd4, "osbput")
    optional_label(0xffd7, "osbget")
    optional_label(0xffda, "osargs")
    optional_label(0xffdd, "osfile")
    optional_label(0xffe0, "osrdch")
    optional_label(0xffe3, "osasci")
    optional_label(0xffe7, "osnewl")
    optional_label(0xffec, "oswrcr")
    optional_label(0xffee, "oswrch")
    optional_label(0xfff1, "osword")
    optional_label(0xfff4, "osbyte")
    optional_label(0xfff7, "oscli")

    # TODO: Should this be a separate fn?
    add_sequence_hook(acorn_sequence_hook)

def is_sideways_rom():
    comment(0x8000, "Sideways ROM header")
    label(0x8000, "rom_header")
    def check_entry(addr, entry_type):
        jmp_abs_opcode = 0x4c
        label(addr, entry_type + "_entry")
        if memory[addr] == jmp_abs_opcode:
            entry(addr)
            label(utils.get_u16(addr + 1), entry_type + "_handler")
        else:
            byte(addr, 3)
    check_entry(0x8000, "language")
    check_entry(0x8003, "service")
    label(0x8006, "rom_type")
    label(0x8007, "copyright_offset")
    copyright_offset = memory[0x8007]
    expr(0x8007, "copyright - rom_header")
    label(0x8008, "binary_version")
    label(0x8009, "title")
    nul_at_title_end = stringz(0x8009, True) - 1
    if nul_at_title_end < (0x8000 + copyright_offset):
        label(nul_at_title_end, "version")
        stringz(nul_at_title_end + 1, True)
    label(0x8000 + copyright_offset, "copyright")
    stringz(0x8000 + copyright_offset + 1)
    # ENHANCE: We could recognise tube transfer/relocation data in header
