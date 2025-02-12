"""
Acorn specific functions.
"""

from commands import *
import config
import trace
import utils
import classification

def xy_addr(x_addr, y_addr):
    """Given two binary addresses holding the low byte and high byte of an address,
    output expressions for each and return the address."""

    if x_addr is not None and y_addr is not None:
        assert isinstance(x_addr, memorymanager.BinaryAddr)
        assert isinstance(y_addr, memorymanager.BinaryAddr)
        if (memory_binary[x_addr] is None) or (memory_binary[y_addr] is None):
            return None
        label = get_label((memory_binary[y_addr] << 8) | memory_binary[x_addr], x_addr)
        x_runtime_addr = None if x_addr is None else movemanager.b2r(x_addr)
        y_runtime_addr = None if y_addr is None else movemanager.b2r(y_addr)

        if isinstance(disassembly.get_classification(x_addr), classification.Word) and (y_runtime_addr == (x_runtime_addr+1)):
            # If memory is classified as Word, we can have the expression be for the whole address
            auto_expr(x_runtime_addr, label)
        else:
            # If memory is classified as a byte or 'inside_a_classification' (e.g. an operand of an instruction) then code them as individual bytes
            if isinstance(disassembly.get_classification(x_addr), classification.Byte) or (disassembly.get_classification(x_addr) == disassembly.inside_a_classification):
                auto_expr(x_runtime_addr, make_lo(label))
            if isinstance(disassembly.get_classification(y_addr), classification.Byte) or (disassembly.get_classification(y_addr) == disassembly.inside_a_classification):
                auto_expr(y_runtime_addr, make_hi(label))

        return memorymanager.RuntimeAddr((memory_binary[y_addr] << 8) | memory_binary[x_addr])
    return None

# Acorn specific dictionaries
osfind_enum = {
      0: "osfind_close",
     64: "osfind_open_input",
    128: "osfind_open_output",
    192: "osfind_open_random_access",
}

osgbpb_enum = {
    0x01: "osgbpb_write_bytes",
    0x02: "osgbpb_append_bytes",
    0x03: "osgbpb_read_bytes_from_position",
    0x04: "osgbpb_read_bytes_from_current_position",
    0x05: "osgbpb_read_title_option_and_drive",
    0x06: "osgbpb_read_current_directory",
    0x07: "osgbpb_read_current_library",
    0x08: "osgbpb_read_file_names",
}

osgbpb_desc = {
    0x01: "write bytes to file at sequential file pointer specified",
    0x02: "append bytes to file at current file pointer",
    0x03: "read bytes from specified position in file",
    0x04: "read bytes from current position in file",
    0x05: "read title, option and drive to memory",
    0x06: "read current directory and drive names",
    0x07: "read current library and drive names",
    0x08: "read file names from the current directory",
}

osfile_enum = {
    0x00: "osfile_save",
    0x01: "osfile_write_catalogue_info",
    0x02: "osfile_write_load_addr",
    0x03: "osfile_write_exec_addr",
    0x04: "osfile_write_attributes",
    0x05: "osfile_read_catalogue_info",
    0x06: "osfile_delete",
    0x07: "osfile_create",
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
    0x00: "Read line from input stream (exits with C=1 if ESCAPE pressed)",
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
    0x0c: "Write palette",
    0x0d: "Read graphics cursor position",
    0x0e: "Read CMOS clock",
    0x0f: "Write CMOS clock",

    # Extra OSWORDs - see https://beebwiki.mdfs.net/OSWORDs
    0x10: "Network transmit",
    0x11: "Open or read network receive block",
    0x12: "Read argument block and restore protection mask NFS",
    0x13: "Read/Write NFS information",
    0x14: "Various NFS/Network functions",
    0x15: "Read/Write mouse and pointer infomation",
    0x16: "Set screen base start",
    0x18: "IP Network transmit",
    0x19: "IP Open or read network receive block",
    0x19: "Watford Electronics Speech control",
    0x20: "Acorn User Windowing System (depreciated)",
    0x20: "Transfer data between Tube and I/O",
    0x21: "Execute code in I/O processor",
    0x22: "Colin Dean Utility RAM - read memory",
    0x23: "Colin Dean Utility RAM - write memory",
    0x28: "EasyTalk speech ROM",
    0x29: "EasyTalk speech ROM",
    0x2A: "EasyTalk speech ROM",
    0x2B: "EasyTalk speech ROM",
    0x2C: "EasyTalk speech ROM",
    0x2D: "EasyTalk speech ROM",
    0x28: "Read PRISMA information table",
    0x29: "Read PRISMA pixel value",
    0x2A: "Read PRISMA logical screen size",
    0x2B: "Read PRISMA colour palette",
    0x2C: "Send VDU code direct to PRISMA",
    0x2D: "Read last two PRISMA graphics positions",
    0x2E: "Read PRISMA BASE screen visible origin",
    0x2F: "Read PRISMA graphics origin",
    0x30: "Read PRISMA interrupt status",
    0x31: "Direct call to PRISMA command",
    0x32: "Read position of PRISMA roller screen",
    0x33: "Read/write PRISMA non-volatitle memory",
    0x36: "Stop Press Routines",
    0x40: "Read mouse pointer and button state",
    0x41: "Miscellaneous graphics commands",
    0x42: "Sideways RAM transfer",
    0x43: "Load/Save into/from sideways RAM",
    0x44: "AMX Super Art ROM commands",
    0x45: "Move/Swap memory",
    0x45: "Digitise picture",
    0x46: "Allocated to BBC soft, probably unused",
    0x47: "Allocated to HowSoft, probable unused",
    0x47: "PrettyPrint",
    0x49: "Integra-B calls",
    0x4C: "Extended communications control",
    0x4E: "Initialise heap",
    0x4F: "Claim area from heap",
    0x50: "Release area to heap",
    0x50: "ADFS extension",
    0x50: "Read Real-Time Clock",
    0x51: "Get maximum heap block size",
    0x51: "Write Real-Time Clock",
    0x51: "HKSET Support",
    0x51: "TORCH",
    0x52: "Initialise file buffer",
    0x52: "TORCH",
    0x53: "Finish with file buffer",
    0x53: "TORCH",
    0x54: "Flush file buffer",
    0x55: "Get bytes from file buffer",
    0x56: "Put bytes to file buffer",
    0x57: "Create new binary tree node",
    0x58: "Insert node into binary tree",
    0x59: "Delete node from binary tree",
    0x5A: "Find node in binary tree",
    0x5A: "HADFS Sector read/write/access",
    0x5B: "Traverse binary tree",
    0x5C: "Balance binary tree",
    0x5D: "Parse option patterns",
    0x5E: "Get string with control character interpretation DVR",
    0x5F: "Read/write I/O memory across Tube",
    0x60: "Read Videodisk MSN and status byte",
    0x61: "Read free space on VFS disk",
    0x62: "Access LVROM controller",
    0x63: "Read last VFS error number",
    0x64: "Read current F-code",
    0x65: "WiFi control",
    0x6E: "Read byte from shadow RAM board",
    0x6F: "Write byte to shadow RAM board",
    0x70: "Read master sequence number and status byte",
    0x71: "Read free space on disc",
    0x72: "Read/Write MFM sectors",
    0x73: "Read information about last error",
    0x76: "RAMFS MFM sector access",
    0x77: "RAMFS FM sector access",
    0x7A: "Teletext commands",
    0x7B: "Modem commands",
    0x7B: "Move a block of memory",
    0x7C: "Multiple track single density FDC command",
    0x7D: "Read cycle number of disc",
    0x7E: "Read disc (or directory) size",
    0x7F: "Single track single density FDC command",
    0x80: "IEEE Command",
    0x80: "Springboard DOS INT",
    0x81: "Merlin M2100 Terminal control",
    0x82: "Cambridge Ring: Read/Write parameters",
    0x83: "Cambridge Ring: Data transmission",
    0x84: "Cambridge Ring: Ring polling",
    0x85: "Springboard",
    0x86: "Springboard",
    0x89: "Read teletext pixel",
    0x8A: "Set teletext pixel",
    0x8B: "Read soft teletext font",
    0x8C: "Write soft teletext font",
    0x90: "Acorn X25 Gateway",
    0x99: "BeebLink: perform request",
    0xA0: "Isolated word recogniser",
    0xB0: "GoMMC/GoSDC access & control",
    0xB2: "Advanced BASIC (BASIC V) support",
    0xB5: "PRES Editor and Utilities",
    0xBB: "Morley Electronics RAMdisc",
    0xBE: "Disassemble data",
    0xBF: "Fetch URI",
    0xC0: "Sockets and Resolver interface",
    0xC0: "Eureka memory control",
    0xC1: "Acorn User Windowing System",
    0xC8: "SWI Operation on Host ARM",
    0xFA: "Data transfer over Tube",
    0xFB: "WD1770/2 Floppy Disk Control",
    0xFC: "DOS CRTC Control",
    0xFE: "DOS Text output (unimplemented)",
    0xFE: "Z80 MFM disk access",
    0xFF: "DOS fast screen control",
    0xFF: "Z80 Data transfer over Tube",
}

osword_block_descriptions = {
    0x00: { 0: "Buffer address for input (2 bytes)",
            2: "Maximum line length",
            3: "Min. acceptable character value",
            4: "Max. acceptable character value" },
    0x01: { 0: "Five byte clock value (low byte to high byte)"},
    0x02: { 0: "Five byte clock value (low byte to high byte)"},
    0x03: { 0: "Five byte timer value (low byte to high byte)"},
    0x04: { 0: "Five byte timer value (low byte to high byte)"},
    0x05: { 0: "Four byte I/O processor address",
            4: "Byte read" },
    0x06: { 0: "Four byte I/O processor address",
            4: "Byte to write" },
    0x07: { 0: "Channel (2 bytes)",
            2: "Amplitude (2 bytes)",
            4: "Pitch (2 bytes)",
            6: "Duration (2 bytes)" },
    0x08: { 0: "Envelope Number (1-16) and rest of definition (14 bytes)" },
    0x09: { 0: "X coordinate (2 bytes)",
            2: "Y coordinate (2 bytes)",
            4: "Logical colour read" },
    0x0a: { 0: "character number required, followed by 8 bytes of character definition" },
    0x0b: { 0: "logical colour",
            1: "physical colour",
            2: "zero",
            3: "zero",
            4: "zero"},
    0x0c: { 0: "logical colour",
            1: "physical colour",
            2: "zero",
            3: "zero",
            4: "zero" },
    0x0d: { 0: "Previous graphics X coordinate (2 bytes)",
            2: "Previous graphics Y coordinate (2 bytes)",
            4: "Current graphics X coordinate (2 bytes)",
            6: "Current graphics Y coordinate (2 bytes)" },
    0x0e: {0: "read clock time format (0,1,2)" },
    0x0f: {0: "write clock time format (8,15,24)" },
}

