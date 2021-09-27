from __future__ import print_function
import classification # TODO!?
import collections
import copy
import six

import config
import labelmanager
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

def add_comment(addr, text):
    annotations[addr].append(Comment(text))

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
def add_label(addr, s):
    assert 0 <= addr <= 0x10000 # 0x10000 is valid for labels, not code/data TODO?
    label = labelmanager.labels[addr]
    if s is not None:
        label.add_explicit_name(s)
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
def get_label(addr, context):
    add_label(addr, None) # TODO: possibly a transitory hack as I refactor, not clear yet
    return utils.LazyString("%s", lambda: get_final_label(addr, context))

# TODO: May want to expose this to use as it make be useful in a user label maker hook
def is_code(addr):
    classification = classifications[addr]
    if classification is None or classification == partial_classification:
        return False
    return classification.is_code(addr)

# TODO: Should I call these "references", since they may be things like expressions? then again, I am calling things labels when they are really expressions too.
def our_label_maker(addr, context):
    assert context is not None
    label = labelmanager.labels.get(addr)
    #print("YYY %04x" % addr)
    assert label is not None
    # TODO: We might want to move this logic into the Label object, and it could
    # potentially pick one of its own explicit names out based on context. For now we
    # prefer the first one, since that's how the code used to behave and we're trying
    # to gradually refactor.
    if len(label.explicit_names) > 0:
        return label.explicit_names[0]
    if addr in optional_labels:
        s, base_addr = optional_labels[addr]
        if base_addr is not None:
            # TODO: If our "suggestion" is not acted on, we will have added
            # this base label unnecessarily. I don't think this is a big deal,
            # but ideally we wouldn't do it.
            add_label(base_addr, optional_labels[base_addr][0])
        return s
    if not is_code(addr):
        label = utils.force_case("l%04x" % addr)
    else:
        label = utils.force_case("c%04x" % addr)
        # TODO: Shouldn't be using trace6502 in this generic code
        addr_refs = trace.references.get(addr, [])
        if all(trace6502.is_subroutine_call(addr) for addr in addr_refs):
            label = "sub_" + label
        else:
            if len(addr_refs) == 1:
                addr_ref = list(addr_refs)[0]
                # TODO: Maybe check if the instruction at addr is an RTS and don't use loop_ prefix if it is - or getting fancies, check if there's a straight line sequence terminating in RTS at addr and don't use loop_ prefix in that case either
                if trace6502.is_branch_to(addr_ref, addr) and 0 <= addr_ref - addr < config.loop_limit:
                    label = "loop_" + label
                    if config.indent_loops:
                        while addr <= addr_ref:
                            c = classifications[addr]
                            if c is not None:
                                if c.is_code(addr):
                                    c.indent(addr)
                                addr += c.length()
                            else:
                                addr += 1
    autogenerated_labels.add(label)
    return label

def label_maker(addr, context):
    suggestion = our_label_maker(addr, context)
    if user_label_maker_hook is not None:
        user_suggestion = user_label_maker_hook(addr, context, suggestion)
        if user_suggestion is not None:
            return user_suggestion
    return suggestion

def get_final_label(addr, context):
    assert trace_done
    s = label_maker(addr, context)
    add_label(addr, s)
    return s

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

# Combine adjacent mergeable classifications of the same type.
def merge_classifications():
    assert False # TODO!?
    addr = 0
    while addr < len(classifications):
        if classifications[addr] is not None and classifications[addr].is_mergeable():
            addr2 = addr + classifications[addr].length()
            while addr2 < len(classifications) and type(classifications[addr2]) is type(classifications[addr]) and classifications[addr2].is_mergeable():
                addr2_length = classifications[addr2].length()
                classifications[addr].set_length(classifications[addr].length() + addr2_length)
                classifications[addr2] = partial_classification
                addr2 += addr2_length
        addr += 1 if classifications[addr] is None else classifications[addr].length()

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

