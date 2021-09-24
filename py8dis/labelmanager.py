import config
import disassembly # TODO!?
import utils


class Label(object):
    def __init__(self, addr):
        self.addr = addr
        self.references = set()
        # TODO: explicit_names is a list since we want to remember the order user-added names were provided in, at least for now
        self.explicit_names = []

    def add_reference(self, reference):
        assert disassembly.classifications[reference].abs_operand(reference) == self.addr
        self.references.add(reference)

    def add_explicit_name(self, name):
        # TODO: Inefficient search-on-list
        if name not in self.explicit_names:
            self.explicit_names.append(name)

    def explicit_definition_string_list(self):
        formatter = config.formatter()
        # TODO: Could the label have multiple names here which we need to define?
        # TODO: This handling of non-simple labels feels a bit hacky, as though maybe we should have flagged this earlier and perhaps not even be calling this function - but refactoring so just hack it for now
        name = str(disassembly.get_label(self.addr, self.addr))
        if disassembly.is_simple_name(name):
            return [formatter.explicit_label(name, formatter.hex4(self.addr))]
        else:
            return []

    def definition_string_list(self, emit_addr):
        formatter = config.formatter()
        result = []
        assert emit_addr <= self.addr
        offset = self.addr - emit_addr
        if offset == 0:
            if len(self.explicit_names) == 0:
                result.append(formatter.inline_label(disassembly.get_label(emit_addr, self.addr)))
            else:
                for name in self.explicit_names:
                    result.append(formatter.inline_label(name))
        else:
            if emit_addr not in labels:
                # TODO: is it OK to be springing new labels into existence here? I think it is, but may want to reconsider if nicer way to do it as refactoring proceeds
                dummy = labels[emit_addr] # TODO: hack - we want to create the Label object but not call any fns on it
            for name in self.explicit_names:
                result.append(formatter.explicit_label(name, disassembly.get_label(emit_addr, self.addr), offset))
        return result



labels = utils.keydefaultdict(Label)