osbyte_enum = {
    0x00: "osbyte_read_os_version",
    0x01: "osbyte_set_user_flag",
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
    0x16: "osbyte_increment_polling_semaphore",
    0x17: "osbyte_decrement_polling_semaphore",
    0x18: "osbyte_electron_external_sound",
    0x19: "osbyte_restore_group_of_font_definitions",
    0x44: "osbyte_test_for_sideways_ram",
    0x45: "osbyte_get_sideways_ram_allocation",
    0x6B: "osbyte_selects_internal_or_external_bus",
    0x6C: "osbyte_select_screen_memory_for_direct_access",
    0x6d: "osbyte_make_temporary_filing_system_permanent",
    0x70: "osbyte_select_main_or_shadow_memory_for_vdu_access",
    0x71: "osbyte_select_main_or_shadow_memory_for_display",
    0x72: "osbyte_write_shadow_memory_use",
    0x73: "osbyte_blank_or_restore_palette",
    0x74: "osbyte_reset_electron_sound_system",
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
    0xa1: "osbyte_read_cmos_ram",
    0xa2: "osbyte_write_cmos_ram",
    0xa3: "osbyte_reserved_for_application_software",
    0xa4: "osbyte_check_for_6502_code",
    0xa5: "osbyte_read_output_cursor_position",
    0xa6: "osbyte_read_os_variables_low",
    0xa7: "osbyte_read_os_variables_high",
    0xa8: "osbyte_read_rom_ptr_table_low",
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
    0xba: "osbyte_read_write_rom_bank_at_last_brk",
    0xbb: "osbyte_read_write_basic_rom_bank",
    0xbc: "osbyte_read_current_adc_channel",
    0xbd: "osbyte_read_write_max_adc_channel",
    0xbe: "osbyte_read_write_adc_conversion_type",
    0xbf: "osbyte_read_write_serial_user_flag",
    0xc0: "osbyte_read_serial_control_register_copy",
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
    0xdd: "osbyte_read_write_characters_c0_cf_status",
    0xde: "osbyte_read_write_characters_d0_df_status",
    0xdf: "osbyte_read_write_characters_e0_ef_status",
    0xe0: "osbyte_read_write_characters_f0_ff_status",
    0xe1: "osbyte_read_write_function_key_status",
    0xe2: "osbyte_read_write_shift_function_key_status",
    0xe3: "osbyte_read_write_ctrl_function_key_status",
    0xe4: "osbyte_read_write_ctrl_shift_function_key_status",
    0xe5: "osbyte_read_write_escape_status",
    0xe6: "osbyte_read_write_escape_effects",
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
    0xf5: "osbyte_read_write_printer_destination",
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

# Extra OSBYTES - see https://beebwiki.mdfs.net/OSBYTEs
osbyte_extra_descriptions = {
    0x1A: "Handset detection (Communicator); BASIC Editor toggle configuration",
    0x1E: "Enable SLAVE ROM commands",
    0x20: "Watford32K - Read top of memory",
    0x21: "Watford32K - Read top of memory for mode",
    0x22: "Watford32K - Read/Write RAM switch",
    0x23: "Watford32K - Read workspace address",
    0x24: "Watford32K - Read/Write RAM buffer bank",
    0x28: "EasyTalk speech ROM",
    0x29: "EasyTalk speech ROM",
    0x2A: "EasyTalk speech ROM",
    0x2B: "EasyTalk speech ROM",
    0x2C: "EasyTalk speech ROM",
    0x2D: "EasyTalk speech ROM",
    0x32: "NetFS - Poll transmit",
    0x33: "NetFS - Poll receive",
    0x34: "NetFS - Delete receive block, enable/disable events on reception",
    0x35: "NetFS - Disconnect REMOTE",
    0x3F: "ZNOS CP/M - Reload CCP and BDOS",
    0x40: "Merlin: Read modem handshake",
    0x41: "Merlin: Select RAM page",
    0x42: "Merlin: Enable/disable paged RAM",
    0x43: "ParaMax - Enter CNC control program",
    0x46: "Read/write country number",
    0x47: "Read/write alphabet or keyboard number",
    0x49: "Integra-B calls",
    0x5A: "Find/set ROM status or Enable/disable PRES ADFS",
    0x60: "Terminal Emulator flow control",
    0x61: "HKSET Page timeout monitor",
    0x62: "HKSET Poll received page status",
    0x64: "Enter SPY debugger",
    0x6A: "Select pointer/activate mouse",
    0x6E: "Write to ROMSTROBE (or Early Watford DFS: Control drive double-stepping, superceeded by *OPT40, *OPT80)",
    0x6F: "Read/Write shadow RAM switch",
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
    0: "Reason X=0 - No operation",
    1: "Reason X=1 - Absolute public workspace claim",
    2: "Reason X=2 - Relative private workspace claim",
    3: "Reason X=3 - Auto-boot call",
    4: "Reason X=4 - Unrecognised *command",
    5: "Reason X=5 - Unknown interrupt",
    6: "Reason X=6 - BRK has been executed",
    7: "Reason X=7 - Unrecognised OSBYTE call",
    8: "Reason X=8 - Unrecognised OSWORD call",
    9: "Reason X=9 - *HELP command interception",
    10: "Reason X=10 - Claim absolute workspace",
    11: "Reason X=11 - NMI released",
    12: "Reason X=12 - NMI claim",
    13: "Reason X=13 - ROM filing system initialise",
    14: "Reason X=14 - ROM filing system get byte",
    15: "Reason X=15 - Vectors claimed",
    16: "Reason X=16 - Close any *SPOOL or *EXEC files",
    17: "Reason X=17 - Font implosion/explosion warning",
    18: "Reason X=18 - Initialise filing system",
    19: "Reason X=19 - Character placed in RS423 buffer",
    20: "Reason X=20 - Character placed in printer buffer",
    21: "Reason X=21 - 100 Hz poll",
    22: "Reason X=22 - A BEL request has been made",
    23: "Reason X=23 - SOUND buffer purged",
    24: "Reason X=24 - Interactive *HELP request",
    33: "Reason X=33 - Claim absolute workspace in Hazel",
    34: "Reason X=34 - Claim private workspace in Hazel",
    35: "Reason X=35 - Report top of absolute workspace in Hazel",
    36: "Reason X=36 - Request private workspace in Hazel",
    37: "Reason X=37 - Return filing system information",
    38: "Reason X=38 - *SHUT command issued",
    39: "Reason X=39 - Reset call",
    40: "Reason X=40 - Unknown *CONFIGURE command",
    41: "Reason X=41 - Unknown *STATUS command",
    42: "Reason X=42 - Language about to be initialised",
    43: "Reason X=43 - Report memory size",
    44: "Reason X=44 - Compact joystick call",
    254: "Reason X=254 - Post initialisation Tube system call",
    255: "Reason X=255 - Tube system main initialisation",
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

buffer_names = {
    0: "the keyboard buffer",
    1: "the RS423 input buffer",
    2: "the RS423 output buffer",
    3: "the printer buffer",
    4: "sound channel 0",
    5: "sound channel 1",
    6: "sound channel 2",
    7: "sound channel 3",
    8: "the speech buffer"
}

buffer_enum = {
    0: "buffer_keyboard",
    1: "buffer_rs423_input",
    2: "buffer_rs423_output",
    3: "buffer_printer",
    4: "buffer_sound_channel_0",
    5: "buffer_sound_channel_1",
    6: "buffer_sound_channel_2",
    7: "buffer_sound_channel_3",
    8: "buffer_speech"
}

negative_buffer_actions = {
    255: "Read number of characters in keyboard buffer (X=255)",
    254: "Read number of characters in RS423 input buffer (X=254)",
    253: "Read number of spaces remaining in RS423 output buffer (X=253)",
    252: "Read number of spaces remaining in printer buffer (X=252)",
    251: "Read number of spaces remaining in sound channel 0 (X=251)",
    250: "Read number of spaces remaining in sound channel 1 (X=250)",
    249: "Read number of spaces remaining in sound channel 2 (X=249)",
    248: "Read number of spaces remaining in sound channel 3 (X=248)",
    247: "Read number of spaces remaining in speech buffer (X=247)"
}

event_names = {
    0: "Output buffer empty",
    1: "Input buffer full",
    2: "Character entering input buffer",
    3: "ADC conversion complete",
    4: "Start of vertical sync",
    5: "Interval timer crossing zero",
    6: "ESCAPE condition detected",
    7: "RS423 error",
    8: "Network error",
    9: "User",
}

event_enum = {
    0: "event_output_buffer_empty",
    1: "event_input_buffer_full",
    2: "event_character_entering_input_buffer",
    3: "event_adc_conversion_complete",
    4: "event_start_of_vertical_sync",
    5: "event_interval_timer_crossing_zero",
    6: "event_escape_condition_detected",
    7: "event_rs423_error",
    8: "event_network_error",
    9: "event_user",
}

baud_rates = {
    0: "default 9600 baud",
    1: "75 baud",
    2: "150 baud",
    3: "300 baud",
    4: "1200 baud",
    5: "2400 baud",
    6: "4800 baud",
    7: "9600 baud",
    8: "19200 baud",
}

baud_rate_enum = {
    0: "baud_rate_default_9600",
    1: "baud_rate_75",
    2: "baud_rate_150",
    3: "baud_rate_300",
    4: "baud_rate_1200",
    5: "baud_rate_2400",
    6: "baud_rate_4800",
    7: "baud_rate_9600",
    8: "baud_rate_19200",
}

opt_descriptions = {
    "1,0": "no messages issued",
    "1,1": "short messages issued",
    "1,2": "detailed messages issued",
    "2,0": "if TAPE: ignore errors",
    "2,1": "if TAPE: on error, prompt to rewind cassette",
    "2,2": "if TAPE: abort on error",
    "4,0": "set disk to disable the auto-start facility",
    "4,1": "set disk to *LOAD the !BOOT file on auto-start",
    "4,2": "set disk to *RUN the !BOOT file on auto-start",
    "4,3": "set disk to *EXEC the !BOOT file on auto-start",
}

read_or_write_memory_mapped_device = {
    0x92: "Read from FRED",
    0x93: "Write to FRED",
    0x94: "Read from JIM",
    0x95: "Write to JIM",
    0x96: "Read from SHEILA",
    0x97: "Write to SHEILA",
}

read_or_write_memory_mapped_address = {
    0x92: 0xfc00,
    0x93: 0xfc00,
    0x94: 0xfd00,
    0x95: 0xfd00,
    0x96: 0xfe00,
    0x97: 0xfe00,
}

vdu_variables = {
    0x00: "graphics window left coordinate in pixels",
    0x01: "graphics window left coordinate in pixels (high byte)",
    0x02: "graphics window bottom coordinate in pixels",
    0x03: "graphics window bottom coordinate in pixels (high byte)",
    0x04: "graphics window right coordinate in pixels",
    0x05: "graphics window right coordinate in pixels (high byte)",
    0x06: "graphics window top coordinate in pixels",
    0x07: "graphics window top coordinate in pixels (high byte)",
    0x08: "text window left position",
    0x09: "text window bottom position",
    0x0a: "text window right position",
    0x0b: "text window top position",
    0x0c: "graphics window origin X",
    0x0d: "graphics window origin X (high byte)",
    0x0e: "graphics window origin Y",
    0x0f: "graphics window origin Y (high byte)",
    0x10: "graphics cursor X coordinate",
    0x11: "graphics cursor X coordinate (high byte)",
    0x12: "graphics cursor Y coordinate",
    0x13: "graphics cursor Y coordinate (high byte)",
    0x14: "old graphics cursor X coordinate in pixels",
    0x15: "old graphics cursor X coordinate in pixels (high byte)",
    0x16: "old graphics cursor Y coordinate in pixels",
    0x17: "old graphics cursor Y coordinate in pixels (high byte)",
    0x18: "text cursor X position",
    0x19: "text cursor Y position",
    0x1a: "graphics cursor vertical offset in character cell",
    0x1b: "VDU queue start byte",
    0x1c: "VDU queue byte 1",
    0x1d: "VDU queue byte 2",
    0x1e: "VDU queue byte 3",
    0x1f: "VDU queue byte 4",
    0x20: "VDU queue byte 5",
    0x21: "VDU queue byte 6",
    0x22: "VDU queue byte 7",
    0x23: "VDU queue end byte",
    0x24: "graphics cursor X coordinate in pixels",
    0x25: "graphics cursor X coordinate in pixels (high byte)",
    0x26: "graphics cursor Y coordinate in pixels",
    0x27: "graphics cursor Y coordinate in pixels (high byte)",
    0x28: "workspace A",
    0x29: "workspace B",
    0x2a: "workspace C",
    0x2b: "workspace D",
    0x2c: "workspace E",
    0x2d: "workspace F",
    0x2e: "workspace G",
    0x2f: "workspace H",
    0x30: "workspace I",
    0x31: "workspace J",
    0x32: "workspace K",
    0x33: "workspace L",
    0x34: "workspace M",
    0x35: "workspace N",
    0x36: "workspace O",
    0x37: "workspace P",
    0x38: "workspace Q",
    0x39: "workspace R",
    0x3a: "workspace S",
    0x3b: "workspace T",
    0x3c: "workspace U",
    0x3d: "workspace V",
    0x3e: "plot triangle storage area holding the original X coordinate",
    0x3f: "plot triangle storage area holding the original X coordinate (high byte)",
    0x40: "plot triangle storage area holding the original Y coordinate",
    0x41: "plot triangle storage area holding the original Y coordinate (high byte)",
    0x42: "plot triangle storage area holding the original graphics cursor X coordinate",
    0x43: "plot triangle storage area holding the original graphics cursor X coordinate (high byte)",
    0x44: "plot triangle storage area holding the original graphics cursor Y coordinate",
    0x45: "plot triangle storage area holding the original graphics cursor Y coordinate (high byte)",
    0x46: "unused byte",
    0x47: "unused byte",
    0x48: "unused byte",
    0x49: "unused byte",
    0x4a: "text cursor CRTC address",
    0x4b: "text cursor CRTC address (high byte)",
    0x4c: "text window width in bytes",
    0x4d: "text window width in bytes (high byte)",
    0x4e: "start screen address high byte",
    0x4f: "bytes per character",
    0x50: "screen top left address",
    0x51: "screen top left address (high byte)",
    0x52: "bytes per character row",
    0x53: "bytes per character row (high byte)",
    0x54: "screen size high byte",
    0x55: "current screen MODE",
    0x56: "current screen MODE group",
    0x57: "foreground text colour",
    0x58: "background text colour",
    0x59: "foreground graphics colour",
    0x5a: "background graphics colour",
    0x5b: "foreground GCOL mode",
    0x5c: "background GCOL mode",
    0x5d: "jump vector",
    0x5e: "jump vector (high byte)",
    0x5f: "last cursor start register value",
    0x60: "number of logical colours minus one",
    0x61: "pixels per byte minus one",
    0x62: "colour mask left",
    0x63: "colour mask right",
    0x64: "text input cursor X coordinate",
    0x65: "text input cursor Y coordinate",
    0x66: "teletext character for cursor (or Master: VDU 23,16 setting)",
    0x67: "character explosion font flags (or Master: VDU 23,6 setting, dot pattern)",
    0x68: "font zone addresses high 1 (or Master: current state of dot pattern)",
    0x69: "font zone addresses high 2 (or Master: colour plotting, ECF pattern number or zero)",
    0x6a: "font zone addresses high 3 (or Master: graphics foreground, ECF number or zero)",
    0x6b: "font zone addresses high 4 (or Master: graphics background, ECF number or zero)",
    0x6c: "font zone addresses high 5 (or Master: Bit 7 - flag for cursor in column 81)",
    0x6d: "font zone addresses high 6 (or Master: GCOL setting of graphics foreground colour)",
    0x6e: "font zone addresses high 7 (or Master: GCOL setting of graphics background colour)",
    0x6f: "physical colour for logical colour 0",
    0x70: "physical colour for logical colour 1",
    0x71: "physical colour for logical colour 2",
    0x72: "physical colour for logical colour 3",
    0x73: "physical colour for logical colour 4",
    0x74: "physical colour for logical colour 5",
    0x75: "physical colour for logical colour 6",
    0x76: "physical colour for logical colour 7",
    0x77: "physical colour for logical colour 8",
    0x78: "physical colour for logical colour 9",
    0x79: "physical colour for logical colour 10",
    0x7a: "physical colour for logical colour 11",
    0x7b: "physical colour for logical colour 12",
    0x7c: "physical colour for logical colour 13",
    0x7d: "physical colour for logical colour 14",
    0x7e: "physical colour for logical colour 15",
    0x7f: "unused byte",
}

font_definitions = { 0: "Restore all character font definitions 32-255 (X=0)",
                     1: "Restore character font definitions 32-63 (X=1)",
                     2: "Restore character font definitions 64-95 (X=2)",
                     3: "Restore character font definitions 96-127 (X=3)",
                     4: "Restore character font definitions 128-159 (X=4)",
                     5: "Restore character font definitions 160-191 (X=5)",
                     6: "Restore character font definitions 192-223 (X=6)",
                     7: "Restore character font definitions 224-255 (X=7)" }


cmos_ram = {
    0: "Econet station number",
    1: "File server station number",
    2: "File server network number",
    3: "Printer server station number",
    4: "Printer server network number",
    5: "Default filing system/ROM number",
    6: "ROMs 0-7 (1=inserted; 0=unplugged)",
    7: "ROMs 8-15 (1=inserted; 0=unplugged)",
    8: "Allocated to EDIT ROM",
    9: "Reserved for telecommunications applications",
    10: "Default screen mode, interlace, *TV settings",
    11: "Default FDRIVE; default CAPS; load DIR at switch on; floppy/hard disc",
    12: "Keybaord auto-repeat delay",
    13: "Keybaord auto-repeat rate",
    14: "Printer ignore character",
    15: "Default tube select/printer ignore character/serial baud rate/FX5 setting",
    16: "Default beep loudness; internal/external TUBE/scrolling flag/boot mode/serial data format",
    17: "ANFS settings",
    18: "Master Compact joystick settings",
    19: "Reserved",
    20: "Reserved for new Acorn firmware/filing systems #0",
    21: "Reserved for new Acorn firmware/filing systems #1",
    22: "Reserved for new Acorn firmware/filing systems #2",
    23: "Reserved for new Acorn firmware/filing systems #3",
    24: "Reserved for new Acorn firmware/filing systems #4",
    25: "Reserved for new Acorn firmware/filing systems #5",
    26: "Reserved for new Acorn firmware/filing systems #6",
    27: "Reserved for new Acorn firmware/filing systems #7",
    28: "Reserved for new Acorn firmware/filing systems #8",
    29: "Reserved for new Acorn firmware/filing systems #9",
    30: "Allocated to ROM 0",
    31: "Allocated to ROM 1",
    32: "Allocated to ROM 2",
    33: "Allocated to ROM 3",
    34: "Allocated to ROM 4",
    35: "Allocated to ROM 5",
    36: "Allocated to ROM 6",
    37: "Allocated to ROM 7",
    38: "Allocated to ROM 8",
    39: "Allocated to ROM 9",
    40: "Allocated to ROM 10",
    41: "Allocated to ROM 11",
    42: "Allocated to ROM 12",
    43: "Allocated to ROM 13",
    44: "Allocated to ROM 14",
    45: "Allocated to ROM 15",
    46: "Allocated for user applications #0",
    47: "Allocated for user applications #1",
    48: "Allocated for user applications #2",
    49: "Allocated for user applications #3",
}

os_variable_names = {
    0xa6: "address of OS variables",
    0xa7: "address of OS variables (high byte)",
    0xa8: "address of ROM pointer table",
    0xa9: "address of ROM pointer table (high byte)",
    0xaa: "address of ROM info table",
    0xab: "address of ROM info table (high byte)",
    0xac: "keyboard translation table address",
    0xad: "keyboard translation table address (high byte)",
    0xae: "address of VDU variables",
    0xaf: "address of VDU variables (high byte)",
    0xb0: "CFS timeout counter in 50ths of a second",
    0xb1: "input source flag (0=keyboard buffer, 1=RS423 input buffer)",
    0xb2: "keyboard semaphore (0=keyboard interrupts are ignored, 255=interrupts enabled)",
    0xb3: "Primary OSHWM (or for Master, the paged ROM 100Hz polling semaphore)",
    0xb4: "OSHWM",
    0xb5: "RS423 mode (0 or 1)",
    0xb6: "character explosion state",
    0xb7: "CFS/RFS switch (0=CFS, 2=RFS)",
    0xb8: "OS copies of video ULA control register",
    0xb9: "OS copies of video ULA palette register",
    0xba: "ROM number active at last BRK",
    0xbb: "BASIC ROM number",
    0xbc: "current ADC channel",
    0xbd: "maximum ADC channel number",
    0xbe: "ADC conversion type",
    0xbf: "RS423 use flag",
    0xc0: "OS copy of 6850 (ACIA) control register",
    0xc1: "flash counter in fiftieths of a second",
    0xc2: "flashing colour mark duration in fiftieths of a second",
    0xc3: "flashing colour space duration in fiftieths of a second",
    0xc4: "keyboard auto-repeat delay in centiseconds",
    0xc5: "keyboard auto-repeat period in centiseconds",
    0xc6: "*EXEC file handle",
    0xc7: "*SPOOL file handle",
    0xc8: "ESCAPE+BREAK effects",
    0xc9: "keyboard disable (for Econet)",
    0xca: "keyboard status byte",
    0xcb: "RS423 handshake level (or Electron: ULA IRQ mask)",
    0xcc: "RS423 input suppression flag (or Electron: firm key pointer)",
    0xcd: "RS423/cassette flag (or Electron: length of firm key string)",
    0xce: "OSBYTE and OSWORD call interception status",
    0xcf: "OSRDCH call interception status",
    0xd0: "OSWRCH call interception status",
    0xd1: "speech suppression",
    0xd2: "sound suppression (anything non-zero supresses sound)",
    0xd3: "CTRL G channel",
    0xd4: "CTRL G amplitude/envelope",
    0xd5: "CTRL G frequency",
    0xd6: "CTRL G duration",
    0xd7: "message suppression",
    0xd8: "length of soft key string",
    0xd9: "lines since last page halt",
    0xda: "VDU queue",
    0xdb: "TAB key character",
    0xdc: "ESCAPE character",
    0xdd: "character status flag ($c0-$cf)",
    0xde: "character status flag ($d0-$df)",
    0xdf: "character status flag ($e0-$ef)",
    0xe0: "character status flag ($f0-$ff)",
    0xe1: "function key status",
    0xe2: "SHIFT+function keys status",
    0xe3: "CTRL+function keys status",
    0xe4: "CTRL+SHIFT+function keys status",
    0xe5: "ESCAPE key status",
    0xe6: "ESCAPE effects",
    0xe7: "User 6522 IRQ bit mask",
    0xe8: "6850 IRQ bit mask",
    0xe9: "System 6522 IRQ bit mask",
    0xea: "Tube present flag",
    0xeb: "Test presence of speech processor",
    0xec: "output stream flag",
    0xed: "cursor editing status",
    0xee: "Master only: Set base for numeric keypad",
    0xef: "flag that stores the value of OSBYTE 114 (shadow memory use)",
    0xf0: "country code (0=UK; 1=US)",
    0xf1: "user flag byte",
    0xf2: "OS copy of serial ULA register",
    0xf3: "timer state switch",
    0xf4: "soft key consistency flag",
    0xf5: "printer destination",
    0xf6: "printer ignore character",
    0xf7: "reset intercept code (opcode)",
    0xf8: "reset intercept code (operand low)",
    0xf9: "reset intercept code (operand high)",
    0xfa: "flag used by OSBYTE 112",
    0xfb: "flag that stores the value of OSBYTE 113 (main/shadow memory for display)",
    0xfc: "current language ROM number",
    0xfd: "type of last reset",
    0xfe: "RAM size (or Master only: shift key effect)",
    0xff: "start-up option byte",
}

def enum_lookup(reg_binary_addr, e, comment=None):
    """Given a binary_addr and a dictionary, read the byte at the address and look
    it up in the dictionary and use the result to create a constant and use it as
    an expression.
    """

    if reg_binary_addr is None:
        return None
    r = memorymanager.memory_binary[reg_binary_addr]
    if r in e:
        constant(r, e[r])
        runtime_addr = movemanager.b2r(reg_binary_addr)
        auto_expr(runtime_addr, e[r])
    if comment is not None:
        auto_comment(r, comment)
    return r

def oswrsc_hook(runtime_addr, state, subroutine):
    a_adjust_addr = state.get_previous_adjust('a')
    a_runtime_adjust = None if a_adjust_addr is None else movemanager.b2r(a_adjust_addr)
    y_adjust_addr = state.get_previous_adjust('y')
    y_runtime_adjust = None if y_adjust_addr is None else movemanager.b2r(y_adjust_addr)

    auto_comment(a_runtime_adjust, "A=value to be written", inline=True)
    auto_comment(y_runtime_adjust, "Y=offset from base address", inline=True)
    auto_comment(runtime_addr, "Write byte to screen", inline=True)

def osrdsc_hook(runtime_addr, state, subroutine):
    y_adjust_addr = state.get_previous_adjust('y')
    y_runtime_adjust = None if y_adjust_addr is None else movemanager.b2r(y_adjust_addr)
    auto_comment(y_runtime_adjust, "Y=ROM number", inline=True)

    # Post-exit
    a_runtime_next_use = None if state.next_use['a'] is None else movemanager.b2r(state.next_use['a'])
    auto_comment(a_runtime_next_use, "A=byte read", inline=True)
    auto_comment(runtime_addr, "Read byte from ROM Y or screen", inline=True)

def oseven_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    y_addr = state.get_previous_load_imm('y')

    if y_addr is None:
        auto_comment(runtime_addr, "Generate event Y", inline=True)
        return

    event_number = memory_binary[y_addr]
    enum_lookup(y_addr, event_enum, "Y=event number")
    if event_number in event_names:
        com = "Generate event Y='" + event_names[event_number] + "'"
    else:
        com = "Generate an unknown event Y"
    auto_comment(runtime_addr, com, inline=True)

def osfind_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')

    enum_lookup(a_addr, osfind_enum)

    com = "Open or close file(s)"
    if a_addr is not None:
        action = memory_binary[a_addr]
        if action == 0:
            com = "Close one or all files"
            if y_addr is not None:
                com = "Close file Y"
                y = memory_binary[y_addr]
                if y == 0:
                    com = "Close all files (Y=0)"
        elif action == 64:
            com = "Open file for input (A=64)"
        elif action == 128:
            com = "Open file for output (A=128)"
        elif action == 192:
            com = "Open file for random access (A=192)"

        if action != 0:
            xy_addr(x_addr, y_addr)

            # Post-exit
            a_runtime_next_use = None if state.next_use['a'] is None else movemanager.b2r(state.next_use['a'])
            auto_comment(a_runtime_next_use, "A=file handle (or zero on failure)", inline=True)

    auto_comment(runtime_addr, com, inline=True)

def osrdch_hook(runtime_addr, state, subroutine):
    auto_comment(runtime_addr, "Read a character from the current input stream", inline=True)

    # Post-exit
    a_runtime_next_use = None if state.next_use['a'] is None else movemanager.b2r(state.next_use['a'])
    auto_comment(a_runtime_next_use, "A=character read", inline=True)

def osgbpb_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    action = enum_lookup(a_addr, osgbpb_enum)
    block_addr = xy_addr(x_addr, y_addr)

    if block_addr is not None:
        if action == 8:
            auto_comment(block_addr, "osgbpb block: disc cycle number", inline=True)
            auto_comment(memorymanager.RuntimeAddr(block_addr + 1), "address for returned data (4 bytes)", inline=True)
            auto_comment(memorymanager.RuntimeAddr(block_addr + 5), "number of filenames (4 bytes)", inline=True)
        else:
            auto_comment(block_addr, "osgbpb block: file handle", inline=True)
            auto_comment(memorymanager.RuntimeAddr(block_addr + 1), "start address of data (4 bytes)", inline=True)
            auto_comment(memorymanager.RuntimeAddr(block_addr + 5), "number of bytes to transfer (4 bytes)", inline=True)
        auto_comment(memorymanager.RuntimeAddr(block_addr + 9), "sequential pointer value to be used (4 bytes)", inline=True)


    if action in osgbpb_desc:
        auto_comment(runtime_addr, osgbpb_desc[action] + " (A=%d)" % action, inline=True)
    elif action is not None:
        auto_comment(runtime_addr, "unknown OSGBPB call, (A=%d)" % action, inline=True)
    else:
        auto_comment(runtime_addr, "Read or write multiple bytes to an open file", inline=True)

def osbput_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    y_addr = state.get_previous_adjust('y')
    y_runtime_addr = None if y_addr is None else movemanager.b2r(y_addr)

    if a_addr is not None:
        reg = "A=" + str(memory_binary[a_addr])
    else:
        reg = "A"

    com = "Write a single byte %s to an open file Y" % reg
    auto_comment(runtime_addr, com, inline=True)
    auto_comment(y_runtime_addr, "Y=file handle", inline=True)

def osbget_hook(runtime_addr, state, subroutine):
    y_addr = state.get_previous_adjust('y')
    y_runtime_addr = None if y_addr is None else movemanager.b2r(y_addr)

    auto_comment(runtime_addr, "Read a single byte from an open file Y", inline=True)
    auto_comment(y_runtime_addr, "Y=file handle", inline=True)

def osargs_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    x_adjust_addr = state.get_previous_adjust('x')
    y_adjust_addr = state.get_previous_adjust('y')

    # Runtime equivalents
    x_runtime_adjust_addr = None if x_adjust_addr is None else movemanager.b2r(x_adjust_addr)
    y_runtime_adjust_addr = None if y_adjust_addr is None else movemanager.b2r(y_adjust_addr)

    a_next_use = state.next_use['a']
    # Equivalent runtime addresses
    a_runtime_next_use = None if a_next_use is None else movemanager.b2r(a_next_use)

    a = None if a_addr is None else memory_binary[a_addr]
    x = None if x_addr is None else memory_binary[x_addr]
    y = None if y_addr is None else memory_binary[y_addr]

    if (a == 0) and (y == 0):
        auto_comment(runtime_addr, "Get filing system number (A=0, Y=0)", inline=True)
        auto_comment(a_runtime_next_use, "A=filing system number", inline=True)
        auto_comment(a_runtime_next_use,
"""A is the filing system number:
    A=0, no filing system selected
    A=1, 1200 baud CFS
    A=2, 300 baud CFS
    A=3, ROM filing system
    A=4, Disc filing system
    A=5, Network filing system
    A=6, Teletext filing system
    A=7, IEEE filing system
    A=8, ADFS
    A=9, Host filing system
    A=10, Videodisc filing system""", indent=1)

    elif a == 0:
        auto_comment(x_runtime_adjust_addr, "X=zero page address for result", inline=True)
        auto_comment(y_runtime_adjust_addr, "Y=file handle", inline=True)

        auto_comment(runtime_addr, "Get sequential file pointer into zero page address X (A=0)", inline=True)
    elif (a == 1) and (y == 0):
        auto_comment(x_runtime_adjust_addr, "X=zero page address for result", inline=True)

        auto_comment(runtime_addr, "Get address of remaining command line into zero page address X (A=1, Y=0)", inline=True)
    elif a == 1:
        auto_comment(x_runtime_adjust_addr, "X=zero page address to write from", inline=True)
        auto_comment(y_runtime_adjust_addr, "Y=file handle", inline=True)

        auto_comment(runtime_addr, "Write sequential file pointer from zero page address X (A=1)", inline=True)
    elif a == 2:
        auto_comment(x_runtime_adjust_addr, "X=zero page address for result", inline=True)
        auto_comment(y_runtime_adjust_addr, "Y=file handle", inline=True)

        auto_comment(runtime_addr, "Get length of file into zero page address X (A=2)", inline=True)
    elif (a == 255) and (y == 0):
        auto_comment(runtime_addr, "Write any buffered data to all pending files (A=255, Y=0)", inline=True)

    elif a == 255:
        auto_comment(y_runtime_adjust_addr, "Y=file handle", inline=True)

        auto_comment(runtime_addr, "Write any buffered data to file Y", inline=True)
    elif a is not None:
        auto_comment(runtime_addr, "Read or write a file's attributes (unknown action A=%d)" % a, inline=True)
    else:
        auto_comment(runtime_addr, "Read or write a file's attributes", inline=True)

def osnewl_hook(runtime_addr, state, subroutine):
    auto_comment(runtime_addr, "Write newline (characters 10 and 13)", inline=True)

def oswrcr_hook(runtime_addr, state, subroutine):
    auto_comment(runtime_addr, "Write carriage return (character 13)", inline=True)

def oswrch_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    if a_addr is not None:
        a = " " + str(memory_binary[a_addr])
    else:
        a = ""
    auto_comment(runtime_addr, "Write character%s" % a, inline=True)

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
        auto_comment(runtime_addr, osfile_descriptions[action] + " (A=%d)" % action, inline=True)
    elif action is not None:
        auto_comment(runtime_addr, "unknown OSFILE call (A=%d)" % action, inline=True)

def osword_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    enum_lookup(a_addr, osword_enum)
    block_addr = xy_addr(x_addr, y_addr)

    if a_addr is None:
        return

    action = memory_binary[a_addr]
    if action in osword_descriptions:
        com = osword_descriptions[action]
        if action >= 16:
            com += " (see https://beebwiki.mdfs.net/OSWORDs)"
        auto_comment(runtime_addr, com, inline=True)

    # Block descriptions
    if block_addr is not None:
        if action in osword_block_descriptions:
            desc_dict = osword_block_descriptions[action]

            if action == 0:
                input_buffer_addr, _ = movemanager.r2b(block_addr)
                xy_addr(input_buffer_addr, input_buffer_addr+1)

            for i in desc_dict:
                auto_comment(memorymanager.RuntimeAddr(block_addr + i), desc_dict[i], inline=True)

    # Post-exit
    if action == 0:
        y_runtime_next_use = None if state.next_use['y'] is None else movemanager.b2r(state.next_use['y'])
        auto_comment(y_runtime_next_use, "Y contains line length, including carriage return if used.", inline=True)

def osbyte_rw(x_binary_addr, y_binary_addr):
    com = "Read/Write"
    write_value=None
    if y_binary_addr is not None:
        if memory_binary[y_binary_addr] == 0:
            com = "Write"
            if x_binary_addr is not None:
                write_value = memory_binary[x_binary_addr]
        elif x_binary_addr is not None:
            if (memory_binary[x_binary_addr] == 0) and (memory_binary[y_binary_addr] == 255):
                com = "Read"

    return (com, write_value)

def format_osbyte_rw(x_addr, y_addr, comment_name):
    com, write_value = osbyte_rw(x_addr, y_addr)
    result = com + " " + comment_name
    if write_value != None:
        result += ", value X=" + str(write_value)

    return result

def key_name(key):
    if key in inkey_enum:
        return "'" + inkey_enum[key][10:].upper() + "'"
    return "an unknown"

def append_bit_string(str, x, bit, result1, result0):
    if len(str) > 0:
        str += "; "
    if (x & (1<<bit)) == 0:
        str += result0
    else:
        str += result1
    return str

def osbyte_hook(runtime_addr, state, subroutine):
    a_addr = state.get_previous_load_imm('a')
    if a_addr is None:
        return

    enum_lookup(a_addr, osbyte_enum)

    # Binary addresses
    x_addr = state.get_previous_load_imm('x')
    y_addr = state.get_previous_load_imm('y')
    x_load_addr = state.get_previous_load('x')
    y_load_addr = state.get_previous_load('y')
    x_adjust_addr = state.get_previous_adjust('x')
    y_adjust_addr = state.get_previous_adjust('y')
    x_next_use = state.next_use['x']
    y_next_use = state.next_use['y']

    # Equivalent runtime addresses
    x_runtime_addr = None if x_addr is None else movemanager.b2r(x_addr)
    y_runtime_addr = None if y_addr is None else movemanager.b2r(y_addr)
    x_runtime_load_addr = None if x_load_addr is None else movemanager.b2r(x_load_addr)
    y_runtime_load_addr = None if y_load_addr is None else movemanager.b2r(y_load_addr)
    x_runtime_adjust_addr = None if x_adjust_addr is None else movemanager.b2r(x_adjust_addr)
    y_runtime_adjust_addr = None if y_adjust_addr is None else movemanager.b2r(y_adjust_addr)
    x_runtime_next_use = None if x_next_use is None else movemanager.b2r(x_next_use)
    y_runtime_next_use = None if y_next_use is None else movemanager.b2r(y_next_use)

    action = memory_binary[a_addr]

    if action == 0x00:
        com = "Read OS version number (if X non-zero), or BRK and print OS version (if X=0)"
        if x_addr is not None:
            if memory_binary[x_addr] == 0:
                com = "Execute BRK and print OS version (X=0)"
            else:
                com = "Read OS version number into X"
                auto_comment(x_runtime_next_use,
"""X is the OS version number:
    X=0, OS 1.00 (Early BBC B or Electron OS 1.00)
    X=1, OS 1.20 or American OS
    X=2, OS 2.00 (BBC B+)
    X=3, OS 3.2/3.5 (Master 128)
    X=4, OS 4.0 (Master Econet Terminal)
    X=5, OS 5.0 (Master Compact)""", indent=1)
        auto_comment(runtime_addr, com, inline=True, show_blank=True)

    elif action == 0x01:
        com = "Set user flag byte to "
        if x_addr is not None:
            com += str(memory_binary[x_addr])
        else:
            com += "X"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous value of the user flag byte", inline=True)

    elif action == 0x02:
        com = "Select input stream X (0=keyboard, 1=RS232, 2=both)"
        if x_addr is not None:
            if memory_binary[x_addr] == 0:
                com = "Select keyboard as input stream with RS232 disabled (X=0)"
            elif memory_binary[x_addr] == 1:
                com = "Select RS232 as input stream with keyboard disabled (X=1)"
            elif memory_binary[x_addr] == 2:
                com = "Select keyboard as input stream with RS232 enabled (X=2)"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous input stream (0=keyboard, 1=RS232)", inline=True)

    elif action == 0x03:
        com = "Select output stream based on X"
        if x_addr is not None:
            if x_runtime_addr is not None:
                binary(x_runtime_addr)
            x = memory_binary[x_addr]
            com += ": "
            bit_str = ""
            bit_str = append_bit_string(bit_str, x, 0, "enable RS232 output", "disable RS232 output")
            bit_str = append_bit_string(bit_str, x, 1, "disable VDU driver", "enable VDU driver")
            bit_str = append_bit_string(bit_str, x, 2, "disable printer output", "enable printer output")
            bit_str = append_bit_string(bit_str, x, 3, "enable printer despite CTRL-B/C state", "disable printer despite CTRL-B/C state")
            bit_str = append_bit_string(bit_str, x, 4, "disable SPOOLed output", "enable SPOOLed output")
            bit_str = append_bit_string(bit_str, x, 6, "disable printer output unless VDU 1 first", "enable printer output even without VDU 1 first")
            com += bit_str

        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous output stream status byte", inline=True)

    elif action == 0x04:
        com = "Enable/disable cursor editing based on X"
        if x_addr is not None:
            if memory_binary[x_addr] == 0:
                com = "Enable cursor editing (X=0)"
            elif memory_binary[x_addr] == 1:
                com = "Disable cursor editing (edit keys give ASCII 135-139) (X=1)"
            elif memory_binary[x_addr] == 2:
                com = "Disable cursor editing (edit keys act as soft keys f11 to f15) (X=2)"
            elif memory_binary[x_addr] == 3:
                com = "Cursor editing keys and COPY simulate a joystick (Master Compact only) (X=3)"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use,
"""X is the previous status of the cursor editing keys:
    X=0, cursor editing was enabled (the default setting)
    X=1, cursor editing was disabled, edit keys gave ASCII codes (135 to 139)
    X=2, cursor editing was disabled, edit keys acted as soft keys (11 to 15)
    X=3, cursor editing keys and COPY simulated a joystick (Master Compact only)""", indent=1, show_blank=True)

    elif action == 0x05:
        com = "Select printer destination"
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x == 0:
                com += ": Ignore printer output (X=0)"
            elif x == 1:
                com += ": Parallel output (X=1)"
            elif x == 2:
                com += ": RS423 output (X=2)"
            elif x == 3:
                com += ": User printer routine (X=3)"
            elif x == 4:
                com += ": Net printer (X=4)"
            else:
                com += ": User printer routine (X>4)"
        else:
            com += " based on X"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use,
"""X is the previous printer destination:
    X=0, printer sink (printer output ignored)
    X=1, parallel output
    X=2, RS423 output (will act as sink if RS423 is enabled using OSBYTE 3)
    X=3, user printer routine
    X=4, net printer
    X=5+, user printer routine""", indent=1, show_blank=True)

    elif action == 0x06:
        com = "Set printer ignore character to "
        if x_addr is not None:
            com += "X=" + str(memory_binary[x_addr])
            if x_runtime_addr is not None:
                char(x_runtime_addr)
        else:
            com += "X"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous printer ignore character", inline=True)

    elif (action == 0x07) or (action == 0x08):
        if action == 0x07:
            com = "Set serial receive rate "
        else:
            com = "Set serial transmission rate "

        enum_lookup(x_addr, baud_rate_enum, "X=baud rate")

        if x_addr is not None:
            x = memory_binary[x_addr]
            if x in baud_rates:
                com += "to " + baud_rates[x] + " (X=" + str(x) + ")"
            else:
                com += "based on X"
        else:
            com += "based on X"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        if x_runtime_next_use or y_runtime_next_use:
            next_use = min(z for z in [x_runtime_next_use, y_runtime_next_use] if z is not None)
            auto_comment(next_use,
"""X and Y contain the previous serial ULA register contents (not Electron).
    Bits 0-2 = transmit rate
    Bits 3-5 = receive rate
    Bit 6    = RS423 in control (if set) / Tape in control (if clear)
    Bit 7    = cassette motor""", indent=1, show_blank=True)

    elif action == 0x09:
        com = "Set 'mark' duration of flashing colours to "
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x == 0:
                com += "infinity (X=0)"
            else:
                com += "X=" + utils.count_with_units(x, "vsync (fiftieth of a second)", "vsyncs (fiftieths of a second)")
        else:
            com += "X fiftieths of a second"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous mark duration (in fiftieths of a second)", inline=True)

    elif action == 0x0a:
        com = "Set 'space' duration of flashing colours to "
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x == 0:
                com += "infinity (X=0)"
            else:
                com += "X=" + utils.count_with_units(x, "vsync (fiftieth of a second)", "vsyncs (fiftieths of a second)")
        else:
            com += "X fiftieths of a second"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous space duration (in fiftieths of a second)", inline=True)

    elif action == 0x0b:
        com = "Set keyboard auto-repeat delay"
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x == 0:
                com = "Disable keyboard auto-repeat (X=0)"
            else:
                com += " to X=" + utils.count_with_units(x, "centisecond", "centiseconds")
        else:
            com += " to X centiseconds"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous keyboard auto-repeat delay (in centiseconds)", inline=True)

    elif action == 0x0c:
        com = "Set keyboard auto-repeat interval"
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x == 0:
                com = "Reset keyboard delay and repeat to default values (X=0)"
            else:
                com += " to X=" + utils.count_with_units(x, "centisecond", "centiseconds")
        else:
            com += " to X centiseconds"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous keyboard auto-repeat interval (in centiseconds)", inline=True)

    elif action == 0x0d:
        com = "Disable event X"
        if x_addr is not None:
            event_number = memory_binary[x_addr]
            enum_lookup(x_addr, event_enum, "X=event number")
            if event_number in event_names:
                com = "Disable '" + event_names[event_number] + "' event (X=" + str(event_number) + ")"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous event enable flag (0=disabled, non-zero=enabled)", inline=True)

    elif action == 0x0e:
        com = "Enable event X"
        if x_addr is not None:
            event_number = memory_binary[x_addr]
            enum_lookup(x_addr, event_enum, "X=event number")
            if event_number in event_names:
                com = "Enable '" + event_names[event_number] + "' event (X=" + str(event_number) + ")"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous event enable flag (0=disabled, non-zero=enabled)", inline=True)

    elif action == 0x0f:
        com = "Flush all buffers (X=0), or just input buffers (X non-zero)"
        if x_addr is not None:
            if memory_binary[x_addr] == 0:
                com = "Flush all buffers (X=0)"
            else:
                com = "Flush input buffers (X non-zero)"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x10:
        com = "Select number of ADC channels based on X"
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x == 0:
                com = "Disable ADC channel sampling (X=0)"
            else:
                com = "Select " + utils.count_with_units(x, "ADC channel", "ADC channels") + " (X=" + str(x) + ")"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous ADC channel 1-4 or zero if disabled", inline=True)

    elif action == 0x11:
        com = "Force ADC conversion on channel X"
        if x_addr is not None:
            x = memory_binary[x_addr]
            com = "Force ADC conversion on channel X=" + str(x)
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x12:
        auto_comment(runtime_addr, "Reset function keys", inline=True)

    elif action == 0x13:
        auto_comment(runtime_addr, "Wait for vertical sync", inline=True)

    elif action == 0x14:
        com = "Implode or Explode character definition RAM based on X"
        if x_addr is not None:
            exp = memory_binary[x_addr]
            if exp == 0:
                com = "Implode character definition RAM, can redefine characters 128-159 (X=0)"
            elif exp == 1:
                com = "Explode character definition RAM (one extra page), can redefine characters 128-191 (X=1)"
            elif exp == 2:
                com = "Explode character definition RAM (two extra pages), can redefine characters 128-223 (X=2)"
            elif exp == 3:
                com = "Explode character definition RAM (three extra pages), can redefine characters 128-255 (X=3)"
            elif exp == 4:
                com = "Explode character definition RAM (four extra pages), can redefine characters 128-255 and 32-63 (X=4)"
            elif exp == 5:
                com = "Explode character definition RAM (five extra pages), can redefine characters 128-255 and 32-95 (X=5)"
            elif exp == 6:
                com = "Explode character definition RAM (six extra pages), can redefine all characters 32-255 (X=6)"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the new OSHWM (high byte)", inline=True)

    elif action == 0x15:
        com = "Flush specific buffer X"
        if x_addr is not None:
            enum_lookup(x_addr, buffer_enum, "X=buffer number")
            buffer = memory_binary[x_addr]
            if buffer in buffer_names:
                com = "Flush " + buffer_names[buffer] + " (X=" + str(buffer) + ")"
            else:
                com = "Flush unknown buffer (X=" + str(buffer) + ")"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x16:
        auto_comment(runtime_addr, "Electron and Master: Increment polling semaphore", inline=True)

    elif action == 0x17:
        auto_comment(runtime_addr, "Electron and Master: Decrement polling semaphore", inline=True)

    elif action == 0x18:
        auto_comment(runtime_addr, "Electron: External sound (with parameter X)", inline=True)

    elif action == 0x19:
        com = "Master only: Restore a group of default font definitions based on X"
        if x_addr is not None:
            font_group = memory_binary[x_addr]

            if font_group in font_definitions:
                com = font_definitions[font_group]
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x44:
        auto_comment(runtime_addr, "Master and B+ only: Test for sideways RAM", inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "Bits 0-3 of X indicate use of ROM numbers 4-7 as RAM", inline=True)

    elif action == 0x45:
        auto_comment(runtime_addr, "Master and B+ only: Get sideways RAM allocation", inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "Bits 0-3 of X indicate ROM numbers 4-7 in use for extended addressing", inline=True)

    elif action == 0x6B:
        com = "Master, Compact & Electron: "
        if x_addr is not None:
            bus = memory_binary[x_addr]
            if bus == 0:
                com += "Selects the external bus (running at 1MHz on the Electron) (X=0)"
            elif bus == 1:
                com += "Selects the internal bus running at 2MHz (X=1)"
            else:
                com += "Selects the unknown bus X=" + str(bus)
        else:
            com += "Select 1MHz bus (X=0) or cartridge (X=1)"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x6C:
        com = "Master only: Select screen memory for direct access"
        if x_addr is not None:
            bank = memory_binary[x_addr]
            if bank == 0:
                com = "Master only: Select main memory for screen memory direct access (X=0)"
            elif bank == 1:
                com = "Master only: Select shadow memory for screen memory direct access (X=1)"
            else:
                com = "Master only: Selects unknown screen memory bank X=" + str(bank)
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x6d:
        auto_comment(runtime_addr, "Master: Make temporary filing system permanent", inline=True)

    elif action == 0x70:
        com = "Master: Select main/shadow memory for VDU access"
        if x_addr is not None:
            bank = memory_binary[x_addr]
            if bank == 0:
                com = "Master: Select main memory for MODE 0-7 and shadow memory for MODE 128-135 VDU access (X=0)"
            elif bank == 1:
                com = "Master: Select main memory for VDU access (X=1)"
            elif bank == 2:
                com = "Master: Select shadow memory for VDU access (X=2)"
            else:
                com += "Master: Select unknown screen memory bank for VDU access (X=" + str(bank) + ")"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous VDU access memory setting (0=main or shadow memory according to current mode, 1=main memory, 2=shadow memory)", inline=True)

    elif action == 0x71:
        com = "Master: Select main/shadow memory for display"
        if x_addr is not None:
            bank = memory_binary[x_addr]
            if bank == 0:
                com = "Master: Select main memory for display in MODE 0-7 and shadow memory for MODE 128-135 (X=0)"
            elif bank == 1:
                com = "Master: Select main memory for display (X=1)"
            elif bank == 2:
                com = "Master: Select shadow memory for display (X=2)"
            else:
                com = "Master: Select unknown screen memory bank for display (X=" + str(bank) + ")"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous display memory setting (0=main/shadow memory according to current mode, 1=main memory, 2=shadow memory)", inline=True)

    elif action == 0x72:
        com = "B+ and Master only: Write shadow memory use (X=0 is always; X non-zero is no shadow memory for MODEs 0-7)"
        if x_addr is not None:
            bank = memory_binary[x_addr]
            if bank == 0:
                com = "B+ and Master only: Select shadow memory always used (X=0)"
            else:
                com = "B+ and Master only: Select shadow memory except for MODEs 0-7 (X non-zero)"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous display memory setting (0=main/shadow memory according to current mode, 1=main memory, 2=shadow memory)", inline=True)

    elif action == 0x73:
        com = "Electron: Blank (X non-zero) or restore (X=0) palette"
        if x_addr is not None:
            bank = memory_binary[x_addr]
            if bank == 0:
                com = "Electron: Restores the palette (X=0)"
            else:
                com = "Electron: Set palette colours to black (X non-zero)"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x74:
        auto_comment(runtime_addr, "Electron only: Reset sound system", inline=True)

    elif action == 0x75:
        auto_comment(runtime_addr, "Read VDU status byte", inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use,
"""X is VDU status byte:
    bit 0=printer output enabled by a VDU 2
    bit 1=scrolling disabled (cursor editing)
    bit 2=paged scrolling selected
    bit 3=software scrolling selected (text window)
    bit 4=shadow mode selected
    bit 5=text at graphics cursor (VDU 5)
    bit 6=two cursor editing mode
    bit 7=screen disabled via VDU 21""", indent=1, show_blank=True)

    elif action == 0x76:
        auto_comment(runtime_addr, "Reflect keyboard status in keyboard LEDs", inline=True)

    elif action == 0x77:
        auto_comment(runtime_addr, "Close any *SPOOL and *EXEC files", inline=True)

    elif action == 0x78:
        auto_comment(runtime_addr, "Write current keys pressed (X and Y)", inline=True)
        auto_comment(x_runtime_adjust_addr, "X=key", inline=True)
        auto_comment(y_runtime_adjust_addr, "Y=key", inline=True)

    elif action == 0x79:
        com = "Keyboard scan, or test for a specific key"
        many_key_scan = False
        one_key_scan = ""
        if x_addr is not None:
            key = memory_binary[x_addr]
            if key >= 0x80:
                inkey_key = (255-key) ^ 0x80
                if inkey_key in inkey_enum:
                    constant(inkey_key, inkey_enum[inkey_key])
                    key_exp = make_eor(make_op2(255, "-", inkey_enum[inkey_key]), 128)
                    auto_expr(x_runtime_addr, key_exp)
                    auto_comment(x_runtime_addr, "X=internal key number EOR 128", inline=True)
                com = "Test for " + key_name(inkey_key) + " key pressed (X=%d)" % key
                one_key_scan = key_name(inkey_key)
            else:
                inkey_key = 255-key
                if inkey_key in inkey_enum:
                    constant(inkey_key, inkey_enum[inkey_key])
                    key_exp = make_op2(255, "-", inkey_enum[inkey_key])
                    auto_expr(x_runtime_addr, key_exp)
                    auto_comment(x_runtime_addr, "X=internal key number", inline=True)

                com = "Keyboard scan starting from " + key_name(inkey_key) + " key (X=%d)" % key
                many_key_scan = True
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        if x_runtime_next_use:
            com = "X is either the internal key number (0-127) pressed (for a keyboard scan), or the top bit is the key state (when testing a specific key)"
            if one_key_scan != "":
                com = "X has top bit set if " + one_key_scan + " pressed"
            elif many_key_scan:
                com = "X is the internal key number (0-127) if a key is pressed, or " + config.get_assembler().hex2(0xff) + " otherwise"
            auto_comment(x_runtime_next_use, com, inline=True)

    elif action == 0x7a:
        auto_comment(runtime_addr, "Keyboard scan starting from key 16", inline=True)

        # Post exit:
        if x_runtime_next_use:
            com = "X is key number if key is pressed, or " + config.get_assembler().hex2(0xff) + " otherwise"
            auto_comment(x_runtime_next_use, com, inline=True)

    elif action == 0x7b:
        auto_comment(runtime_addr, "Printer driver going dormant", inline=True)

    elif action == 0x7c:
        auto_comment(runtime_addr, "Clear escape condition", inline=True)

        # Post exit:
        if x_runtime_next_use:
            com = "X=" + config.get_assembler().hex2(0xff) + " if there was an ESCAPE condition to clear, or zero otherwise"
            auto_comment(x_runtime_next_use, com, inline=True)

    elif action == 0x7d:
        auto_comment(runtime_addr, "Set escape condition", inline=True)

    elif action == 0x7e:
        auto_comment(runtime_addr, "Clear escape condition and perform escape effects", inline=True)

        # Post exit:
        if x_runtime_next_use:
            com = "X=" + config.get_assembler().hex2(0xff) + " if there was an ESCAPE condition to clear, or zero otherwise"
            auto_comment(x_runtime_next_use, com, inline=True)

    elif action == 0x7f:
        auto_comment(runtime_addr, "Check for EOF in file handle X", inline=True)
        x_adjust_addr = state.get_previous_adjust('x')
        auto_comment(x_runtime_adjust_addr, "X=File handle", inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is non-zero if reached end of file, zero otherwise", inline=True)

    elif action == 0x80:
        com = "Read buffer status or ADC channel"
        input_buffer = None
        output_buffer = None
        is_last_channel = False
        is_read_last_value = False
        if x_addr is not None:
            x_action = memory_binary[x_addr]
            if x_action == 0:
                com = "Read the channel number last used for an ADC conversion and joystick fire buttons (X=0)"
                is_last_channel = True
            elif x_action < 128:
                com = "Read the ADC conversion value for channel X=%d" % (x_action)
                is_read_last_value = True
            else:
                if (255-x_action) in buffer_names:
                    if x_action >= 254:
                        input_buffer = buffer_names[255-x_action]
                    else:
                        output_buffer = buffer_names[255-x_action]

                if x_action in negative_buffer_actions:
                    com = negative_buffer_actions[x_action]
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        if x_runtime_next_use:
            if input_buffer:
                com = "X is the number of characters in " + input_buffer
                auto_comment(x_runtime_next_use, com, inline=True)
            elif output_buffer:
                com = "X is the number of spaces remaining in " + output_buffer
                auto_comment(x_runtime_next_use, com, inline=True)
        if is_last_channel:
            if x_runtime_next_use:
                com = "X has the joystick fire buttons status in the lower two bits: bit 0=left button, bit 1=right button"
                auto_comment(x_runtime_next_use, com, inline=True)
            if y_runtime_next_use:
                com = "Y is the last ADC channel number to complete conversion"
                auto_comment(y_runtime_next_use, com, inline=True)

        if is_read_last_value:
            if x_runtime_next_use or y_runtime_next_use:
                next_use = min(z for z in [x_runtime_next_use, y_runtime_next_use] if z is not None)
                auto_comment(next_use, "X and Y contain the ADC value read (low,high)", inline=True)

    elif action == 0x81:
        com = "Read key within time limit, or read a specific key, or read machine type"
        is_read_machine_type = False
        is_read_ascii_key = False
        is_checking_specific_key_pressed = False
        if y_addr is not None:
            if memory_binary[y_addr] >= 0x80:
                com = "Read a specific key (or read machine type)"
                if x_addr is not None:
                    enum_lookup(x_addr, inkey_enum, "X=inkey number")
                    key = memory_binary[x_addr]
                    if key == 0:
                        com = "Read the machine type"
                        is_read_machine_type = True
                    else:
                        auto_comment(x_runtime_addr, "X=inkey key value", inline=True)
                        com = "Is the " + key_name(key) + " key pressed?"
                        is_checking_specific_key_pressed = True
            else:
                com = "Wait for a key press with a time limit"
                is_read_ascii_key = True
                if x_addr is not None:
                    com = "Wait for a key press within " + utils.count_with_units(memory_binary[x_addr] + 256*memory_binary[y_addr], "centisecond", "centiseconds")

        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        if x_runtime_next_use:
            if is_read_machine_type:
                auto_comment(x_runtime_next_use,
"""X is the machine type:
    X=0, BBC microcomputer OS 0.10
    X=1, Acorn Electron OS 1.00
    X=255, BBC microcomputer OS 1.00 or 1.20
    X=254, BBC microcomputer OS A1.0 (USA)
    X=253, Master 128 OS 3.20 or 3.50
    X=251, BBC B+ OS 2.00
    X=250, Acorn Business Computer OS 1.00 or 2.00
    X=247, Master Econet Terminal OS 4.00
    X=245, Master Compact OS 5.10""", indent=1, show_blank=True)
            elif is_read_ascii_key:
                auto_comment(x_runtime_next_use, "X is the ASCII value of the key pressed (assuming Y=0)")

        if y_runtime_next_use:
            if is_read_ascii_key:
                auto_comment(y_runtime_next_use, "Y is zero if key pressed; " + config.get_assembler().hex2(0xff) + " if no key pressed; " + config.get_assembler().hex2(0x1b) + " if ESCAPE pressed", inline=True)

        if is_checking_specific_key_pressed:
            if x_runtime_next_use or y_runtime_next_use:
                next_use = min(z for z in [x_runtime_next_use, y_runtime_next_use] if z is not None)
                auto_comment(next_use, "X and Y contain " + config.get_assembler().hex2(0xff) + " if the key is pressed", inline=True)

    elif action == 0x82:
        auto_comment(runtime_addr, "Read the filing system 'machine high order address'", inline=True)

        # Post exit:
        if x_runtime_next_use or y_runtime_next_use:
            next_use = min(z for z in [x_runtime_next_use, y_runtime_next_use] if z is not None)
            auto_comment(next_use, "X and Y contain the machine high order address (low, high)", inline=True)

    elif action == 0x83:
        auto_comment(runtime_addr, "Read top of operating system RAM address (OSHWM)", inline=True)

        # Post exit:
        if x_runtime_next_use or y_runtime_next_use:
            next_use = min(z for z in [x_runtime_next_use, y_runtime_next_use] if z is not None)
            auto_comment(next_use, "X and Y contain the address of OSHWM (low, high)", inline=True)

    elif action == 0x84:
        auto_comment(runtime_addr, "Read top of user memory (HIMEM)", inline=True)

        # Post exit:
        if x_runtime_next_use or y_runtime_next_use:
            next_use = min(z for z in [x_runtime_next_use, y_runtime_next_use] if z is not None)
            auto_comment(next_use, "X and Y contain the address of HIMEM (low, high)", inline=True)

    elif action == 0x85:
        com = "Read top of user memory for a given screen mode X"
        auto_comment(x_runtime_load_addr, "X=MODE number", inline=True)

        if x_addr is not None:
            mode = memory_binary[x_addr]
            com = "Read top of user memory for screen MODE %d" % (mode)
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        if x_runtime_next_use or y_runtime_next_use:
            next_use = min(z for z in [x_runtime_next_use, y_runtime_next_use] if z is not None)
            auto_comment(next_use, "X and Y contain the address (low, high)", inline=True)

    elif action == 0x86:
        auto_comment(runtime_addr, "Read input cursor position (Sets X=POS and Y=VPOS)", inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the horizontal text position ('POS')", inline=True)
        auto_comment(y_runtime_next_use, "Y is the vertical text position ('VPOS')", inline=True)

    elif action == 0x87:
        auto_comment(runtime_addr, "Read character at the text cursor, and current screen MODE", inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the character at the text cursor", inline=True)
        auto_comment(y_runtime_next_use, "Y is the current screen MODE (0-7)", inline=True)

    elif action == 0x88:
        auto_comment(runtime_addr, "*CODE X,Y", inline=True)

    elif action == 0x89:
        com = "Switch cassette motor relay on or off, based on X"
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x == 0:
                com = "Switch cassette motor relay off (X=0)"
            else:
                com = "Switch cassette motor relay on (X non-zero)"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x8a:
        if y_addr is not None:
            y = str(memory_binary[y_addr]) + " "
        else:
            y = "Y "
        com = "Insert value %sinto buffer" % (y)
        if x_addr is not None:
            enum_lookup(x_addr, buffer_enum, "X=buffer number")
            x = memory_binary[x_addr]
            if x in buffer_names:
                com = "Insert value %sinto %s (X=%d)" % (y, buffer_names[x], x)
            else:
                com = "Insert value %sinto unknown buffer (X=%d)" % (y, x)
        else:
            com += " X"
        com += "; carry is clear if successful"

        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x8b:
        opt = []

        if x_addr is not None:
            x = memory_binary[x_addr]
            x = str(x)
        else:
            x = "X"

        if y_addr is not None:
            y = memory_binary[y_addr]
            y = str(y)
        else:
            y = "Y"
        key = x+","+y
        com = "*OPT " + key
        if key in opt_descriptions:
            com += ": " + opt_descriptions[key]
        elif x == "0":
            com += ": Reset all options for current filing system"
        elif x == "3":
            com += ": if TAPE, set interblock gap to " + utils.count_with_units(y, "tenth of a second", "tenths of a second")
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x8c:
        com = "Select TAPE filing system"
        if x_addr is not None:
            if x_runtime_addr is not None:
                decimal(x_runtime_addr)
            baud = memory_binary[x_addr]
            if baud == 0:
                com += " at default 1200 baud (X=0)"
            elif baud == 3:
                com += " at 300 baud (X=3)"
            else:
                com += " at 1200 baud (X=%d)" % (baud)
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x8d:
        auto_comment(runtime_addr, "Select ROM filing system", inline=True)

    elif action == 0x8e:
        auto_comment(runtime_addr, "Enter language ROM X", inline=True)
        auto_comment(x_runtime_adjust_addr, "X=ROM number", inline=True)

    elif action == 0x8f:
        com = "Issue paged ROM service call"
        if x_addr is not None:
            reason = memory_binary[x_addr]
            if reason in paged_rom_reasons:
                com += ", " + paged_rom_reasons[reason]
            else:
                com += ", Reason X=" + str(reason)
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is zero if a paged ROM claimed the service call", inline=True)
        auto_comment(y_runtime_next_use, "Y contains a return argument from the ROM service call", inline=True)

    elif action == 0x90:
        suffix = ""
        if x_addr is not None:
            x = memory_binary[x_addr]
            if x >= 128:
                suffix = "shift display down " + utils.count_with_units(256-x, "line", "lines")
            elif x != 0:
                suffix = "shift display up " + utils.count_with_units(x, "line", "lines")
            x = str(x)
        else:
            x = "X"

        if y_addr is not None:
            y = str(memory_binary[y_addr])
            if len(suffix)>0:
                suffix += ", "
            if y == "0":
                suffix += "turn interlace on"
            else:
                suffix += "turn interlace off"
        else:
            y = "Y"

        if len(suffix)>0:
            suffix = " " + suffix
        com = "*TV " + x + "," + y + suffix
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous screen shift setting", inline=True)
        auto_comment(y_runtime_next_use, "Y is the previous interlace option (0=interlace on, 1=off)", inline=True)

    elif action == 0x91:
        com = "Get character from input buffer"
        if x_addr is not None:
            enum_lookup(x_addr, buffer_enum, "X=buffer number")
            x = memory_binary[x_addr]
            if x == 0:
                com = "Get character from keyboard buffer"
            elif x == 1:
                com = "Get character from RS423 input buffer"
        com += " (C is set if the buffer is empty, otherwise Y=extracted character)"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(y_runtime_next_use, "Y is the character extracted from the buffer", inline=True)

    elif (action >= 0x92) and (action <=0x97):
        com = read_or_write_memory_mapped_device[action]
        if x_addr is not None:
            x = memory_binary[x_addr]
            mmio_address = read_or_write_memory_mapped_address[action] + x
            com += " address " + config.get_assembler().hex4(mmio_address)
        else:
            com += " address " + config.get_assembler().hex4(read_or_write_memory_mapped_address[action]) + " + X"

        is_writing = (action == 0x93) or (action == 0x95) or (action == 0x97)
        # If writing...
        if is_writing:
            if y_addr is not None:
                y = memory_binary[y_addr]
                com += ", value Y=" + str(y)
            else:
                com += ", value Y"
        else:
            com += " into Y"

        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        if not is_writing:
            auto_comment(y_runtime_next_use, "Y is the byte read", inline=True)

    elif action == 0x98:
        com = "Examine status of buffer X"
        if x_addr is not None:
            enum_lookup(x_addr, buffer_enum, "X=buffer number")
            buffer = memory_binary[x_addr]
            if buffer in buffer_names:
                com = "Examine " + buffer_names[buffer]
            else:
                com = "Examine status of unknown buffer"
        com += " (exits with carry clear on success)"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(y_runtime_next_use, "Y is: on BBC Micro: offset to next character to be read from address stored at (" + config.get_assembler().hex2(0xFA) + ", "+ config.get_assembler().hex2(0xFB) + "); or Master, B+, Electron: the byte read", inline=True)

    elif action == 0x99:
        # Get value to insert if available
        if y_addr is not None:
            ch = "Y=" + str(memory_binary[y_addr])
        else:
            ch = "Y"
        com = "Insert character %s into input buffer X" % ch

        if x_addr is not None:
            buffer = memory_binary[x_addr]
            if buffer == 0:
                com = "Insert character %s into keyboard buffer" % ch
            elif buffer == 1:
                com = "Insert character %s into RS423 input buffer" % ch
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x9a:
        com = "Write X to video ULA control register and OS copy (BBC and Master only), and reset flash cycle"
        if x_addr is not None:
            binary(x_runtime_addr)
            val = memory_binary[x_addr]
            transmit_baud = baud_rates[8 - (val & 7)]
            receive_baud = baud_rates[8 - ((val//8) & 7)]
            rs423_in_charge = (val & 64) != 0
            cassette_motor_on = (val & 128) != 0
            com = "Set cassette motor " + {False: "off", True: "on" }[cassette_motor_on]
            com += ", " + {False: "cassette system in charge", True: "RS423 in charge"}[rs423_in_charge]
            com += ", recieve at " + receive_baud + ", transmit at " + transmit_baud
            com += ", and reset flash cycle"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x9b:
        com = "Write "
        if x_addr is not None:
            com += str(memory_binary[x_addr]) + " EOR 7 = " + str(memory_binary[x_addr] ^ 7)
        else:
            com += "X EOR 7"
        com += " to video ULA palette register and OS copy (ignored on Electron)"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x9c:
        if x_addr != None:
            binary(x_runtime_addr)
        _, write_value = osbyte_rw(x_addr, y_addr)
        com = format_osbyte_rw(x_addr, y_addr, "6850 (ACIA) control register")
        if write_value != None:
            com += ": "
            com += { 0: "divide counter by 1",
                     1: "divide counter by 16",
                     2: "divide counter by 64 (default for RS423)",
                     3: "master reset",
                     }[write_value & 3]
            com += "; "
            com += { 0: "7 bit word, even parity, 2 stop bits",
                     1: "7 bit word, odd parity, 2 stop bits",
                     2: "7 bit word, even parity, 1 stop bit",
                     3: "7 bit word, odd parity, 1 stop bit",
                     4: "8 bit word, 2 stop bits",
                     5: "8 bit word, 1 stop bit",
                     6: "8 bit word, even parity, 1 stop bit",
                     7: "8 bit word, odd parity, 1 stop bit"
                     }[(write_value // 4) & 7]
            com += "; "
            com += { 0: "RTS low, transmit interrupt disabled",
                     1: "RTS low, transmit interrupt enabled",
                     2: "RTS high, transmit interrupt disabled",
                     3: "RTS low, break level on data output, transmit interrupt disabled"
                     }[(write_value // 32) & 3]
            if (write_value & 128) != 0:
                com += "; enables the receive data register full, over-run, or DCD transition interrupts."
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the previous value of the control register", inline=True)

    elif action == 0x9d:
        com = "Fast Tube BPUT value "
        if x_addr is not None:
            com += "X=" + str(memory_binary[x_addr])
        else:
            com += "X"
        com += " to file handle Y"
        auto_comment(runtime_addr, com, inline=True)

        auto_comment(y_runtime_adjust_addr, "Y=file handle", inline=True)

    elif action == 0x9e:
        com = "Read command/data byte from speech processor"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0x9f:
        com = "Write "
        if y_addr is not None:
            com += "Y=" + str(memory_binary[y_addr])
        else:
            com += "byte Y"
        com += " to speech processor"
        auto_comment(runtime_addr, com, inline=True)

        auto_comment(y_runtime_adjust_addr, "Y=byte to write", inline=True)

    elif action == 0xa0:
        com = "Read VDU variable X"
        var1 = "the VDU variable"
        var2 = "next VDU variable"
        if x_addr is not None:
            by = memory_binary[x_addr]
            if by in vdu_variables:
                var1 = vdu_variables[by]
                com ="Read the " + var1
                if (by+1) in vdu_variables:
                    var2 = vdu_variables[by+1]
            com += " (VDU variable X=" + str(by) + ")"

        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X is the " + var1, inline=True)
        auto_comment(y_runtime_next_use, "Y is the " + var2, inline=True)

    elif action == 0xa1:
        com = "Master and Compact: Read CMOS RAM/EEPROM byte X"
        is_get_size = False
        name_of_byte = ""
        if x_addr is not None:
            by = memory_binary[x_addr]

            if by == 255:
                com = "Compact only: Determine if the EEPROM is 128 or 256 bytes long (X=255)"
                is_get_size = True
            else:
                if by in cmos_ram:
                    name_of_byte = "'" + cmos_ram[by] + "'"
                    com = "Master and Compact: Read the " + name_of_byte + " byte from CMOS RAM/EEPROM (X=" + str(by) + ")"
                else:
                    com += "Master and Compact: Read CMOS RAM/EEPROM byte X=" + str(by)

        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        if y_runtime_next_use:
            if is_get_size:
                auto_comment(y_runtime_next_use, "Y=0 means no EEPROM present; Y=127 means 128 byte EEPROM; Y=255 means 256 byte EEPROM present", inline=True)
            else:
                if name_of_byte == "":
                    auto_comment(y_runtime_next_use, "Y is the byte value read from the CMOS RAM/EEPROM", inline=True)
                else:
                    auto_comment(y_runtime_next_use, "Y is the %s byte read from the CMOS RAM/EEPROM" % name_of_byte, inline=True)

    elif action == 0xa2:
        com = "Master and Compact: Write to CMOS RAM/EEPROM byte X"
        if x_addr is not None:
            by = memory_binary[x_addr]
            if by in cmos_ram:
                name_of_byte = "'" + cmos_ram[by] + "'"
                com = "Master and Compact: Write to the " + name_of_byte + " byte from CMOS RAM/EEPROM (X=" + str(by) + ")"
            else:
                com = "Master and Compact: Write to CMOS RAM/EEPROM byte X=" + str(by)
            # TODO: Decode which byte to read an what it means, NUAG P357
        com += " with value Y"
        if y_addr is not None:
            by = memory_binary[y_addr]
            com += "=" + str(by)

        auto_comment(runtime_addr, com, inline=True)

    elif action == 0xa3:
        com = "Reserved for application software"
        auto_comment(runtime_addr, com, inline=True)

    elif action == 0xa4:
        com = "Check for 6502 code in paged ROM format, where XY is the address to check."
        auto_comment(runtime_addr, com, inline=True)
        auto_comment(x_runtime_addr, "X=Address of ROM format code to check (low byte)", inline=True)
        auto_comment(y_runtime_addr, "Y=Address of ROM format code to check (high byte)", inline=True)

    elif action == 0xa5:
        com = "Read output cursor position (Master only)"
        auto_comment(runtime_addr, com, inline=True)

        # Post exit:
        auto_comment(x_runtime_next_use, "X=text cursor 'POS'", inline=True)
        auto_comment(y_runtime_next_use, "Y=text cursor 'VPOS'", inline=True)

    elif (action >= 0xa6) and (action <= 0xff):
        write_value = None
        if action in os_variable_names:
            _, write_value = osbyte_rw(x_addr, y_addr)

            name = os_variable_names[action]
            next_name = None
            if (action + 1) in os_variable_names:
                next_name = os_variable_names[action + 1]
            next_next_name = None
            if (action + 2) in os_variable_names:
                next_next_name = os_variable_names[action + 2]

            # Exceptions
            skip_normal_comment = False
            if (action == 0xc6) or (action == 0xc7):
                if x_runtime_adjust_addr is not None:
                    auto_comment(x_runtime_adjust_addr, "X=File handle", inline=True)
            elif action == 0xc8:
                if write_value != None:
                    if write_value & 1:
                        name = "Disable ESCAPE action, "
                    else:
                        name = "Set normal ESCAPE action, "
                    if (write_value & 0xfe) == 0:
                        name += "set normal BREAK action"
                    else:
                        name += "clear memory on BREAK"
            elif action == 0xc9:
                result = "Enable/Disable keyboard (for Econet)"
                if write_value != None:
                    if write_value == 0:
                        result = "Enable keyboard (for Econet)"
                    else:
                        result = "Disable keyboard (for Econet)"
                auto_comment(runtime_addr, result, inline=True)
                skip_normal_comment = True
            elif action == 0xe5:
                if write_value == 0:
                    name = "Set ESCAPE key status to normal action"
                else:
                    name = "Set ESCAPE key to produce ASCII code " + str(write_value)
                auto_comment(runtime_addr, name, inline=True)
                skip_normal_comment = True
            elif action == 0xff:
                # If writing the startup byte, show it in binary
                if write_value is not None:
                    if x_runtime_addr is not None:
                        binary(x_runtime_addr)

            if not skip_normal_comment:
                com = format_osbyte_rw(x_addr, y_addr, name)
                auto_comment(runtime_addr, com, inline=True)

            # Post exit:
            # Exit parameters specify low byte for a corresponding high byte.
            if next_name == name + " (high byte)":
                name += " (low byte)"
            if next_name and (next_next_name == next_name + " (high byte)"):
                next_name += " (low byte)"
            if x_runtime_next_use:
                if write_value == None:
                    auto_comment(x_runtime_next_use, "X=value of " + name, inline=True)
                else:
                    auto_comment(x_runtime_next_use, "X=old value of " + name, inline=True)
            if y_runtime_next_use:
                if next_name:
                    auto_comment(y_runtime_next_use, "Y=value of " + next_name, inline=True)

            # Exceptions
            if action == 0xff:
                auto_comment(x_runtime_next_use,
"""X is the startup option byte:
    bits 0 to 2     screen MODE selected following reset
    bit 3           if clear reverse action of SHIFT+BREAK
    bits 4 and 5    used to set disc drive timings (see below)
    bit 6           not used by OS (reserved for future applications)
    bit 7           if clear select NFS, if set select DFS

Disc drive timing links:
|                           |                8271                 |          1770           |          1772           |
|---------------------------|-------------------------------------|-------------------------|-------------------------|
| b5 | b4 | link 3 | link 4 | step time | settle time | head load | step time | settle time | step time | settle time |
|----|----|--------|--------|-----------|-------------|-----------|-----------|-------------|-----------|-------------|
|  0 | 0  | 1      | 1      | 4         | 16          | 0         | 6         | 30          | 6         | 15          |
|  0 | 1  | 1      | 0      | 6         | 16          | 0         | 12        | 30          | 12        | 15          |
|  1 | 0  | 0      | 1      | 6         | 50          | 32        | 20        | 30          | 2         | 15          |
|  1 | 1  | 0      | 0      | 24        | 20          | 64        | 30        | 30          | 3         | 15          |
|---------------------------------------------------------------------------------------------------------------------|""", indent=1, show_blank=True, word_wrap=False)
    elif action in osbyte_extra_descriptions:
        # We don't know much about these, but label them at least
        com = osbyte_extra_descriptions[action] + " (see https://beebwiki.mdfs.net/OSBYTEs)"
        auto_comment(runtime_addr, com, inline=True)

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

    optional_label(0xffc2, "gsinit")
    optional_label(0xffc5, "gsread")

    subroutine(0xffb3, "oswrsc", None, None, hook=oswrsc_hook, is_entry_point=False)
    subroutine(0xffb9, "osrdsc", None, None, hook=osrdsc_hook, is_entry_point=False)
    subroutine(0xffbc, "vduchr", None, None, hook=oswrch_hook, is_entry_point=False)
    subroutine(0xffbf, "oseven", None, None, hook=oseven_hook, is_entry_point=False)
    subroutine(0xffce, "osfind", None, None, hook=osfind_hook, is_entry_point=False)
    subroutine(0xffc8, "nvrdch", None, None, hook=osrdch_hook, is_entry_point=False)
    subroutine(0xffcb, "nvwrch", None, None, hook=oswrch_hook, is_entry_point=False)
    subroutine(0xffd1, "osgbpb", None, None, hook=osgbpb_hook, is_entry_point=False)
    subroutine(0xffd4, "osbput", None, None, hook=osbput_hook, is_entry_point=False)
    subroutine(0xffd7, "osbget", None, None, hook=osbget_hook, is_entry_point=False)
    subroutine(0xffda, "osargs", None, None, hook=osargs_hook, is_entry_point=False)
    subroutine(0xffe0, "osrdch", None, None, hook=osrdch_hook, is_entry_point=False)
    subroutine(0xffe3, "osasci", None, None, hook=oswrch_hook, is_entry_point=False)
    subroutine(0xffe7, "osnewl", None, None, hook=osnewl_hook, is_entry_point=False)
    subroutine(0xffec, "oswrcr", None, None, hook=oswrcr_hook, is_entry_point=False)
    subroutine(0xffee, "oswrch", None, None, hook=oswrch_hook, is_entry_point=False)
    subroutine(0xfff4, "osbyte", None, None, hook=osbyte_hook, is_entry_point=False)
    subroutine(0xfff1, "osword", None, None, hook=osword_hook, is_entry_point=False)
    subroutine(0xffdd, "osfile", None, None, hook=osfile_hook, is_entry_point=False)
    subroutine(0xfff7, "oscli",  None, None, hook=oscli_hook,  is_entry_point=False)

    trace.substitute_constant_list.append(cpu6502.SubConst("sta crtc_address_register", 'a', crtc_registers_enum, True))
    trace.substitute_constant_list.append(cpu6502.SubConst("stx crtc_address_register", 'x', crtc_registers_enum, True))
    trace.substitute_constant_list.append(cpu6502.SubConst("sty crtc_address_register", 'y', crtc_registers_enum, True))

def is_sideways_rom():
    auto_comment(0x8000, "Sideways ROM header")
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
    auto_expr(0x8007, "copyright - rom_header")
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