# TODO: General note, not here - we should probably check all disassembly ranges are non-overlapping and merge any adjacent ones.
def emit():
    formatter = config.formatter()
    output = []

    output.extend(formatter.disassembly_start())

    disassembled_addresses = set()
    for start_addr, end_addr in config.load_ranges:
        # We include end_addr in the range because we're going to use the set
        # we're building up to control emission of inline labels - the end
        # address of a range has no classification, but the assembly pointer
        # does reach it and we can emit labels inline there.
        disassembled_addresses.update(range(start_addr, end_addr + 1))

    # Emit constants first in the order they were defined.
    if len(constants) > 0:
        for value, name in constants:
            if isinstance(value, six.integer_types):
                value = formatter.hex(value)
            output.append(formatter.explicit_label(name, value))
        output.append("")

    # Emit labels which aren't within one of the disassembled ranges and which
    # therefore must be defined explicitly.
    for addr in sorted(labelmanager.labels.keys()):
        # SFTODO: Hacky handling for move_offset
        #print("OOA %04x" % addr)
        addr2 = trace6502.apply_move(addr)
        assert len(addr2) == 1
        addr2 = addr2[0]
        #print("OOL %04x" % addr2)
        if addr2 not in disassembled_addresses:
            output.extend(labelmanager.labels[addr2].explicit_definition_string_list())

    # TODO: Probably inefficient, poor variable names, etc etc
    # TODO: Any danger of classifications straddling *load range* boundaries here and breaking things? disassemble_range() handles that but I think we may also need to do it here (or do it here instead) - for example, we might incorrectly have a subrange which extends past the end of a load_range
    SFTODORANGES = []
    for start_addr, end_addr in sorted(config.load_ranges):
        #print("XXP %04x %04x" % (start_addr, end_addr))
        addr = start_addr
        SFTODOMOVEBASE = -1000000
        SUBSTART = addr
        while addr < end_addr:
            new_addr = addr + classifications[addr].length()
            THISMOVE = config.move_offset[addr]
            if THISMOVE is None:
                THISMOVE = -1000000
            else:
                THISMOVE = addr - THISMOVE
            if new_addr >= end_addr:
                addr = new_addr
                THISMOVE = SFTODOMOVEBASE + 1
            if THISMOVE != SFTODOMOVEBASE:
                SFTODORANGES.append((SUBSTART, addr))
                SUBSTART = addr
                SFTODOMOVEBASE = THISMOVE
            addr = new_addr
    #print("PPPDX", SFTODORANGES)

    for start_addr, end_addr in SFTODORANGES:
        #print("QZZ %04x %04x" %(start_addr, end_addr))
        if config.move_offset[start_addr] is None:
            output.extend(formatter.code_start(start_addr, end_addr))
        else:
            SFTODOARGS = (config.move_offset[start_addr], start_addr, end_addr - start_addr)
            output.extend(formatter.pseudopc_start(*SFTODOARGS))
        output.extend(disassemble_range(start_addr, end_addr))
        if config.move_offset[start_addr] is None:
            output.extend(formatter.code_end())
        else:
            output.extend(formatter.pseudopc_end(*SFTODOARGS))
            output.extend(labelmanager.labels[end_addr].definition_string_list(end_addr))

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
    split_addr = addr
    while classifications[addr] == partial_classification:
        addr -= 1
    first_split_length = split_addr - addr
    classifications[split_addr] = classification.Byte(classifications[addr].length() - first_split_length, False)
    classifications[addr] = classification.Byte(first_split_length, False)

