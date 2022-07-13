from commands import *
import trace
import utils

def xy_addr(x_addr, y_addr):
    if x_addr is not None and y_addr is not None:
        assert isinstance(x_addr, memorymanager.BinaryAddr)
        assert isinstance(y_addr, memorymanager.BinaryAddr)
        label = get_label((memory_binary[y_addr] << 8) | memory_binary[x_addr], x_addr)
        # TODO: This is a bit silly. We do b2r(), then expr() will convert back *and might fail*;
        # if we just assigned the expr directly to the binary address that couldn't happen.
        expr(movemanager.b2r(x_addr), utils.LazyString("<(%s)", label))
        expr(movemanager.b2r(y_addr), utils.LazyString(">(%s)", label))

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
    0x0e: "osword_read_cmos_clock",
    0x0f: "osword_write_cmos_clock",
}

osbyte_enum = {
    0x00: "osbyte_read_os_version",
    0x01: "osbyte_user",
    0x02: "osbyte_select_input_stream",
    0x03: "osbyte_select_output_stream",
    0x04: "osbyte_set_cursor_editing",
    0x05: "osbyte_select_printer",
    0x06: "osbyte_set_printer_ignore",
    0x07: "osbyte_set_serial_receive_rate",
    0x08: "osbyte_set_serial_transmit_rate",
    0x09: "osbyte_set_flashing_mark",
    0x0a: "osbyte_set_flashing_space",
    0x0b: "osbyte_set_keyboard_repeat_delay",
    0x0c: "osbyte_set_keyboard_repeat_rate",
    0x0d: "osbyte_disable_event",
    0x0e: "osbyte_enable_event",
    0x0f: "osbyte_flush_buffer_class",
    0x10: "osbyte_select_adc_channels",
    0x11: "osbyte_force_adc_conversion",
    0x12: "osbyte_reset_soft_keys",
    0x13: "osbyte_vsync",
    0x14: "osbyte_explode_chars",
    0x15: "osbyte_flush_buffer",
    0x75: "osbyte_read_vdu_status",
    0x76: "osbyte_reflect_keyboard_status_in_leds",
    0x77: "osbyte_close_spool_exec",
    0x78: "osbyte_write_keys_pressed",
    0x79: "osbyte_scan_keyboard",
    0x7a: "osbyte_scan_keyboard_from_16",
    0x7b: "osbyte_printer_driver_going_dormant",
    0x7c: "osbyte_clear_escape",
    0x7d: "osbyte_set_escape",
    0x7e: "osbyte_acknowledge_escape",
    0x7f: "osbyte_check_eof",
    0x80: "osbyte_read_adc_or_get_buffer_status",
    0x81: "osbyte_inkey",
    0x82: "osbyte_read_high_order_address",
    0x83: "osbyte_read_oshwm",
    0x84: "osbyte_read_himem",
    0x85: "osbyte_read_himem_for_mode",
    0x86: "osbyte_read_text_cursor_pos",
    0x87: "osbyte_read_char_at_cursor",
    0x88: "osbyte_code",
    0x89: "osbyte_motor",
    0x8a: "osbyte_insert_buffer",
    0x8b: "osbyte_opt",
    0x8c: "osbyte_tape",
    0x8d: "osbyte_rom",
    0x8e: "osbyte_enter_language",
    0x8f: "osbyte_issue_service_request",
    0x90: "osbyte_tv",
    0x91: "osbyte_read_buffer",
    0x92: "osbyte_read_fred",
    0x93: "osbyte_write_fred",
    0x94: "osbyte_read_jim",
    0x95: "osbyte_write_jim",
    0x96: "osbyte_read_sheila",
    0x97: "osbyte_write_sheila",
    0x98: "osbyte_examine_buffer",
    0x99: "osbyte_insert_input_buffer",
    0x9a: "osbyte_write_video_ula_control",
    0x9b: "osbyte_write_video_ula_palette",
    0x9c: "osbyte_read_write_6850_control",
    0x9d: "osbyte_fast_tube_bput",
    0x9e: "osbyte_read_speech",
    0x9f: "osbyte_write_speech",
    0xa0: "osbyte_read_vdu_variable",
    0xa6: "osbyte_read_os_variables_low",
    0xa7: "osbyte_read_os_variables_high",
    0xa8: "osybte_read_rom_ptr_table_low",
    0xa9: "osbyte_read_rom_ptr_table_high",
    0xaa: "osbyte_read_rom_info_table_low",
    0xab: "osbyte_read_rom_info_table_high",
    0xac: "osbyte_read_key_table_low",
    0xad: "osbyte_read_key_table_high",
    0xae: "osbyte_read_vdu_variables_low",
    0xaf: "osbyte_read_vdu_variables_high",
    0xb0: "osbyte_read_write_cfs_timeout",
    0xb1: "osbyte_read_write_input_source",
    0xb2: "osbyte_read_write_keyboard_semaphore",
    0xb3: "osbyte_read_write_primary_oshwm",
    0xb4: "osbyte_read_write_current_oshwm",
    0xb5: "osbyte_read_write_serial_mode",
    0xb6: "osbyte_read_char_explode_state",
    0xb7: "osbyte_read_write_cfs_rfs_switch",
    0xb8: "osbyte_read_video_ula_control",
    0xb9: "osbyte_read_video_ula_palette",
    0xba: "osbyte read_write_rom_bank_at_last_brk",
    0xbb: "osbyte_read_write_basic_rom_bank",
    0xbc: "osbyte_read_current_adc_channel",
    0xbd: "osbyte_read_write_max_adc_channel",
    0xbe: "osbyte_read_write_adc_conversion_type",
    0xbf: "osbyte_read_write_serial_user_flag",
    0xc0: "osbyte_read_serial_control_flag",
    0xc1: "osbyte_read_write_flash_counter",
    0xc2: "osbyte_read_write_mark_count",
    0xc3: "osbyte_read_write_space_count",
    0xc4: "osbyte_read_write_keyboard_repeat_delay",
    0xc5: "osbyte_read_write_keyboard_repeat_rate",
    0xc6: "osbyte_read_write_exec_file_handle",
    0xc7: "osbyte_read_write_spool_file_handle",
    0xc8: "osbyte_read_write_escape_break_effect",
    0xc9: "osbyte_read_write_econet_keyboard_disable",
    0xca: "osbyte_read_write_keyboard_status",
    0xcb: "osbyte_read_write_serial_handshake_extent",
    0xcc: "osbyte_read_write_serial_input_suppression",
    0xcd: "osbyte_read_write_cassette_serial_selection",
    0xce: "osbyte_read_write_econet_os_call_interception",
    0xcf: "osbyte_read_write_econet_osrdch_interception",
    0xd0: "osbyte_read_write_econet_oswrch_interception",
    0xd1: "osbyte_read_write_speech_suppression",
    0xd2: "osbyte_read_write_sound_suppression",
    0xd3: "osbyte_read_write_bell_channel",
    0xd4: "osbyte_read_write_bell_envelope",
    0xd5: "osbyte_read_write_bell_frequency",
    0xd6: "osbyte_read_write_bell_duration",
    0xd7: "osbyte_read_write_startup_boot_options",
    0xd8: "osbyte_read_write_soft_key_length",
    0xd9: "osbyte_read_write_lines_since_last_page",
    0xda: "osbyte_read_write_vdu_queue_size",
    0xdb: "osbyte_read_write_tab_char",
    0xdc: "osbyte_read_write_escape_char",
    0xdd: "osbyte_read_write_c0_cf_status",
    0xde: "osbyte_read_write_d0_df_status",
    0xdf: "osbyte_read_write_e0_ef_status",
    0xe0: "osbyte_read_write_f0_ff_status",
    0xe1: "osbyte_read_write_function_key_status",
    0xe2: "osbyte_read_write_shift_function_key_status",
    0xe3: "osbyte_read_write_ctrl_function_key_status",
    0xe4: "osbyte_read_write_ctrl_shift_function_key_status",
    0xe5: "osbyte_read_write_escape_status",
    0xe6: "osbyte_read_write_escape_flags",
    0xe7: "osbyte_read_write_user_via_irq_mask",
    0xe8: "osbyte_read_write_6850_irq_mark",
    0xe9: "osbyte_read_write_system_via_irq_mask",
    0xea: "osbyte_read_tube_presence",
    0xeb: "osbyte_read_speech_processor_presence",
    0xec: "osbyte_read_write_char_destination_status",
    0xed: "osbyte_read_write_cursor_editing_status",
    0xee: "osbyte_read_write_27e",
    0xef: "osbyte_read_write_27f",
    0xf0: "osbyte_read_write_280",
    0xf1: "osbyte_read_write_281",
    0xf2: "osbyte_read_serial_ula",
    0xf3: "osbyte_read_write_timer_switch_state",
    0xf4: "osbyte_read_write_soft_key_consistency_flag",
    0xf5: "osbyte_read_write_printer_destination_flag",
    0xf6: "osbyte_read_write_printer_ignore_char",
    0xf7: "osbyte_read_write_first_byte_break_intercept",
    0xf8: "osbyte_read_write_second_byte_break_intercept",
    0xf9: "osbyte_read_write_third_byte_break_intercept",
    0xfa: "osbyte_read_write_28a",
    0xfb: "osbyte_read_write_28b",
    0xfc: "osbyte_read_write_current_language_rom_bank",
    0xfd: "osbyte_read_write_last_break_type",
    0xfe: "osbyte_read_write_available_ram",
    0xff: "osbyte_read_write_startup_options",
}

