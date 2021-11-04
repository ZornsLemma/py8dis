from __future__ import print_function
import classification # TODO!?
import collections
import copy
import six

import config
import labelmanager
import movemanager
import trace # SFTODO TEMP?
import trace6502 # SFTODO TEMP?
import utils

user_label_maker_hook = None

autogenerated_labels = set()

trace_done = False # TODO!?


# There is at most one classification for any address; in practice by the end of
# disassembly there will be exactly one for all addresses in the target range,
# because we'll classify anything left over as data. Classifications are effectively
# "things in the assembler input which generate direct output", like instructions
# or data.
classifications = [None] * 64*1024
format_hint = {} # TODO: move into newformatter? or config?
indent_hint = collections.defaultdict(int)
# TODO: Experimental, "optimistic" because it's based on straight line code "this is *a* possible execution" - we may want to add a "pessimistic" variant which does its best to *guess* at the "common to all possible executions" behaviour
cpu_state_optimistic = [None] * 64*1024 # TODO: Move into trace6502.py?

optional_labels = {}
constants = []

# An address can have an arbitrary number of annotations; we may need to slide
# them around in the code slight to fit them round multi-byte classifications.
# By using a list we preserve the relative order of additions; we do sort this
# based on the annotation priorities but this is a stable sort and preserves
# order for any particular annotation type.
annotations = collections.defaultdict(list)

# We assign this to elements of classification which are for second and
# subsequent bytes of a multi-byte classifcation. Its value doesn't really
# matter, as long as it's not None so we know these bytes have been classified.
partial_classification = 0

def set_user_label_maker_hook(hook):
    global user_label_maker_hook
    assert user_label_maker_hook is None
    user_label_maker_hook = hook

def add_comment(addr, text, priority=None):
    # TODO: Comment object may no longer add value. And/or we may want to tweak how this
    # works so Comment objects can contain LazyStrings that aren't evaluated immediately
    # on construction.
    annotations[addr].append(Comment(text, priority))

def add_raw_annotation(addr, text, priority=None):
    annotations[addr].append(Annotation(text, priority))

def add_constant(value, name):
    # TODO: inefficient linear search!
    for v, n in constants:
        if n == name:
            assert v == value
            return
    constants.append((value, name))

def is_simple_name(s):
    assert isinstance(s, six.string_types)
    assert len(s) > 0
    # TODO: Supporting "+" and "-" is a bit of an experimental hack, for explicitly
    # generating acme local labels.
    if all(c == "+" for c in s):
        return True
    if all(c == "-" for c in s):
        return True
    def valid_first(c):
        return c.isalpha() or c == "_"
    def valid_later(c):
        return c.isalnum() or c == "_"
    return valid_first(s[0]) and all(valid_later(c) for c in s)

# TODO: feeling my way wrt post_move_addr, but I think it may be necessary to preserve compatibility with old style control files in the new move model - NO, I am thinking this is wrong - labels have to be at the move "destination" addresses, since either !pseudopc or our beebasm equivalent with copyblock will use the "final" addresses not the "in binary" addresses when generating labels - *so* what happens where two blocks of code can be copied into overlapping regions? I suppose this is maybe something to address later, but perhaps the context (or an additional "relocation context" argument) provided to the label maker could use the "in binary" address, so you could for example assign different labels to &900 depending on how it's being used (bear in mind it might be being used by part of code running at &9xx, which is why having a context showing the address in-binary would be necessary or at least v helpful to distinguish, but it also might be being used by part of code running elsewhere - if that code was nolt relocate the context would naturally be its in binary address, but if it was from other relocated code it could get confusing - admittedly an obscure case - but perhaps provided both bits of information to label maker even if most of time only one is used would be a good idea)
def add_label(addr, s, move_id): # TODO: move_id should maybe default to None but let's see what happens for now
    assert 0 <= addr <= 0x10000 # 0x10000 is valid for labels, not code/data TODO?
    label = labelmanager.labels[addr]
    if s is not None:
        if is_simple_name(s):
            label.add_explicit_name(s, move_id)
        else:
            label.add_expression(s, move_id)
    return label