def disassemble_range(start_addr, end_addr):
    result = []

    # It's possible (but unlikely) there is a multi-byte classification straddling the
    # ends of our range; if so, split them so we can output the precise range wanted.
    split_classification(start_addr)
    split_classification(end_addr)

    addr = start_addr
    while addr <= end_addr:
        if addr < end_addr:
            assert classifications[addr] is not None
            classification_length = classifications[addr].length()
        else:
            classification_length = 1
        pending_annotations = []
        # We queue up annotations for addresses >addr (i.e. those
        # "within" a multi-byte classification) first because their
        # as_string() method might cause new annotations to appear at
        # address addr.
        # TODO: isinstance(Label) is a hack
        # TODO: The hacks on labelmanager.labels[] indexing will probably be broken or at least sub-optimal if we have multiple blocks of code move()d to the same destination, but let's get the basics working first
        def am2(x):
            #print("AM2 %04x" % x)
            adjust = 0
            if x == end_addr:
                #assert x != 0xbf39
                # TODO: Is this a hack or is it OK? The "exclusive" end address of a range is inclusive for the purposes of emitting labels at its end; we need to treat it specially because it *won't* have a move_offset so we want to apply the move_offset of the last actual byte in the range
                #print("PPX")
                adjust = -1
            if config.move_offset[x + adjust] is None:
                #assert x != 0xbf39
                return x
            #assert x != 0xbf39
            return config.move_offset[x + adjust] - adjust
        #print("AAA", labelmanager.labels[0x8909].emitted)
        for i in range(1, classification_length):
            if addr + i == 0x8909:
                pass #print("XXX %04x %04x" % (addr + i, am2(addr + i)))
                #assert False
            if am2(addr + i) in labelmanager.labels:
                #assert False
                pending_annotations.extend(labelmanager.labels[am2(addr + i)].definition_string_list(am2(addr)))
                #pending_annotations.append("XXAQ %04x" % (addr + i))
            else:
                pass # assert False
        for annotation in sorted_annotations(annotations[addr]):
            if not isinstance(annotation, Label):
                result.append(annotation.as_string(addr))
        #print("KOO %04x %04x" % (addr, am2(addr)))
        if am2(addr) in labelmanager.labels:
            result.extend(labelmanager.labels[am2(addr)].definition_string_list(am2(addr)))
            #result.append("XXBQ %04x" % addr)
        # TODO: result.extend(pending_annotations)?
        for annotation in pending_annotations:
            result.append(annotation)
        if addr < end_addr:
            # We can now emit the classification output.
            result.extend(classifications[addr].as_string_list(addr))
        for i in range(1, classification_length):
            for annotation in sorted_annotations(annotations[addr + i]):
                if not isinstance(annotation, Label):
                    result.append(annotation.as_string(addr))
        addr += classification_length
    return result


class Label(object):
    priority = 1000

    def __init__(self, addr, name):
        self.addr = addr
        self.name = name

    def as_string(self, addr):
        formatter = config.formatter()
        offset = self.addr - addr
        assert offset >= 0
        if offset == 0:
            return formatter.inline_label(self.name)
        else:
            label = get_label(addr, self.addr)
            return formatter.explicit_label(self.name, label, offset)

    def as_string_assignment(self):
        formatter = config.formatter()
        return formatter.explicit_label(self.name, formatter.hex4(self.addr))


class Comment(object):
    priority = 0

    def __init__(self, text):
        self.text = text

    def as_string(self, addr):
        formatter = config.formatter()
        return "\n".join("%s %s" % (formatter.comment_prefix(), line) for line in str(self.text).split("\n"))

# TODO: We seem to assert some simple constants have their own value - is this wrong/weird?

# TODO: TobyLobster's Chuckie Egg disassembly shows that we're not necessarily doing the best we can when striking a balance between splitting/merging classifications and forcing the use of derived labels. l0c00 is being generated as an expression even though we should probably be splitting the byte data up so we can just label 0xc00 directly. I think part of the problem is we don't even *know* 0c00 is going to generate a label until we start str()-ing the instruction classifications - obviously we could make the disassembly process spit out labelled addresses explicitly during disassembly and that may well be the right approach, then label *names* are a str()-stage thing but the fact that an address will be labelled is known as soon as we finish tracing.


#assert False # TODO: General comment:
# I am starting to think labels on move()d stuff should be on the source regions. This does *not* agree with the value the assembler will assign to those labels, which is potentially confusing, but we can adjust for that internally. It *does* allow us to label up individual source regions independent of the fact that they get copied to the same dest address at runtime.
# However, *if* we did label move()d stuff in the source region, it would not be possible to attach a regular label to the actual copy of the data in the binary, which is a problem e.g. think of the inevitable loop which does LDA in_binary_loc,X:STA dest_loc,X. With the current "labels are at the dest address" approach, in_binary_loc and dest_loc are distinct. With the "labels are at source address" approach, in_binary_loc and dest_loc are both the same (they are the "source" address). So maybe this strongly argues for the approach we are using where labels are on the dest regions. *But* this doesn't seem to fit all that well with the "we can handle multiple source regions copied to a single dest region" approach, since we can't label each separate move()d region independently, even though they do have a natural "distinction" by being at different source addresses.
# I suspect/hope there's a clean solution to this so want to chew it over in background, hence this assert False comment to make some notes to come back to.
# - OK, so I am leaning towards making the labels apply on the "dest" regions, but allowing labels to be tagged with a "move ID" (assigned when we do a move() and probably returned by that function, though most code would ignore it - we'd probably set a "current move region" flag, and provide some function to say "set this back to value X, or None"), mostly ignorning it but when outputting labels from a source region corresponding to a move region, we would (approximately) emit only labels with None move region (if we havne't already emitted them) or labels with the matching move ID.
