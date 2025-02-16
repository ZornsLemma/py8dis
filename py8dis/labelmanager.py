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

`Local Labels` are Labels that are only used within a range or ranges of
addresses. They override regular labels.

So what do move IDs do for us?

Firstly, they help us emit label definitions in the "right" places. If
we have two separate fragments of code which are each move()d to runtime
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
"""

import collections

import config
import disassembly
import movemanager
import memorymanager
import utils
from memorymanager import BinaryAddr, RuntimeAddr
from label import Label

labels = utils.keydefaultdict(Label)

def addr(label_name):
    # TODO: Ultra-inefficient implementation, optimise!
    for addr, label in sorted(labels.items()):
        # Check explicit label names
        for name_list in label.explicit_names.values():
            for name in name_list:
                if label_name == name.text:
                    return addr
        # Check local labels
        for label_list in label.local_labels.values():
            for label_entry in label_list:
                if label_name == label_entry[0]:
                    return addr
    return None

def find_max_explicit_name_length():
    """Get the length of the longest explicit label.

    This is used to align the equals signs on the list of memory
    locations at the top of the output."""

    max_name_length = 0
    for label in labels.values():
        for name_list in label.explicit_names.values():
            for name in name_list:
                if not name.emitted:
                    max_name_length = max(max_name_length, len(name.text))
    return max_name_length

# For debugging...
def all_labels_as_comments():
    """Return all labels as comments.

    This is just intended as a debugging tool; mainly for debugging
    py8dis itself, though it might also be helpful for debugging user
    label hooks or similar."""

    formatter = config.get_assembler()
    c = formatter.comment_prefix()
    result = ["%s All labels by address and move ID" % c, "%s" % c]
    for addr, label in sorted(labels.items()):
        result.append("%s %s:" % (c, utils.plainhex4(addr)))
        for move_id, name_list in sorted(label.explicit_names.items()):
            assert movemanager.is_valid_move_id(move_id)
            result.append("%s     %4s: %s" % (c, move_id, ", ".join(sorted(x.text for x in name_list))))
    return result
