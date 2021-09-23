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


labels = utils.keydefaultdict(Label)
