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
        return []

    def definition_string_list(self, emit_addr, move_id):
        assert move_id is None or 0 <= move_id < len(config.move_ranges)
        formatter = config.formatter()
        result = []
        assert emit_addr <= self.addr
        offset = self.addr - emit_addr
        # TODO: It's probably OK, but note that we only emit for "matching" move_id; we leave it for
        # explicit_definition_string_list() to return any things which we never would emit otherwise. Arguably if we have *any* point at which we could define a label inline (particularly if it's for the default move_id None) we should emit *all* labels for all move IDs at that address which haven't specifically been emitted elsewhere. Doing this properly would require making sure we emit (to temporary storage) all the pseudo-pc regions first, so let's not worry about that yet.
        for name in self.explicit_names[move_id]:
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
