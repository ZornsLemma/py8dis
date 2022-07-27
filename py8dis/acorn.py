from commands import *
import trace
import utils
import classification

def xy_addr(x_addr, y_addr):
    if x_addr is not None and y_addr is not None:
        assert isinstance(x_addr, memorymanager.BinaryAddr)
        assert isinstance(y_addr, memorymanager.BinaryAddr)
        label = get_label((memory_binary[y_addr] << 8) | memory_binary[x_addr], x_addr)

        classification.add_expression(x_addr, utils.LazyString("<(%s)", label))
        classification.add_expression(y_addr, utils.LazyString(">(%s)", label))

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

osword_descriptions = {
    0x00: "Read line from input stream",
    0x01: "Read system clock",
    0x02: "Write system clock",
    0x03: "Read interval timer",
    0x04: "Write interval timer",
    0x05: "Read byte of I/O processor memory",
    0x06: "Write byte of I/O processor memory",
    0x07: "SOUND command",
    0x08: "ENVELOPE command",
    0x09: "Read pixel value",
    0x0a: "Read character definition",
    0x0b: "Read palette",
    0x0c: "Write Palette",
    0x0d: "Read graphics cursor position",
    0x0e: "Read CMOS clock",
    0x0f: "Write CMOS clock",
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

paged_rom_reasons = {
    0: "Reason 0 - No operation",
    1: "Reason 1 - Absolute public workspace claim",
    2: "Reason 2 - Relative private workspace claim",
    3: "Reason 3 - Auto-boot call",
    4: "Reason 4 - Unrecognised *command",
    5: "Reason 5 - Unknown interrupt",
    6: "Reason 6 - BRK has been executed",
    7: "Reason 7 - Unrecognised OSBYTE call",
    8: "Reason 8 - Unrecognised OSWORD call",
    9: "Reason 9 - *HELP command interception",
    10: "Reason 10 - Claim absolute workspace",
    11: "Reason 11 - NMI released",
    12: "Reason 12 - NMI claim",
    13: "Reason 13 - ROM filing system initialise",
    14: "Reason 14 - ROM filing system get byte",
    15: "Reason 15 - Vectors claimed",
    16: "Reason 16 - Close any *SPOOL or *EXEC files",
    17: "Reason 17 - Font implosion/explosion warning",
    18: "Reason 18 - Initialise filing system",
    19: "Reason 19 - Character placed in RS423 buffer",
    20: "Reason 20 - Character placed in printer buffer",
    21: "Reason 21 - 100 Hz poll",
    22: "Reason 22 - A BEL request has been made",
    23: "Reason 23 - SOUND buffer purged",
    24: "Reason 24 - Interactive *HELP request",
    33: "Reason 33 - Claim absolute workspace in Hazel",
    34: "Reason 34 - Claim private workspace in Hazel",
    35: "Reason 35 - Report top of absolute workspace in Hazel",
    36: "Reason 36 - Request private workspace in Hazel",
    37: "Reason 37 - Return filing system information",
    38: "Reason 38 - *SHUT command issued",
    39: "Reason 39 - Reset call",
    40: "Reason 40 - Unknown *CONFIGURE command",
    41: "Reason 41 - Unknown *STATUS command",
    42: "Reason 42 - Language about to be initialised",
    43: "Reason 43 - Report memory size",
    44: "Reason 44 - Compact joystick call",
    254: "Reason 254 - Post initialisation Tube system call",
    255: "Reason 255 - Tube system main initialisation",
}

osfile_descriptions = {
    0: "Save a block of memory (returning file length and attributes)",
    1: "Write catalogue information for a named file",
    2: "Write load address for a named file",
    3: "Write execution address for a named file",
    4: "Write attributes for a named file",
    5: "Read catalogue information",
    6: "Delete named file (returning catalogue information)",
    7: "Create empty file of a defined size",
    255: "Load named file (if XY+6 contains 0, use specified address)"
}

negative_buffer_names = {
    255: "keyboard buffer",
    254: "RS423 input buffer",
    253: "RS423 output buffer",
    252: "printer buffer",
    251: "sound channel 0",
    250: "sound channel 1",
    249: "sound channel 2",
    248: "sound channel 3",
    247: "speech buffer"
}

negative_buffer_actions = {
    255: "Read number of characters in keyboard buffer",
    254: "Read number of characters in RS423 input buffer",
    253: "Read number of spaces remaining in RS423 output buffer",
    252: "Read number of spaces remaining in printer buffer",
    251: "Read number of spaces remaining in sound channel 0",
    250: "Read number of spaces remaining in sound channel 1",
    249: "Read number of spaces remaining in sound channel 2",
    248: "Read number of spaces remaining in sound channel 3",
    247: "Read number of spaces remaining in speech buffer"
}

event_names = {
    0: "Output buffer empty",
    1: "Input buffer full",
    2: "Character entering input buffer",
    3: "ADC conversion complete",
    4: "Start of vertical sync",
    5: "Interval timer crossing zero",
    6: "ESCAPE condition detected",
    7: "RS423 error event",
    8: "Network error event",
    9: "User event",
}

def enum_lookup(reg_addr, e):
    if reg_addr is None:
        return
    r = memorymanager.memory_binary[reg_addr]
    if r in e:
        constant(r, e[r])
        classification.add_expression(reg_addr, e[r])


def osfile_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    enum_lookup(a_addr, osfile_enum)
    xy_addr(x_addr, y_addr)

    if a_addr is None:
        return

    action = memory_binary[a_addr]

    if action in osfile_descriptions:
        comment(runtime_addr, osfile_descriptions[action], inline=True)

def osword_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    enum_lookup(a_addr, osword_enum)
    xy_addr(x_addr, y_addr)

    if a_addr is None:
        return

    action = memory_binary[a_addr]
    if action in osword_descriptions:
        com = osword_descriptions[action]
        comment(runtime_addr, com, inline=True)

def osbyte_rw(x_addr, y_addr):
    com = "Read/Write"
    write_value=None
    if y_addr is not None:
        if memory_binary[y_addr] == 0:
            com = "Write"
            if x_addr is not None:
                write_value = memory_binary[x_addr]
        elif x_addr is not None:
            if (memory_binary[x_addr] == 0) and (memory_binary[y_addr] == 255):
                com = "Read"

    return (com, write_value)

def format_osbyte_rw(x_addr, y_addr, comment_name):
    com, write_value = osbyte_rw(x_addr, y_addr)
    result = com + " " + comment_name
    if write_value != None:
        result += ", value " + str(write_value)

    return result

def key_name(key):
    if key in inkey_enum:
        return "'" + inkey_enum[key][10:].upper() + "'"
    return "unknown"


def osbyte_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    enum_lookup(a_addr, osbyte_enum)

    if a_addr is None:
        return

    action = memory_binary[a_addr]

    if action == 0x00:
        com = "Read OS version number"
        if x_addr is not None:
            if memory_binary[x_addr] == 0:
                com = "Execute BRK, print OS version"
            else:
                com = "Read OS version into X"
        comment(runtime_addr, com, inline=True)
    elif action == 0x04:
        com = "Enable/disable cursor editing"
        if x_addr is not None:
            if memory_binary[x_addr] == 0:
                com = "Enable cursor editing"
            elif memory_binary[x_addr] == 1:
                com = "Disable cursor editing (edit keys give ASCII 135-139)"
            elif memory_binary[x_addr] == 2:
                com = "Disable cursor editing (edit keys act as soft keys f11 to f15)"
            elif memory_binary[x_addr] == 3:
                com = "Cursor editing keys and COPY simulate a joystick (Master Compact only)"
        comment(runtime_addr, com, inline=True)
    elif action == 0x0d:
        com = "Disable event"
        if x_addr is not None:
            event_number = memory_binary[x_addr]
            if event_number in event_names:
                com = "Disable '" + event_names[event_number] + "' event"
        comment(runtime_addr, com, inline=True)
    elif action == 0x0e:
        com = "Enable event"
        if x_addr is not None:
            event_number = memory_binary[x_addr]
            if event_number in event_names:
                com = "Enable '" + event_names[event_number] + "' event"
        comment(runtime_addr, com, inline=True)
    elif action == 0x0f:
        com = "Flush selected buffer class"
        if x_addr is not None:
            if memory_binary[x_addr] == 0:
                com = "Flush all buffers"
            else:
                com = "Flush all input buffers"
        comment(runtime_addr, com, inline=True)
    elif action == 0x13:
        comment(runtime_addr, "Wait for vertical sync", inline=True)
    elif action == 0x14:
        com = "Explode character definition RAM"
        if x_addr is not None:
            exp = memory_binary[x_addr]
            if exp == 0:
                com = "Implode character definitions"
            elif exp == 1:
                com += " for characters 128-159"
            elif exp == 2:
                com += " for characters 128-191"
            elif exp == 3:
                com += " for characters 128-255"
            elif exp == 4:
                com += " for characters 128-255 and 32-63"
            elif exp == 5:
                com += " for characters 128-255 and 32-95"
            elif exp == 6:
                com += " for all characters 32-255"
        comment(runtime_addr, com, inline=True)
    elif action == 0x77:
        comment(runtime_addr, "Close any *SPOOL/*EXEC files", inline=True)
    elif action == 0x78:
        comment(runtime_addr, "Write current keys pressed", inline=True)
    elif action == 0x79:
        com = "Keyboard scan"
        if x_addr is not None:
            key = memory_binary[x_addr]
            if key >= 0x80:
                inkey_key = 255-(key ^ 0x80)
                com = "Keyboard scan for " + key_name(inkey_key) + " key"
            else:
                inkey_key = 255-key
                com = "Keyboard scan starting from " + key_name(inkey_key) + " key"
        comment(runtime_addr, com, inline=True)
    elif action == 0x7a:
        comment(runtime_addr, "Keyboard scan from key 16", inline=True)
    elif action == 0x7c:
        comment(runtime_addr, "Clear escape condition", inline=True)
    elif action == 0x7e:
        comment(runtime_addr, "Clear escape condition and perform escape effects", inline=True)
    elif action == 0x7f:
        comment(runtime_addr, "Check for EOF", inline=True)
        x_adjust_addr = state.get_previous_adjust('x')
        if x_adjust_addr is not None:
            x_adjust_runtime_addr = movemanager.b2r(x_adjust_addr)
            comment(x_adjust_runtime_addr, "X=File handle", inline=True)
    elif action == 0x80:
        com = "Read buffer status or ADC channel"
        if x_addr is not None:
            x_action = memory_binary[x_addr]
            if x_action == 0:
                com = "Read the channel number last used for an ADC conversion"
            elif x_action < 128:
                com = "Read the ADC conversion value for channel %d" % (x_action)
            elif x_action in negative_buffer_actions:
                com = negative_buffer_actions[x_action]
        comment(runtime_addr, com, inline=True)

    elif action == 0x81:
        enum_lookup(x_addr, inkey_enum)
        com = "Read key within time limit, or read a specific key, or read machine type"
        if y_addr is not None:
            if memory_binary[y_addr] >= 0x80:
                com = "Read a specific key (or read machine type)"
                if x_addr is not None:
                    key = memory_binary[x_addr]
                    if key == 0:
                        com = "Read the machine type"
                    else:
                        com = "Is " + key_name(key) + " key pressed?"
            else:
                com = "Wait for key press with a time limit"
                if x_addr is not None:
                    com += " of " + str(memory_binary[x_addr] + 256*memory_binary[y_addr]) + " centiseconds"

        comment(runtime_addr, com, inline=True)
    elif action == 0x82:
        comment(runtime_addr, "Read machine high order address", inline=True)
    elif action == 0x83:
        comment(runtime_addr, "Read top of operating system RAM address (OSHWM)", inline=True)
    elif action == 0x84:
        comment(runtime_addr, "Read top of user memory (HIMEM)", inline=True)
    elif action == 0x85:
        com = "Read top of user memory for a given screen mode"
        if x_addr is not None:
            mode = memory_binary[x_addr]
            com = "Read top of user memory for screen MODE %d" % (mode)
        comment(runtime_addr, com, inline=True)
    elif action == 0x86:
        comment(runtime_addr, "Read input cursor position (POS and VPOS)", inline=True)
    elif action == 0x8c:
        com = "Select TAPE filing system"
        if x_addr is not None:
            baud = memory_binary[x_addr]
            if baud == 3:
                com += " (300 baud)"
            else:
                com += " (1200 baud)"
        comment(runtime_addr, com, inline=True)
    elif action == 0x8e:
        comment(runtime_addr, "Enter language ROM", inline=True)
        x_adjust_addr = state.get_previous_adjust('x')
        if x_adjust_addr is not None:
            x_adjust_runtime_addr = movemanager.b2r(x_adjust_addr)
            comment(x_adjust_runtime_addr, "X=ROM number", inline=True)
    elif action == 0x8f:
        com = "Issue paged ROM service call"
        if x_addr is not None:
            reason = memory_binary[x_addr]
            if reason in paged_rom_reasons:
                com += ", " + paged_rom_reasons[reason]
        comment(runtime_addr, com, inline=True)
    elif action == 0x99:
        com = "Insert character into input buffer"
        if x_addr is not None:
            buffer = memory_binary[x_addr]
            if buffer == 0:
                com = "Insert character into keyboard buffer"
            elif buffer == 1:
                com = "Insert character into RS423 input buffer"
        if y_addr is not None:
            com = ", character " + str(memory_binary[y_addr])
        comment(runtime_addr, com, inline=True)
    elif action == 0xaa:
        com = format_osbyte_rw(x_addr, y_addr, "address of ROM info table")
        comment(runtime_addr, com, inline=True)
    elif action == 0xab:
        com = format_osbyte_rw(x_addr, y_addr, "address of ROM info table (high byte)")
        comment(runtime_addr, com, inline=True)
    elif action == 0xac:
        comment(runtime_addr, "Read keyboard translation table address", inline=True)
    elif action == 0xad:
        comment(runtime_addr, "Read keyboard translation table address (high byte)", inline=True)
    elif action == 0xb3:
        com = format_osbyte_rw(x_addr, y_addr, "Primary OSHWM (or for Master, the paged ROM 100Hz polling semaphore)")
        comment(runtime_addr, com, inline=True)
    elif action == 0xb4:
        com = format_osbyte_rw(x_addr, y_addr, "OSHWM")
        comment(runtime_addr, com, inline=True)
    elif action == 0xbb:
        com = format_osbyte_rw(x_addr, y_addr, "BASIC ROM number")
        comment(runtime_addr, com, inline=True)
    elif action == 0xc6:
        com = format_osbyte_rw(x_addr, y_addr, "*EXEC file handle")
        comment(runtime_addr, com, inline=True)
        x_adjust_addr = state.get_previous_adjust('x')
        if x_adjust_addr is not None:
            x_adjust_runtime_addr = movemanager.b2r(x_adjust_addr)
            comment(x_adjust_runtime_addr, "X=File handle", inline=True)
    elif action == 0xc7:
        com = format_osbyte_rw(x_addr, y_addr, "*SPOOL file handle")
        comment(runtime_addr, com, inline=True)
        x_adjust_addr = state.get_previous_adjust('x')
        if x_adjust_addr is not None:
            x_adjust_runtime_addr = movemanager.b2r(x_adjust_addr)
            comment(x_adjust_runtime_addr, "X=File handle", inline=True)
    elif action == 0xc8:
        com, write_value = osbyte_rw(x_addr, y_addr)
        result = com + " ESCAPE+BREAK effects"
        if write_value != None:
            if write_value & 1:
                result += ": disable ESCAPE, "
            else:
                result = ": normal ESCAPE action, "
            if (write_value & 0xfe) == 0:
                result += "normal BREAK action"
            else:
                result += "clear memory on BREAK"
        comment(runtime_addr, result, inline=True)
    elif action == 0xc9:
        com, write_value = osbyte_rw(x_addr, y_addr)
        result = com + " keyboard disable (for Econet)"
        if write_value != None:
            if write_value == 0:
                result = "Enable keyboard (for Econet)"
            else:
                result = "Disable keyboard (for Econet)"
        comment(runtime_addr, result, inline=True)
    elif action == 0xce:
        com = format_osbyte_rw(x_addr, y_addr, "OSBYTE and OSWORD call interception status")
        comment(runtime_addr, com, inline=True)
    elif action == 0xcf:
        com = format_osbyte_rw(x_addr, y_addr, "OSRDCH call interception status")
        comment(runtime_addr, com, inline=True)
    elif action == 0xd0:
        com = format_osbyte_rw(x_addr, y_addr, "OSWRCH call interception status")
        comment(runtime_addr, com, inline=True)
    elif (action == 0xd3) or (action == 0xd4) or (action == 0xd5) or (action == 0xd6):
        title = "CTRL G sound " + { 0xd3: "channel", 0xd4: "amplitude/envelope", 0xd5: "frequency", 0xd6: "duration"}[action]
        com = format_osbyte_rw(x_addr, y_addr, title)
        comment(runtime_addr, com, inline=True)
    elif action == 0xe5:
        com, write_value = osbyte_rw(x_addr, y_addr)
        if write_value == None:
            com += " ESCAPE key status"
        elif write_value == 0:
            com = "Set ESCAPE key status to normal action"
        else:
            com = "Set ESCAPE key status to produce ASCII code " + str(write_value)
        comment(runtime_addr, com, inline=True)
    elif action == 0xea:
        com = format_osbyte_rw(x_addr, y_addr, "Tube present flag")
        comment(runtime_addr, com, inline=True)
    elif action == 0xff:
        com = format_osbyte_rw(x_addr, y_addr, "start-up option byte")
        comment(runtime_addr, com, inline=True)


def oscli_hook(runtime_addr, state, subroutine):
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    xy_addr(x_addr, y_addr)

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

    subroutine(0xfff4, "osbyte", "OSBYTE", "A multi purpose operating system routine.", hook=osbyte_hook)
    subroutine(0xfff1, "osword", "OSWORD", "A multi purpose operating system routine.", hook=osword_hook)
    subroutine(0xffdd, "osfile", "OSFILE", "A multi purpose operating system routine.", hook=osfile_hook)
    subroutine(0xfff7, "oscli",  "OSCLI",  "A multi purpose operating system routine.", hook=oscli_hook)

    trace.substitute_constant_list.append(SubConst("sta crtc_address_register", 'a', crtc_registers_enum, True))
    trace.substitute_constant_list.append(SubConst("stx crtc_address_register", 'x', crtc_registers_enum, True))
    trace.substitute_constant_list.append(SubConst("sty crtc_address_register", 'y', crtc_registers_enum, True))

def is_sideways_rom():
    comment(0x8000, "Sideways ROM header")
    label(0x8000, "rom_header")
    def check_entry(runtime_addr, entry_type):
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        jmp_abs_opcode = 0x4c
        label(runtime_addr, entry_type + "_entry")
        if memory[runtime_addr] == jmp_abs_opcode:
            entry(runtime_addr)
            label(memorymanager.get_u16_runtime(runtime_addr + 1), entry_type + "_handler")
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
