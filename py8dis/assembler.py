class Assembler(object):
    explicit_a = False
    pending_assertions = {}
    output_filename = None

    def set_output_filename(self, filename):
        self.output_filename = filename
