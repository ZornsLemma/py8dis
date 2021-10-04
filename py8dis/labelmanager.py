# TODO: Move/tidy this note somewhere permanent
# Label names are a bit fiddly because:
# - we discover the need for labels during the tracing process
# - we cannot allocate names to labels during the tracing process, as the code to generate
#   label names may want to look at the code as a whole and we need to finish tracing first.
# - we therefore have to wait until we've finished tracing before generating any missing
#   label names
# - we must do this before we start to generate the text disassembly so we know all label
#   names and can emit their definitions in the right place.

# TODO: Sketchier notes about label names
# - every label reference will call the label-name-maker and could in principle generate a completely different name
# - the labelmanager needs to know about these labels to the extent of "label XYZ is at address A and I need to emit a definition" but it doesn't need to be capable of answering the "what label name do I use for this particular reference to address A", as that is answered by calling the label-name-maker every time.
# - however, the labelmanager *does* need to know where - currently expressed in terms of move IDs (which are kind of turning into "region IDs" but I don't think that matters too much just yet) - to emit the definition of these labelmaker-created labels. How do we decide him? I suppose the general answer - which would probably be hidden by an extra layer most of the time - is that the label maker says "I want a label with name A at address B and the definition belongs to move ID C". That gives the core code enough to work with, and the label maker framework can then be responsbile for assigning C - perhaps it will simply default to None unless overridden, or there will be some heuristic, or the user will choose to get involved.
# - I am sort of feeling I need to think about move/region IDs and context for py8dis as a whole, but that as a basic building block the labelmanager should work with something *like* move IDs but which as far as it is concerned are simply tags. These tags are used by the label maker code when considering what label name to use for a particular reference and similarly are used when retrieving "all" labels from the label manager in order to emit definitions, but the label manager itself doesn't really "understand" them (which is why although they *might* be move IDs they might also be some other arbitrary tag, e.g. if I want to do some kind of regions or context IDs or whatever).
# - maybe the label manager will deal with raw move IDs just to keep things "less abstract and complex". Move IDs are important to labels because we need to (try to) emit labels in the appropriate !pseudopc region for readability. If there is some sort of more abstract region/context stuff going on at the user's instigation to help e.g. disambiguate multiple uses of the same zp location based on which code is accessing it, that causes us to have multiple names (sprung into existence by the label maker) for the same address, *but* we don't need to keep the definitions of those labels separate - for zp labels this would typically be all at the top of the assembly, for absolute addresses in the binary we still want to output the definitions for all the competing "contexts" at the same place. So there's probably no need to complicate the label manager (even if it's just a question of naming) with region IDs/context IDs - move IDs are all that matter to it. Contexts or whatever are important when deciding which label to use in a particular instruction/equb/equw/whatever, but that's something the label maker deals with - all the label manager cares about is that once the label maker comes to a decision, the new label name and its associated move ID are put into the label maker's internal state so we can emit the definition at the right point (which as waffled about is a decision entirely based on move ID, and address of course).


import collections

import config
import disassembly # TODO!?
import utils

# TODO: I think Name is an implementation detail of Label - users of Label won't see it.
# TODO: General point - perhaps having this class called Name and thus it being natural to use "name" as a local variable holding an instance of this class and then having to say "name.name" is a bit confusing
class Name(object):
    def __init__(self, name):
        self.name = name
        self.emitted = False

