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

    def definition_string_list(self, emit_addr):
        formatter = config.formatter()
        result = []
        assert emit_addr <= self.addr
        offset = self.addr - emit_addr
        if len(self.explicit_names) == 0:
            # TODO: Is it OK to add to explicit_names? We're doing it "late" but will this cause any potential confusion?
            self.explicit_names.append("xxx%04x" % self.addr) # TODO: should be calling label maker
        if offset == 0:
            for name in self.explicit_names:
                result.append(formatter.inline_label(name))
        else:
            if emit_addr not in labels:
                # TODO: is it OK to be sprining new labels into existence here? I think it is, but may want to reconsider if nicer way to do it as refactoring proceeds
                dummy = labels[emit_addr] # TODO: hack - we want to create the Label object but not call any fns on it
            for name in self.explicit_names:
                result.append(formatter.explicit_label(name, disassembly.get_label(emit_addr, self.addr), offset))
        return result



labels = utils.keydefaultdict(Label)