# TODO: Find e.g. "LDA #5:STA crtc_address_register" and replace 5 from the list below "LDA #crtc_vert_total_adjust:STA crtc_address_register"
crtc_registers_enum =  {
       0: "crtc_horz_total",
       1: "crtc_horz_displayed",
       2: "crtc_horz_sync_pos",
       3: "crtc_sync_width",
       4: "crtc_vert_total",
       5: "crtc_vert_total_adjust",
       6: "crtc_vert_displayed",
       7: "crtc_vert_sync_pos",
       8: "crtc_interlace_delay",
       9: "crtc_scan_lines_per_char",
      10: "crtc_cursor_start",
      11: "crtc_cursor_end",
      12: "crtc_screen_start_high",
      13: "crtc_screen_start_low",
      14: "crtc_cursor_pos_high",
      15: "crtc_cursor_pos_low",
      16: "crtc_light_pen_pos_high",
      17: "crtc_light_pen_pos_low",
}

# TODO: Should sort this in the source by the key.
inkey_enum = {
      -1: "inkey_key_shift",
      -2: "inkey_key_ctrl",
     -17: "inkey_key_q",
     -18: "inkey_key_3",
     -19: "inkey_key_4",
     -20: "inkey_key_5",
     -21: "inkey_key_f4",
     -22: "inkey_key_8",
     -23: "inkey_key_f7",
     -24: "inkey_key_minus",
     -25: "inkey_key_caret",
     -26: "inkey_key_left",
     -33: "inkey_key_f0",
     -34: "inkey_key_w",
     -35: "inkey_key_e",
     -36: "inkey_key_t",
     -37: "inkey_key_7",
     -38: "inkey_key_i",
     -39: "inkey_key_9",
     -40: "inkey_key_0",
     -41: "inkey_key_underscore",
     -42: "inkey_key_down",
     -27: "inkey_key_keypad_6",
     -28: "inkey_key_keypad_7",
     -43: "inkey_key_keypad_8",
     -44: "inkey_key_keypad_9",
     -49: "inkey_key_1",
     -50: "inkey_key_2",
     -51: "inkey_key_d",
     -52: "inkey_key_r",
     -53: "inkey_key_6",
     -54: "inkey_key_u",
     -55: "inkey_key_o",
     -56: "inkey_key_p",
     -57: "inkey_key_left_square_bracket",
     -58: "inkey_key_up",
     -59: "inkey_key_keypad_plus",
     -60: "inkey_key_keypad_minus",
     -61: "inkey_key_keypad_enter",
     -65: "inkey_key_caps_lock",
     -66: "inkey_key_a",
     -67: "inkey_key_x",
     -68: "inkey_key_f",
     -69: "inkey_key_y",
     -70: "inkey_key_j",
     -71: "inkey_key_k",
     -72: "inkey_key_at",
     -73: "inkey_key_colon",
     -74: "inkey_key_return",
     -75: "inkey_key_keypad_slash",
     -76: "inkey_key_keypad_del",
     -77: "inkey_key_keypad_full_stop",
     -81: "inkey_key_shift_lock",
     -82: "inkey_key_s",
     -83: "inkey_key_c",
     -84: "inkey_key_g",
     -85: "inkey_key_h",
     -86: "inkey_key_n",
     -87: "inkey_key_l",
     -88: "inkey_key_semicolon",
     -89: "inkey_key_right_square_bracket",
     -90: "inkey_key_delete",
     -91: "inkey_key_keypad_hash",
     -92: "inkey_key_keypad_asterisk",
     -93: "inkey_key_keypad_comma",
     -97: "inkey_key_tab",
     -98: "inkey_key_z",
     -99: "inkey_key_space",
    -100: "inkey_key_v",
    -101: "inkey_key_b",
    -102: "inkey_key_m",
    -103: "inkey_key_comma",
    -104: "inkey_key_full_stop",
    -105: "inkey_key_slash",
    -106: "inkey_key_copy",
    -107: "inkey_key_keypad_0",
    -108: "inkey_key_keypad_1",
    -109: "inkey_key_keypad_3",
    -113: "inkey_key_escape",
    -114: "inkey_key_f1",
    -115: "inkey_key_f2",
    -116: "inkey_key_f3",
    -117: "inkey_key_f5",
    -118: "inkey_key_f6",
    -119: "inkey_key_f8",
    -120: "inkey_key_f9",
    -121: "inkey_key_backslash",
    -122: "inkey_key_right",
    -123: "inkey_key_keypad_4",
    -124: "inkey_key_keypad_5",
    -125: "inkey_key_keypad_2",
}
inkey_enum = {k & 0xff: v for k, v in inkey_enum.items()}

