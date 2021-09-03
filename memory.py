# TODO: RENAME THIS FILE?

memory = [None] * 64*1024
entry_points = []
expressions = {}
disassembly_range = [None, None]

formatter = [None]
lower_case = [True]

inline_comment_column = [60]

def set_lower_case(b):
    lower_case[0] = b
