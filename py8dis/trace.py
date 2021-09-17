import classification # TODO!?
import collections
import config
import disassembly

entry_points = []
traced_entry_points = set()
references = collections.defaultdict(set)

def add_entry(addr, label=None):
    entry_points.append(addr)
    if label is not None:
        disassembly.add_label(addr, label)
    return disassembly.get_label(addr, addr)

def trace():
    while len(entry_points) > 0:
        entry_point = entry_points.pop(0)
        if entry_point not in traced_entry_points:
            traced_entry_points.add(entry_point)
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
    disassembly.analyse_sequences()
    # We only need to defer label name generating using LazyString so that
    # label names aren't assigned based on incomplete tracing. (For example,
    # part way through tracing we may not have identified any code at address
    # X and that might affect the label name used for address X.)
    disassembly.trace_done = True


# TODO: This code is a bit unreadable!
def add_references_comments():
    if len(references) == 0:
        return
    for addr, addr_refs in references.items():
        count = "%d times" % len(addr_refs) if len(addr_refs) != 1 else "1 time"
        disassembly.add_comment(addr, "Referenced %s by %s" % (count, ", ".join(config.formatter().hex(addr_ref) for addr_ref in addr_refs)))

def add_reference_histogram():
    if len(references) == 0:
        return []
    result = [""]
    frequency_table = [(addr, len(addr_refs)) for addr, addr_refs in references.items()]
    frequency_table = sorted(frequency_table, key=lambda x: (x[1], -x[0]), reverse=True)
    longest_label = max(len(disassembly.get_label(addr, addr)) for addr in references)
    comment = config.formatter().comment_prefix()
    result.append("%s Label references by decreasing frequency:" % comment)
    for addr, count in frequency_table:
        result.append("%s     %-*s %3d" % (comment, longest_label+1, disassembly.get_label(addr, addr) + ":", count))
    return result



# TODO: I am thinking maybe most/all uses of disassembly_range should be replaced by just iterating over whole of memory and emitting stuff for non-None addresses. move() would probably set some parallel "ignore me" flags on bytes which have been populated via move() on acme disassemblies where a Relocation() object will emit the disassembly from those bytes. (disassembly_range is something of an artefact of the early code where it was a convenient way to decide what to process, but it's not necessarily relevant any more.)