def enum_lookup(r_addr, e):
    if r_addr is None:
        return
    r = memorymanager.memory_binary[r_addr]
    if r in e:
        constant(r, e[r])
        # TODO: This is a bit silly. We do b2r(), then expr() will convert back *and might fail*;
        # if we just assigned the expr directly to the binary address that couldn't happen.
        expr(movemanager.b2r(r_addr), e[r])

# Note that the following code tries to handle A before X and Y; this is because (TODO: will this change?) expr() preserves the first expression for an address and if TAX etc are used we prefer to label A. TODO: Should we in fact prefer to label whichever register is actually loaded with the explicit immediate value?

def osfile_argument_finder_hook(a_addr, x_addr, y_addr):
    enum_lookup(a_addr, osfile_enum)
    xy_addr(x_addr, y_addr)

def osword_argument_finder_hook(a_addr, x_addr, y_addr):
    enum_lookup(a_addr, osword_enum)
    xy_addr(x_addr, y_addr)

def osbyte_argument_finder_hook(a_addr, x_addr, y_addr):
    enum_lookup(a_addr, osbyte_enum)
    # TODO: Should we check Y=&FF? Or at least Y is not known to be <128?
    if a_addr is not None and memory_binary[a_addr] == 0x81:
        enum_lookup(x_addr, inkey_enum)

