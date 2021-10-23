import copy # TODO!?

import classification # TODO!?
import collections
import config
import disassembly
import labelmanager # TODO!?
import movemanager

entry_points = []
traced_entry_points = set()
code_analysis_fns = [] # TODO!?

# TODO: experimental - but the point is the user will be referring to dest addrs not source addrs
def add_entry(binary_addr, name, move_id):
    #assert binary_addr != 0x9030
    entry_points.append(binary_addr)
    # TODO: Should it be possible for the user to add an entry point without also triggering creation of a label?
    disassembly.add_label(movemanager.b2r(binary_addr), name, move_id)

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
        #assert 0x9030 not in entry_points
        entry_point = entry_points.pop(0)
        #assert entry_point != 0x9030
        if entry_point not in traced_entry_points:
            traced_entry_points.add(entry_point)
            #print("AXP", hex(entry_point))
            new_entry_points = config.disassemble_instruction()(entry_point)
            # The first element of new_entry_points is the implicit next
            # instruction (if there is one; it might be None) which is handled
            # slightly differently, as it *isn't* automatically assigned a
            # label.
            assert len(new_entry_points) >= 1
            implied_entry_point = new_entry_points.pop(0)
            if implied_entry_point is not None:
                #assert implied_entry_point != 0x9030
                entry_points.append(implied_entry_point)
            for new_entry_point in new_entry_points:
                #print("AQB %04x %04x" % (entry_point, new_entry_point))
                #assert new_entry_point != 0x9030
                add_entry(new_entry_point, name=None, move_id=movemanager.move_id_for_binary_addr[new_entry_point])
    if False:
        for addr, label in sorted(labelmanager.labels.items(), key=lambda x: x[0]):
            print("XXX %04x %s" % (label.addr, " ".join("%04x" % x for x in label.references)))
    analyse_code()
    # We only need to defer label name generating using LazyString so that
    # label names aren't assigned based on incomplete tracing. (For example,
    # part way through tracing we may not have identified any code at address
    # X and that might affect the label name used for address X.)
    disassembly.trace_done = True


# TODO: This is a temp hack - I had redundant (?) reference infrastructure so I'm getting rid of the trace.references, but as a temporary measure I'm going to generate this reference from the other
def generate_references():
    global references
    references = collections.defaultdict(set)
    for runtime_addr, label in labelmanager.labels.items():
        binary_addr, _ = movemanager.r2b(runtime_addr)
        if binary_addr is not None:
            for reference in label.references: # TODO: rename reference->binary_reference_address?
                references[binary_addr].add(reference)

# TODO: This code is a bit unreadable!
def add_references_comments():
    if len(references) == 0:
        return
    for addr, addr_refs in references.items():
        count = "%d times" % len(addr_refs) if len(addr_refs) != 1 else "1 time" # TODO: Use utils.plural
        # TODO: Where the comment has to be emitted slightly out of place due to a classification, this becomes a bit confusing - we should probably be smarter, peek the classifications and generate a variant comment in that case at the "can actually be emitted" address - and/or maybe we shouldn't be generating reference comments for non-simple labels? (probably not the only way the first problem can occur though)
        disassembly.add_comment(addr, "Referenced %s by %s" % (count, ", ".join(sorted(config.formatter().hex4(movemanager.b2r(addr_ref)) for addr_ref in addr_refs))))

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