def add_optional_label(addr, s, base_addr=None):
    assert 0 <= addr <= 0xffff
    if addr in optional_labels:
        assert optional_labels[addr] == (s, base_addr)
        return
    if base_addr is not None:
        assert addr != base_addr
        assert 0 <= base_addr <= 0xffff
        assert base_addr in optional_labels
        assert optional_labels[base_addr][1] is None
    else:
        assert is_simple_name(s)
    optional_labels[addr] = (s, base_addr)

# TODO: Later it might make sense for context to default to None, but for now don't want this.
# TODO: I am thinking (99% confident) first argument, the actual label address, is a runtime address and (50% confident) second argument, the context, is a binary address
def get_label(addr, context, move_id=None):
    assert 0 <= addr <= 0x10000 # 0x10000 is valid for labels, not code/data TODO?
    assert utils.is_valid_addr(context)
    assert move_id is None or movemanager.is_valid_move_id(move_id)
    # We need to ensure the labelmanager knows there's a label at this address
    # so it can emit a definition. It's tempting to try to defer this until
    # get_final_label() is called, but it's good to have the label exist as
    # early as possible - for example, this means post-tracing code analysis can
    # see where labels exist and what references them. TODO: It is a bit clunky
    # to have to do the "ensure it exists" via this dummy dictionary lookup
    # though.
    dummy = labelmanager.labels[addr]
    # TODO: is context consistently source based, regardless of whether this is code or data using it?
    return utils.LazyString("%s", lambda: get_final_label(addr, context, move_id))

# TODO: May want to expose this to user as it make be useful in a user label maker hook
# TODO: This might need tweaking so we don't classify "move source" as code - move.py currently shows this
def is_code(addr):
    classification = classifications[addr]
    if classification is None or classification == partial_classification:
        return False
    return classification.is_code(addr)

