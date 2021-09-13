import classification # TODO!?
import collections
import config
import disassembly

entry_points = []
references = collections.defaultdict(set)

def add_entry(addr, label=None):
    entry_points.append(addr)
    if label is not None:
        disassembly.add_label(addr, label)
    return disassembly.get_label(addr, addr)

def trace():
    # TODO: copy of code in disassembly.emit(), although the name is wrong here - we are *going* to disassemble, we haven't *disassembled*
    disassembled_addresses = set()
    for start_addr, end_addr in config.disassembly_range():
        disassembled_addresses.update(range(start_addr, end_addr))
    # TODO: Hack - maybe some variant on this is OK, or maybe disassembled_addresses should be built up in parallel with disassembly_range() so it can include these relocated things
    for c in disassembly.classifications:
        if isinstance(c, classification.Relocation):
            disassembled_addresses.update(range(c._dest, c._dest + c._length))

    while len(entry_points) > 0:
        entry_point = entry_points.pop(0)
        if not disassembly.is_classified(entry_point, 1) and entry_point in disassembled_addresses:
            #print(hex(entry_point))
            new_entry_points = config.disassemble_instruction()(entry_point)
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

# TODO: This code is a bit unreadable!
def add_references_comments():
    return # TODO TEMP
    if len(references) == 0:
        return
    for addr, addr_refs in references.items():
        count = "%d times" % len(addr_refs) if len(addr_refs) != 1 else "1 time"
        disassembly.add_comment(addr, "Referenced %s by %s" % (count, ", ".join(config.formatter().hex(addr_ref) for addr_ref in addr_refs)))

    final_addr = max(end_addr for start_addr, end_addr in config._disassembly_range)
    frequency_table = [(addr, len(addr_refs)) for addr, addr_refs in references.items()]
    frequency_table = sorted(frequency_table, key=lambda x: (x[1], -x[0]), reverse=True)
    longest_label = max(len(disassembly.get_label(addr, None)) for addr in references)
    disassembly.add_comment(final_addr, "Label references by decreasing frequency:\n    " + "\n    ".join(("%-*s %3d" % (longest_label+1, disassembly.get_label(addr, None)+":", count)) for addr, count in frequency_table))
