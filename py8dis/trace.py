import collections
import config
import disassembly

entry_points = []
references = collections.defaultdict(set)

def add_entry(addr, label=None):
    entry_points.append(addr)
    if label is None:
        disassembly.ensure_addr_labelled(addr)
    else:
        disassembly.add_label(addr, label)
    return disassembly.get_label(addr)

def trace():
    # TODO: copy of code in disassembly.emit(), although the name is wrong here - we are *going* to disassemble, we haven't *disassembled*
    disassembled_addresses = set()
    for start_addr, end_addr in config.disassembly_range():
        disassembled_addresses.update(range(start_addr, end_addr))

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

def add_references_comments():
    for addr, addr_refs in references.items():
        count = "%d times" % len(addr_refs) if len(addr_refs) != 1 else "1 time"
        disassembly.add_comment(addr, "Referenced %s by %s" % (count, ", ".join(config.formatter().hex(addr_ref) for addr_ref in addr_refs)))
