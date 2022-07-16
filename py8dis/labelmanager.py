"""
Label manager.

A label names a runtime address.

We discover the need for labels during the tracing process, but wait
until tracing is complete before we generate the label names, just
before we emit the disassembly itself.

This gives the label naming code the maximum amount of information we
can in order to suggest useful label names.

The labelmanager says 'I want to name a label at runtime address A and
binary address B, and the definition belongs to move ID C'.

A suggested name is generated automatically, and the user supplied
label maker hook function is called to actually name the label.

Labels are used in two ways. Firstly they have a definition. They are
defined either in the disassembly itself at the start of a line, or if
they are external labels not within the range of the binary (e.g. a
call to the OS, or a zero page variable) then they are listed at the
top of the output as a 'label = value' line. Secondly labels are
used when referenced e.g. as an operand of an instruction.

A `Label` object stores a runtime address and multiple names each with
an associated move ID. `Simple` aka `Explicit` names are the regular
label names used to define and reference a runtime address.
`Expressions` have labels and constants with arithmetic calculations
that are understood by the assembler. Expressions are only used when
referencing an address, they are not used to define a label.

So what do move IDs do for us?

Firstly, they help us emit label definitions in the "right" places. If
we have two separate fragments of code which are move()d to runtime
address &900 and both contain a branch to address &903, we'd like each
of those fragments to have a separate inline label definition at
address &903, so one fragment isn't "missing" a label to show control
transfers in at &903 sometimes.

So move IDs provide optional "annotations" on individual label names.
They are "advisory" - labels just resolve to 16-bit integer addresses,
of course - but they should allow us to try to emit different label
names for the same address in different parts of the disassembly (i.e.
the associated pseudopc block). They also help to provide
disambiguation when tracing - where a destination address is mapped to
more than one source address, we can use heuristics like "prefer the
mapping for the move region we are currently tracing in", and maybe
also allow users to annotate to say "the target address is in move
region X".

Secondly, when we use a label to refer to a 16-bit address, we'd like
to use a "good" name. In the move() example from the previous point,
we'd like each move()d fragment to use the same name when referencing
&903 as when it emitted the label definition for that fragment.

(In some sense move IDs are entirely advisory; we could emit every
single name at the top of the disassembly as explicit definitions of
the form "foo = $1234" and the output would reassemble just fine. But
this would not very readable or useful output.)

We may want to turn move IDs into region IDs, as I could imagine a user
wanting to use them to help control label name generation for code in
a certain part of the binary without actually having a move() (or with
a move() "in the background" but with more than one ID for a single
move() region - we might have to generate this internally).
"""

import collections

import config
import disassembly # TODO!?
import movemanager
import utils