def oscli_argument_finder_hook(a_addr, x_addr, y_addr):
    xy_addr(x_addr, y_addr)

def acorn_argument_finder_hook(target, a_addr, x_addr, y_addr):
    assert isinstance(target, memorymanager.RuntimeAddr)
    # TODO: magic constants, should share with mos_labels via Python "constants"
    # TODO: do other OS calls
    d = {
        0xffdd: osfile_argument_finder_hook,
        0xfff1: osword_argument_finder_hook,
        0xfff4: osbyte_argument_finder_hook,
        0xfff7: oscli_argument_finder_hook,
    }
    if target in d:
        (d[target])(a_addr, x_addr, y_addr)

# ENHANCE: Split this up somehow into "tube or host" and "just host"?
def mos_labels():
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
    trace.cpu.subroutine_argument_finder_hooks.append(acorn_argument_finder_hook)

def is_sideways_rom():
    comment(0x8000, "Sideways ROM header")
    label(0x8000, "rom_header")
    def check_entry(runtime_addr, entry_type):
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        jmp_abs_opcode = 0x4c
        label(runtime_addr, entry_type + "_entry")
        if memory[runtime_addr] == jmp_abs_opcode:
            entry(runtime_addr)
            label(utils.get_u16_runtime(runtime_addr + 1), entry_type + "_handler")
        else:
            byte(runtime_addr, 3)
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