# TODO: Should I call these "references", since they may be things like expressions? then again, I am calling things labels when they are really expressions too.
def our_label_maker(addr, context, move_id):
    assert context is not None
    addr = utils.RuntimeAddr(addr) # TODO: OK? "type" for label addresses is a bit unclear
    #if addr == 0x6a7:
    #    print("BBB", hex(context), move_id)
    if move_id is None:
        move_id = movemanager.move_id_for_binary_addr[context] # TODO: OK?
        move_ids2 = movemanager.move_ids_for_runtime_addr(addr)
        #if addr == 0x6a7:
        #    print("CCC", move_id, move_ids2)
        # TODO: Next bit TCO (and move_ids2 is unused), not sure if this is good or not
        #if move_id not in move_ids2:
        #    move_id = movemanager.base_move_id
        # TODO: Alternative experimental thing - the basic idea is that if we can't assign a move ID based on a matching of context and addr move IDs, *if* there is any existing label for any of those move IDs we will use it rather than forcing a new label in base_move_id to be created - TODO: but shouldwe actually require *THERE IS ONLY ONE SUCH LABEL* - if there are multiple ones, we have no basis for picking one over another (I think)
        if move_id not in move_ids2:
            # TODO: COPY AND PASTE OF BELOW CODE
            move_ids3 = [move_id] + list(move_ids2)
            label = labelmanager.labels.get(addr)
            for candidate_move_id in move_ids3:
                if candidate_move_id in label.explicit_names:
                    for name in label.explicit_names[candidate_move_id]:
                        return (name.name, candidate_move_id)
                if candidate_move_id in label.expressions:
                    for expression in label.expressions[candidate_move_id]:
                        return (expression, candidate_move_id)
            # TODO: Should we default to move_id i.e. the move for our context address rather than always using base_move_id?
            # TODO: And/or, should we attach some significance to whether there is a single unique move_id which contains runtime address 'addr'? If there is -i.e. if len(move_ids2)==1 - it makes more sense to create a label thre than in base_move_id as that way we will be able to emit the label with an inline value *without* artificially fiddling this (and maybe overriding some user-defined move ID in some circumstances) later - following is an experimental implementation of this, which seems to work pretty well
            if len(move_ids2) == 1:
                move_id = min(move_ids2)
            else:
                move_id = movemanager.base_move_id

    label = labelmanager.labels.get(addr)
    #print("YYY %04x" % addr)
    assert label is not None
    # TODO: We might want to move this logic into the Label object, and it could
    # potentially pick one of its own explicit names out based on context. For now we
    # prefer the first one, since that's how the code used to behave and we're trying
    # to gradually refactor.
    if len(label.all_names()) > 0:
        # TODO: prob OK to be returning "first" in the following code, but using loops to do this seems odd
        for name in label.explicit_names[move_id]:
            # TODO: We are just returning the first name arbitrarily, which seems wrong - actually probably fine, we have no basis to choose anything else
            return (name.name, move_id)
        for expression in label.expressions[move_id]:
            # TODO: arbitrary - again, probably fine
            return (expression, move_id)
        for name in label.explicit_names[movemanager.base_move_id]:
            # TODO: We are just returning the first name arbitrarily, which seems wrong - see above, probably fine
            return (name.name, None)
        for expression in label.expressions[movemanager.base_move_id]:
            # TODO: arbitrary
            return (expression, move_id)
    if addr in optional_labels:
        s, base_addr = optional_labels[addr]
        if base_addr is not None:
            # TODO: If our "suggestion" is not acted on, we will have added
            # this base label unnecessarily. I don't think this is a big deal,
            # but ideally we wouldn't do it.
            add_label(base_addr, optional_labels[base_addr][0], None)
        return (s, None) # TODO: optional labels don't have a move_id at the moment?
    # TODO: Is this runtime->binary stuff correct?
    binary_addr, _ = movemanager.r2b(addr)
    if binary_addr is None or not is_code(binary_addr):
        label = utils.force_case("l%04x" % addr)
    else:
        # TODO: Should probably be user-configurable, but maybe the "c" prefix here is not ideal because I personally tend to mix it up with the following hex digits - a letter > 'f' would be better - perhaps "x" for "executable"? (should be user-configurable as I say, but I am inclined to change the default)
        label = utils.force_case("c%04x" % addr)
        # TODO: Shouldn't be using trace6502 in this generic code
        addr_refs = trace.references.get(binary_addr, [])
        if all(trace6502.is_subroutine_call(addr) for addr in addr_refs):
            label = "sub_" + label
        else:
            if len(addr_refs) == 1:
                addr_ref = list(addr_refs)[0]
                # TODO: Maybe check if the instruction at addr is an RTS and don't use loop_ prefix if it is - or getting fancies, check if there's a straight line sequence terminating in RTS at addr and don't use loop_ prefix in that case either
                # TODO: I believe is_branch_to's second argument "should" be the runtime addr but I am not sure and I don't have a completely clear mental model right now
                if trace6502.is_branch_to(addr_ref, addr) and 0 <= movemanager.b2r(addr_ref) - addr < config.loop_limit:
                    label = "loop_" + label
                    if config.indent_loops:
                        while binary_addr <= addr_ref:
                            c = classifications[binary_addr]
                            if c is not None:
                                if c.is_code(binary_addr):
                                    c.indent(binary_addr)
                                binary_addr += c.length()
                            else:
                                binary_addr += 1
    autogenerated_labels.add(label) # TODO: do we still need this?
    return (label, move_id)

# TODO: I am thinking we should just have a single label_maker_hook which defaults to ours, then user code is free to "wrap" that and pre and/or post-process the result, and more user code can layer on top of that if it wants. but let's just stick with what we have for now. *OR* - and this might be a lot less confusing - perhaps we have a list of label makes which we will call in turn, with the output of each being passed as the suggestion to the next. Our internal label maker would then be the first (and only) thing in the list by default but other code - including perhaps libraries of some kind - could add itself to the end of the list. Not sure if there should be a "do not call any further label makers" return indication to allow a label maker for force no further actions.
# TODO: This could and probably should be memo-ised - this would improve efficiency and would also avoid any risk of a non-idempotent user label maker function causing weird behaviour
def label_maker(addr, context, move_id):
    assert trace_done
    suggestion = our_label_maker(addr, context, move_id)
    if user_label_maker_hook is not None:
        user_suggestion = user_label_maker_hook(addr, context, suggestion)
        # TODO: Bit hacky but it feels nicer not to force user hooks to return a tuple
        if isinstance(user_suggestion, six.string_types):
            user_suggestion = (user_suggestion, None)
        if user_suggestion is not None:
            return user_suggestion
    return suggestion