class Label(object):
    # TODO: General point - perhaps having this class called Name and
    # thus it being natural to use "name" as a local variable holding
    # an instance of this class and then having to say "name.name" is
    # a bit confusing
    class Name(object):
        def __init__(self, name):
            self.name = name
            self.emitted = False

    def __init__(self, addr):
        self.addr = int(addr)
        self.move_id = movemanager.base_move_id
        self.references = set()

        # `explicit_names` holds lists since we want to remember the
        # order user-added names were provided.
        self.explicit_names = collections.defaultdict(list)

        # Non-simple names go in a different list
        self.expressions = collections.defaultdict(list)
        self.emit_opportunities = set()

    def add_reference(self, reference):
        assert disassembly.classifications[reference].abs_operand(reference) == self.addr
        self.references.add(reference)

    def all_names(self):
        """Return all label names and expressions for this label"""

        # TODO: We should maintain this set in add_explicit_names() and
        # any other "add" functions rather than regenerating it every
        # time, but for now I want guaranteed consistency over speed.
        result = set()
        for name_list in self.explicit_names.values():
            for name in name_list:
                result.add(name.name)

        # TODO: Should we be including expressions here, or have a
        # separate `all_expressions()` function?
        for expression_list in self.expressions.values():
            result.update(expression_list)
        return result

    def add_explicit_name(self, name, move_id):
        """Add a simple named label"""

        if move_id is None:
            move_id = movemanager.base_move_id

        assert disassembly.is_simple_name(name)
        assert movemanager.is_valid_move_id(move_id)

        # TODO: What if the name already exists but with a different
        # move_id? We probably shouldn't allow it to exist with both -
        # we don't want to assume the assembler will accept duplicate
        # definitions of the same label name.
        #
        # For auto-generated labels at least we may want to be
        # appending some sort of suffix to allow differently named
        # variants of the label to exist in different move IDs.
        #
        # Imagine we're tracing some code, and move IDs 0 and 1 both
        # contain "bne &905"; we don't want to generate one l0905 label
        # and put it in one move ID and leave the other one implicit.
        if name not in self.all_names():
            self.explicit_names[move_id].append(self.Name(name))

    def add_expression(self, s, move_id):
        """Add an expression to use when referencing a runtime address"""

        assert not disassembly.is_simple_name(s)
        assert movemanager.is_valid_move_id(move_id)

        if s not in self.all_names():
            self.expressions[move_id].append(s)

    def find_max_explicit_name_length(self):
        """Find the length of the longest explicit name not emitted.

        Used to help formatting the list of label definitions."""

        max_name_length = 0
        for name_list in self.explicit_names.values():
            for name in name_list:
                if not name.emitted:
                    max_name_length = max(max_name_length, name.name)
        return max_name_length

    def explicit_definition_string_list(self, align_column):
        """Return a list of the explicit `label = value` output strings."""

        # Note that we don't invoke the label hook or anything here -
        # if a name got *used* for the label at some point, it should
        # have been added into the label object so we know to emit it
        # here.
        formatter = config.get_formatter()
        result = []
        for name_list in self.explicit_names.values():
            for name in name_list:
                if not name.emitted:
                    result.append(formatter.explicit_label(name.name, formatter.hex4(self.addr), offset=None, align=align_column))
                    name.emitted = True
        return result

    # TODO: We don't really need to pass runtime_addr to this function at all, do we?
    def notify_emit_opportunity(self, runtime_addr, move_id):
        """Record that the move_id is used."""

        #print("XAZ", hex(runtime_addr), move_id)
        assert movemanager.is_valid_runtime_addr_for_move_id(runtime_addr, move_id)
        # assert (runtime_addr, move_id) not in self.emit_opportunities

        self.emit_opportunities.add(move_id)

    # TODO: Better name for this and/or explicit_definition_string_list() - it is
    # not actually the explictness of the definition which is changing, it is the
    # explicitness of the value.
    def definition_string_list(self, emit_addr, move_id):
        """Get a list of the labels in a move_id as a list of strings."""

        # Emit any definitions for this move_id.
        result = self.definition_string_list_internal(emit_addr, move_id)

        # Definitions for move IDs which will never get an opportunity
        # to be emitted inline in their preferred move ID are emitted
        # in the lowest-numbered move ID they can be emitted inline for.
        #print("ZZZ", hex(emit_addr), move_id, self.emit_opportunities)
        if (len(self.emit_opportunities) > 0) and (move_id == min(self.emit_opportunities)):
            leftover_move_ids = set(self.explicit_names.keys()) - self.emit_opportunities
            for move_id in leftover_move_ids:
                result.extend(self.definition_string_list_internal(emit_addr, move_id))
        return result

    def definition_string_list_internal(self, emit_addr, move_id):
        """Get a list of the labels in a move_id as a list of strings."""

        assert movemanager.is_valid_move_id(move_id)
        formatter = config.get_formatter()
        result = []
        assert emit_addr <= self.addr
        offset = self.addr - emit_addr
        # TODO: It's probably OK, but note that we only emit for
        # "matching" move_id; we leave it for
        # explicit_definition_string_list() to return any things which
        # we never would emit otherwise. Arguably if we have *any*
        # point at which we could define a label inline (particularly
        # if it's for the default move_id None) we should emit *all*
        # labels for all move IDs at that address which haven't
        # specifically been emitted elsewhere. Doing this properly
        # would require making sure we emit (to temporary storage) all
        # the pseudo-pc regions first, so let's not worry about that
        # yet.
        for name in self.explicit_names[move_id]:
            #print("PXX", name.name)
            # TODO: Our callers are probably expecting us to be calling
            # get_label() if we don't have any explicit names, but I
            # don't think this is actually a good way to work - but
            # things are probably broken for the moment because of this
            if name.emitted:
                continue
            if offset == 0:
                if disassembly.is_simple_name(name.name):
                    result.append(formatter.inline_label(name.name))
            else:
                if disassembly.is_simple_name(name.name):
                    # TODO: I suspect get_label() call here will want tweaking eventually
                    result.append(formatter.explicit_label(name.name, disassembly.get_label(emit_addr, self.addr, move_id=move_id), offset))
            name.emitted = True
        return result



labels = utils.keydefaultdict(Label)

def find_max_explicit_name_length():
    """Get the length of the longest explicit label.

    This is used to align the equals signs on the list of memory
    locations at the top of the output."""

    max_name_length = 0
    for addr in labels.keys():
        for name_list in labels[addr].explicit_names.values():
            for name in name_list:
                if not name.emitted:
                    max_name_length = max(max_name_length, len(name.name))
    return max_name_length

# For debugging...
def all_labels_as_comments():
    """Return all labels as comments.

    This is just intended as a debugging tool; mainly for debugging
    py8dis itself, though it might also be helpful for debugging user
    label hooks or similar."""

    formatter = config.get_formatter()
    c = formatter.comment_prefix()
    result = ["%s All labels by address and move ID" % c, "%s" % c]
    for addr, label in sorted(labels.items()):
        result.append("%s %s:" % (c, utils.plainhex4(addr)))
        for move_id, name_list in sorted(label.explicit_names.items()):
            # TODO? assert len(name_list) > 0
            result.append("%s     %4s: %s" % (c, move_id, ", ".join(sorted(x.name for x in name_list))))
    return result