def label_tube(base, name):
    optional_label(base + 0, "tube_%s_r1_status" % name)
    optional_label(base + 1, "tube_%s_r1_data" % name)
    optional_label(base + 2, "tube_%s_r2_status" % name)
    optional_label(base + 3, "tube_%s_r2_data" % name)
    optional_label(base + 4, "tube_%s_r3_status" % name)
    optional_label(base + 5, "tube_%s_r3_data" % name)
    optional_label(base + 6, "tube_%s_r4_status" % name)
    optional_label(base + 7, "tube_%s_r4_data" % name)

def hardware_bbc():
    optional_label(0xfe00, "crtc_address_register")
    optional_label(0xfe01, "crtc_address_write")

    optional_label(0xfe20, "video_ula_control")
    optional_label(0xfe21, "video_ula_palette")

    optional_label(0xfe30, "romsel")

    def label_via(base, name):
        optional_label(base +  0, name + "_via_orb_irb")
        optional_label(base +  1, name + "_via_ora_ira")
        optional_label(base +  2, name + "_via_ddrb")
        optional_label(base +  3, name + "_via_ddra")
        optional_label(base +  4, name + "_via_t1c_l")
        optional_label(base +  5, name + "_via_t1c_h")
        optional_label(base +  6, name + "_via_t1l_l")
        optional_label(base +  7, name + "_via_t1l_h")
        optional_label(base +  8, name + "_via_t2c_l")
        optional_label(base +  9, name + "_via_t2c_h")
        optional_label(base + 10, name + "_via_sr")
        optional_label(base + 11, name + "_via_acr")
        optional_label(base + 12, name + "_via_pcr")
        optional_label(base + 13, name + "_via_ifr")
        optional_label(base + 14, name + "_via_ier")
        optional_label(base + 15, name + "_via_ora_ira")
    label_via(0xfe40, "system")
    label_via(0xfe60, "user")

    label_tube(0xfee0, "host")

def hardware_b_plus():
    hardware_bbc()
    optional_label(0xfe34, "acccon")

def hardware_master():
    hardware_bbc()
    optional_label(0xfe34, "acccon")

def hardware_6502sp():
    label_tube(0xfef8, "parasite")

def bbc():
    mos_labels()
    hardware_bbc()

def b_plus():
    mos_labels()
    hardware_b_plus()

def master():
    mos_labels()
    hardware_master()

# TODO: Maybe have a "throw everything in" function for getting started quickly?