def get_final_label(addr, context, move_id):
    #if addr == 0x6a7:
    #    print("FFF", hex(context), move_id)
    assert trace_done
    assert utils.is_valid_addr(addr)
    assert utils.is_valid_addr(context)
    assert move_id is None or movemanager.is_valid_move_id(move_id)
    name, move_id = label_maker(addr, context, move_id)
    if is_simple_name(name):
        labelmanager.labels[addr].add_explicit_name(name, move_id)
    return name

def is_classified(addr, length=1):
    return any(x is not None for x in classifications[addr:addr+length])

def add_classification(addr, classification):
    assert classification is not None
    assert not is_classified(addr, classification.length())
    classifications[addr] = classification
    for i in range(1, classification.length()):
        classifications[addr+i] = partial_classification

def get_classification(addr):
    return classifications[addr]

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

# get_label() returns LazyString objects so we can defer assignment of actual
# concrete label strings until we've finished the tracing process. This function
# forces a conversion of all label names to concrete strings in order to ensure
# that we have a full set of label definitions ready to emit.
def fix_label_names():
    assert trace_done
    addr = utils.BinaryAddr(0)
    while addr < len(classifications):
        c = classifications[addr]
        if c is not None:
            dummy = [str(x) for x in c.as_string_list(addr)]
            addr += c.length()
        else:
            addr += 1


