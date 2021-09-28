import config
import disassembly # TODO!?
import utils


class Label(object):
    def __init__(self, addr):
        assert addr != 0xbf0a
        self.addr = addr
        self.move_id = None
        self.references = set()
        # TODO: explicit_names is a list since we want to remember the order user-added names were provided in, at least for now
        self.explicit_names = []
        # TODO: Possibly non-simple names should go in a different list than explicit_names
        self.emitted = False

    def set_move_id(self, move_id):
        assert False # TODO: move_id is a property of an individual *name* within the label, not the label as a whole - and we also really need to be tracking emitted on individual names as well (with presumably some sort of extra case where a label with no explicit names can still be recorded as having been emitted)
        if move_id is None:
            return # TODO?
        #print("XAP", self.move_id, move_id)
        assert self.move_id is None or self.move_id == move_id # TODO?
        self.move_id = move_id

    def add_reference(self, reference):
        assert disassembly.classifications[reference].abs_operand(reference) == self.addr
        self.references.add(reference)

    def add_explicit_name(self, name):
        # TODO: Inefficient search-on-list
        if name not in self.explicit_names:
            self.explicit_names.append(name)

    def explicit_definition_string_list(self):
        if self.emitted:
            return []
        self.emitted = True
        formatter = config.formatter()
        # TODO: Could the label have multiple names here which we need to define?
        # TODO: This handling of non-simple labels feels a bit hacky, as though maybe we should have flagged this earlier and perhaps not even be calling this function - but refactoring so just hack it for now
        name = str(disassembly.get_label(self.addr, self.addr))
        if self.addr == 0x8909:
            pass # print("QQQ", name)
        if disassembly.is_simple_name(name):
            return [formatter.explicit_label(name, formatter.hex4(self.addr))]
        else:
            return []

    def definition_string_list(self, emit_addr):
        if self.emitted:
            return []
        self.emitted = True
        formatter = config.formatter()
        result = []
        assert emit_addr <= self.addr
        offset = self.addr - emit_addr
        if self.addr == 0x8909:
            pass # print("RRR", self.explicit_names, hex(emit_addr), offset)
        # TODO: Having to use get_label() here feels a bit off, but it's probably easy to fix later
        if offset == 0:
            if len(self.explicit_names) == 0:
                result.append(formatter.inline_label(disassembly.get_label(emit_addr, self.addr)))
            else:
                for name in self.explicit_names:
                    if disassembly.is_simple_name(name):
                        result.append(formatter.inline_label(name))
        else:
            if len(self.explicit_names) == 0:
                result.append(formatter.explicit_label(disassembly.get_label(self.addr, self.addr), disassembly.get_label(emit_addr, self.addr), offset))
            else:
                for name in self.explicit_names:
                    if disassembly.is_simple_name(name):
                        result.append(formatter.explicit_label(name, disassembly.get_label(emit_addr, self.addr), offset))
        return result



labels = utils.keydefaultdict(Label)


# TODO: Hex dumps on "equw" lines are wrong (addresses seem to go up as if they were single bytes), not likely to be a big deal but needs investigating

# TODO: Some acme output seems to include redundant and possibly confusing *=xxx after pseudopc blocks
