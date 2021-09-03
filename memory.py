# TODO: RENAME THIS FILE?

memory = [None] * 64*1024
entry_points = []
expressions = {}
disassembly_range = [None, None]

formatter = [None]
lower_case = [True]

inline_comment_column = [60]

# TODO: Perhaps provide foo() [get] and set_foo(x) functions for all the
# config, then I can avoid things like formatter[0].blah() and write formatter().blah() instead,
# which saves a character and is probably less confusing.
def set_lower_case(b):
    lower_case[0] = b
