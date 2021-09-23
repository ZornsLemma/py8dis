import disassembly # TODO!?
import utils


class Label(object):
    def __init__(self, addr):
        self.addr = addr
        print("XXX %04x" % addr)
        self.references = set()

    def add_reference(self, reference):
        assert disassembly.classifications[reference]._target(reference) == self.addr
        self.references.add(reference)


labels = utils.keydefaultdict(Label)
