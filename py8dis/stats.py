class Stats:
    def __init__(self):
        self.num_total_bytes = 0
        self.num_instructions = 0
        self.num_code_bytes = 0
        self.num_data_bytes = 0
        self.num_data_words = 0
        self.num_string_bytes = 0
        self.num_strings = 0

    def total_data(self):
        return self.num_data_bytes + self.num_data_words + self.num_string_bytes