# TODO: General note, not here - we should probably check all disassembly ranges are non-overlapping and merge any adjacent ones.
def emit():
    formatter = config.formatter()
    output = []

    output.extend(formatter.disassembly_start())

    # Emit constants first in the order they were defined.
    if len(constants) > 0:
        for value, name in constants:
            if isinstance(value, six.integer_types):
                value = formatter.hex(value)
            output.append(formatter.explicit_label(name, value))
        output.append("")

    if True: # TODO: Should be config controlled
        output.extend(labelmanager.all_labels_as_comments())

    # Break the output down into sub-ranges which share the same move ID. We
    # completely ignore the classifications here; moves are more important and
    # can bisect a classification. We call isolate_range to fix up the
    # classifications afterwards.
    SFTODORANGES = []
    current_range_start = None
    current_range_move_id = None
    for start_addr, end_addr in sorted(config.load_ranges):
        addr = start_addr
        while addr < end_addr:
            if current_range_start is not None:
                if (addr == current_range_end and
                    movemanager.move_id_for_binary_addr[addr] == current_range_move_id):
                    current_range_end = addr + 1
                else:
                    SFTODORANGES.append((current_range_start, current_range_end))
                    current_range_start = None
            if current_range_start is None:
                current_range_start = addr
                current_range_end = addr + 1
                current_range_move_id = movemanager.move_id_for_binary_addr[addr]
            addr += 1
    if current_range_start  != (current_range_end - 1):
        SFTODORANGES.append((current_range_start, current_range_end))
    for start_addr, end_addr in SFTODORANGES:
        isolate_range(start_addr, end_addr)

    # Generate the disassembly proper, but don't emit it just yet. We do this so
    # we can emit label definitions in the "best" move region and then emit any
    # leftover labels as explicit definitions below.
    # TODO: This is *not* emitting labels "after" the last address in some cases - e.g. move.py -a currently doesn't emit pydis_end inline. (To be fair, this is a bit of an edge case, but ideally it would work.)
    d = []
    # TODO: dfs226.py vs dfs226b.py - range starting at 00xaf38 and the range after are different between the two (not just the 0x6000 offset) - and even just looking at dfs226.py in isolation, the 0xaf7c end seems wrong compared to the move()s - I *suspect* this has something to do with classifications of "raw data" straddling the end of the range and not being handled properly or at least consistently
    def SFTODOX(binary_addr, move_id):
        md = movemanager.move_definitions[move_id]
        runtime_addr = md[0] + (binary_addr - md[1]) # TODO: OK!?
        labelmanager.labels[runtime_addr].notify_emit_opportunity(runtime_addr, move_id)
    for SFTODO in range(2):
        old_end_addr = -1 # TODO: use None?
        if SFTODO == 1:
            pass # print("XOU", SFTODOZ[0x9030])
        for start_addr, end_addr in SFTODORANGES:
            if old_end_addr == -1:
                if SFTODO == 1:
                    d.extend(formatter.code_start(start_addr, end_addr))
                    old_end_addr = start_addr
            move_id = movemanager.move_id_for_binary_addr[start_addr]
            if move_id != movemanager.base_move_id:
                if SFTODO == 0:
                    SFTODOX(start_addr, movemanager.base_move_id)
                else:
                    d.extend(emit_labels(start_addr, movemanager.base_move_id))
                    SFTODOARGS = (movemanager.b2r(start_addr), start_addr, end_addr - start_addr)
                    d.extend(formatter.pseudopc_start(*SFTODOARGS))
            else:
                if start_addr != old_end_addr:
                    if SFTODO == 1:
                        d.extend(formatter.code_start(start_addr, end_addr))
            addr = start_addr
            while addr < end_addr:
                if SFTODO == 0:
                    for i in range(0, classifications[addr].length()):
                        SFTODOX(addr + i, move_id)
                else:
                    d.extend(emit_addr(addr, move_id))
                addr += classifications[addr].length()
            assert addr == end_addr
            if SFTODO == 0:
                SFTODOX(end_addr, move_id)
            else:
                d.extend(emit_labels(end_addr, move_id)) # TODO: emit annotations too? (ditto other calls to emit_labels)
            if move_id != movemanager.base_move_id:
                if SFTODO == 0:
                    SFTODOX(end_addr, movemanager.base_move_id)
                else:
                    SFTODOARGS = (movemanager.b2r(start_addr), start_addr, end_addr - start_addr)
                    d.extend(formatter.pseudopc_end(*SFTODOARGS))
                    d.extend(emit_labels(end_addr, movemanager.base_move_id))
            old_end_addr = end_addr

    # Emit labels which haven't been emitted inline with the disassembly.
    for addr in sorted(labelmanager.labels.keys()):
        output.extend(labelmanager.labels[addr].explicit_definition_string_list())

    output.extend(d)

    if config.label_references():
        output.extend(trace.add_reference_histogram())

    if config.show_autogenerated_labels:
        if len(autogenerated_labels) > 0:
            output.append("")
            output.append("%s Automatically generated labels:" % formatter.comment_prefix())
            for label in sorted(autogenerated_labels):
                output.append("%s     %s" % (formatter.comment_prefix(), label))

    output.extend(formatter.disassembly_end())
    print("\n".join(formatter.sanitise(str(line)) for line in output))

def split_classification(addr):
    if addr >= 0x10000:
        return
    if classifications[addr] != partial_classification:
        return
    # TODO: Do we need to check and not warn if this is just an automatic string/byte classification?
    utils.warn("move boundary at binary address %s splits a classification" % config.formatter().hex(addr))
    split_addr = addr
    while classifications[addr] == partial_classification:
        addr -= 1
    first_split_length = split_addr - addr
    classifications[split_addr] = classification.Byte(classifications[addr].length() - first_split_length, False)
    classifications[addr] = classification.Byte(first_split_length, False)

# It's possible (but unlikely) there is a multi-byte classification straddling the
# ends of our range; if so, split them so we can output the precise range wanted.
def isolate_range(start_addr, end_addr):
    split_classification(start_addr)
    split_classification(end_addr)

