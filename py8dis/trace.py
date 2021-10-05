import copy # TODO!?

import classification # TODO!?
import collections
import config
import disassembly
import labelmanager # TODO!?

entry_points = []
traced_entry_points = set()
references = collections.defaultdict(set)
code_analysis_fns = [] # TODO!?

# TODO: experimental, this is only meaningful for code addresses I think
def get_move_id(addr):
    our_move_id = None
    for move_id, (dest, source, length) in enumerate(config.move_ranges):
        if source <= addr < source+length:
            assert our_move_id is None
            our_move_id = move_id
    return our_move_id

# TODO: experimental - name is deliberately crap as all these sort of functions need rationalising
def get_move_id33(addr):
    result = set()
    for move_id, (dest, source, length) in enumerate(config.move_ranges):
        if dest <= addr < dest+length:
            result.add(move_id)
    return result


# TODO: experimental - but the point is the user will be referring to dest addrs not source addrs
def add_entry(addr, name, move_id):
    import trace6502 # TODO!
    SFTODO = trace6502.apply_move2(addr, config.move_ranges[move_id][1] if move_id is not None else addr)
    #print("QPX", hex(addr), name, move_id, SFTODO)
    assert len(SFTODO) == 1
    entry_points.append(SFTODO[0])
    return disassembly.add_label(addr, name, move_id)

def add_entry_internal(addr, name, move_id):
    #if addr == 0x201d:
        #print("XAZZ")
        #assert False
    entry_points.append(addr)
    # TODO: Should this translation not be done on user calls and internal calls have a separate add_entry() version?
    SFTODO = config.move_offset[addr]
    if SFTODO is None:
        SFTODO = addr
    return disassembly.add_label(SFTODO, name, move_id)

def analyse_code():
    addr = 0
    sequence = []
    import trace6502 # TODO!
    state = trace6502.CpuState() # TODO: this is generic code and shouldn't assume trace6502 is in use
    while addr < 0x10000:
        c = disassembly.classifications[addr]
        if c is not None:
            if c.is_code(addr):
                c.update_cpu_state(addr, state)
            else:
                state = trace6502.CpuState() # TODO: as above
            disassembly.cpu_state_optimistic[addr] = copy.deepcopy(state)
            addr += c.length()
        else:
            addr += 1

    for f in code_analysis_fns:
        f()

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
                #print("AQB %04x %04x" % (entry_point, new_entry_point))
                add_entry_internal(new_entry_point, name=None, move_id=get_move_id(new_entry_point))
    if False:
        for addr, label in sorted(labelmanager.labels.items(), key=lambda x: x[0]):
            print("XXX %04x %s" % (label.addr, " ".join("%04x" % x for x in label.references)))
    analyse_code()
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

# TODO: move2.py -a should probably "heuristically" say to iself "hmm, jmp l090d doesn't even resolve to an instruction in my move ID, and look there is *another* label at the same addresss which does resolve to an instruction, let's use that rather than generating a jmp into the middle of an instruction". Hmm, on second thoughts maybe this is overly clever and special case (this code is decidedly odd, since it's a hacked up test case, not real code). Sleep on it.