class Label(object):
    def __init__(self, addr):
        self.addr = addr
        self.move_id = None
        self.references = set()
        # TODO: explicit_names holds lists since we want to remember the order user-added names were provided in, at least for now
        self.explicit_names = collections.defaultdict(list)
        # TODO: Possibly non-simple names should go in a different list than explicit_names

    def add_reference(self, reference):
        assert disassembly.classifications[reference].abs_operand(reference) == self.addr
        self.references.add(reference)

    def all_names(self):
        # TODO: We should maintain this set in add_explicit_names() and any other "add" functions rather than regenerating it every time, but for now I want guaranteed consistency over speed.
        result = set()
        for name_list in self.explicit_names.values():
            for name in name_list:
                result.add(name.name)
        return result

    def add_explicit_name(self, name, move_id):
        #print("QQQ", name, move_id, hex(self.addr))
        assert disassembly.is_simple_name(name) # TODO: If keep this, can probably remove some conditional logic elsewhere in labelmanager
        # It doesn't hurt to check move_id is valid in general, but in
        # particular it helps detect accidentally passing a "context address" as
        # a move ID by mistake.
        assert move_id is None or 0 <= move_id < len(config.move_ranges)
        # TODO: What if the name already exists but with a different move_id? We probably shouldn't allow it to exist with both - we don't want to assume the assembler will accept duplicate definitions of the same label name - but maybe we should be erroring, warning or *changing* the move_id of the existing label
        if name not in self.all_names():
            self.explicit_names[move_id].append(Name(name))

    def explicit_definition_string_list(self):
        # TODO: Note that we don't invoke the label hook or anything here - if a name got *used* for the label at some point, it should have been added into the label object so we know to emit it here.
        formatter = config.formatter()
        result = []
        for name_list in self.explicit_names.values():
            for name in name_list:
                if not name.emitted:
                    result.append(formatter.explicit_label(name.name, formatter.hex4(self.addr)))
                    name.emitted = True
        return result

    def definition_string_list(self, emit_addr, move_id):
        assert move_id is None or 0 <= move_id < len(config.move_ranges)
        formatter = config.formatter()
        result = []
        assert emit_addr <= self.addr
        offset = self.addr - emit_addr
        # TODO: It's probably OK, but note that we only emit for "matching" move_id; we leave it for
        # explicit_definition_string_list() to return any things which we never would emit otherwise. Arguably if we have *any* point at which we could define a label inline (particularly if it's for the default move_id None) we should emit *all* labels for all move IDs at that address which haven't specifically been emitted elsewhere. Doing this properly would require making sure we emit (to temporary storage) all the pseudo-pc regions first, so let's not worry about that yet.
        for name in self.explicit_names[move_id]:
            #print("PXX", name.name)
            # TODO: Our callers are probably expecting us to be calling get_label() if we don't have any explicit names, but I don't think this is actually a good way to work - but things are probably broken for the moment because of this
            if name.emitted:
                continue
            if offset == 0:
                if disassembly.is_simple_name(name.name):
                    result.append(formatter.inline_label(name.name))
            else:
                if disassembly.is_simple_name(name.name):
                    # TODO: I suspect get_label() call here will want tweaking eventually
                    result.append(formatter.explicit_label(name.name, disassembly.get_label(emit_addr, self.addr), offset))
            name.emitted = True
        return result



labels = utils.keydefaultdict(Label)


# TODO: Hex dumps on "equw" lines are wrong (addresses seem to go up as if they were single bytes), not likely to be a big deal but needs investigating

# TODO: Some acme output seems to include redundant and possibly confusing *=xxx after pseudopc blocks

# TODO: Just a general note - move IDs provide optional "annotations" on individual label names. They are "advisory" - labels just resolve to 16-bit integer addresses, of course - but they should allow us to try to emit different label names for the same address in different parts of the disassembly (i.e. the associated pseudopc block). They also help to provide disambiguation when tracing - where a destination address is mapped to more than one source address, we can use heuristics like "prefer the mapping for the move region we are currently tracing in", and maybe also allow users to annotation to say "the target address is in move region X". Still feeling my way with this but that's the general idea.

# TODO: General note - may want to turn move IDs into region IDs, as I could imagine a user wanting to use them to help control label name generation for code in a certain part of the binary without actually having a move() (or with a move() "in the background" but with more than one ID for a single move() region - we might have to generate this internally). This might be easyish or it might not, but making a note to come back and think about this once I get the basics a bit more defined.

# This is just intended as a debugging tool; mainly for debugging py8dis itself, though
# it might also be helpful for debugging user label hooks or similar.
def all_labels_as_comments():
    formatter = config.formatter()
    c = formatter.comment_prefix()
    result = ["%s All labels by address and move ID" % c, "%s" % c]
    for addr, label in labels.items():
        result.append("%s %s:" % (c, utils.plainhex4(addr)))
        for move_id, name_list in sorted(label.explicit_names.items()):
            # TODO? assert len(name_list) > 0
            result.append("%s     %4s: %s" % (c, move_id, ", ".join(sorted(x.name for x in name_list))))
    return result