# TODO: Does/should this emit annotations too?
def emit_labels(binary_addr, move_id):
    result = []
    for annotation in sorted_annotations(annotations[binary_addr]):
        result.append(annotation.as_string(binary_addr))
    md = movemanager.move_definitions[move_id]
    runtime_addr = md[0] + (binary_addr - md[1]) # TODO: OK!?
    result.extend(labelmanager.labels[runtime_addr].definition_string_list(runtime_addr, move_id))
    return result # TODO: can prob delete below here now
    global SFTODOZ
    #assert False # TODO: This seems to help but I think it's not quite right - there might be multiple possible points (len>1) but if none of those points share the "native" move ID we maybe want to be emitting them here - not sure, need to think - OK, it may very well be what I'm doing is not right or is sub-optimal, but at least in dfs226b.py (not checked dfs226.py yet), the "things I'm not emitting inline" are things that "can't" be emitted inline because we never have the "assembler pc" pointing at them; these aren't simple bugs in what I've implemented here.
    if len(SFTODOZ[runtime_addr]) == 1:
        # TODO: Emitting "all possible move IDs" here is a bit clunky but will probably do what I want while I test this idea out
        for SFTODOMOVEID in range(len(movemanager.move_definitions)):
            result.extend(labelmanager.labels[runtime_addr].definition_string_list(runtime_addr, SFTODOMOVEID))
    return result

def emit_addr(binary_addr, move_id):
    addr = binary_addr # TODO: HACK FOR COPY AND PASTE ABILITY
    result = []
    classification_length = classifications[addr].length()
    # We queue up labels defined "within" a multi-byte classification first
    # because we might need to create a new label at addr to help in
    # defining them.
    pending_labels = []
    def am2(x):
        return movemanager.b2r(x)
    for i in range(1, classification_length):
        if am2(addr + i) in labelmanager.labels:
            pending_labels.extend(labelmanager.labels[am2(addr + i)].definition_string_list(am2(addr), move_id))
    # Emit label definitions for this address.
    result.extend(emit_labels(binary_addr, move_id))
    # Emit any label definitions for addresses within the classification.
    result.extend(pending_labels)
    # Emit any annotations which would fall within the classification.
    # TODO: It might be better to emit mid-classification annotations after the classification - if only because of the way overlapping instructions are currently handled. This is what we used to do before I tweaked it a few hours ago, IIRC. But don't rush into changing this, as I may want to tweak how overlapping instructions are recorded.
    for i in range(1, classification_length):
        if len(annotations[addr + i]) > 0:
            # TODO: Get rid of this warning? It is perhaps annoying at least where "overlapping" instruction streams are added as annotations.
            utils.warn("annotation at binary address %s is being emitted at %s" % (config.formatter().hex(addr + i), config.formatter().hex(addr)))
        for annotation in sorted_annotations(annotations[addr + i]):
            result.append(annotation.as_string(addr))
    # Emit the classification itself.
    result.extend(classifications[addr].as_string_list(addr))
    return result


class Annotation(object):
    def __init__(self, text, priority=None):
        if priority is None:
            priority = 0
        self.text = text
        self.priority = priority

    def as_string(self, addr):
        return self.text


class Comment(Annotation):
    def __init__(self, text, priority=None):
        formatted_text = "\n".join("%s %s" % (config.formatter().comment_prefix(), line) for line in str(text).split("\n"))
        Annotation.__init__(self, formatted_text, priority)

# TODO: We seem to assert some simple constants have their own value - is this wrong/weird?

# TODO: TobyLobster's Chuckie Egg disassembly shows that we're not necessarily doing the best we can when striking a balance between splitting/merging classifications and forcing the use of derived labels. l0c00 is being generated as an expression even though we should probably be splitting the byte data up so we can just label 0xc00 directly. I think part of the problem is we don't even *know* 0c00 is going to generate a label until we start str()-ing the instruction classifications - obviously we could make the disassembly process spit out labelled addresses explicitly during disassembly and that may well be the right approach, then label *names* are a str()-stage thing but the fact that an address will be labelled is known as soon as we finish tracing.

# TODO: Do we need to make some provision for user-controlled labelling at *binary* addresses, or without any "implicit, because unambiguous, move() application"? Imagine we have a move()d chunk of code - we want a label on that code *at the binary address* so the LDA rom_copy,Y:STA ram_copy,Y loop can use a custom label for rom_copy. I *think* at the moment it would be hard/impossible for user code to successfully define the "rom_copy" label.

# TODO: Note that in move.py, l0908 is an automatically generated label which we would like to heuristically assign a non-None move_id, but this doesn't happen yet.
