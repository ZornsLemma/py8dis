from __future__ import print_function
import sys

import config

memory = config.memory

def die(s):
    print(s, file=sys.stderr)
    sys.exit(1)

def force_case(s):
    return s.lower() if config.lower_case() else s.upper()

def plainhex2(i):
    return ("%02x" if config.lower_case() else "%02X") % i

def plainhex4(i):
    return ("%04x" if config.lower_case() else "%04X") % i

def get_u16(addr):
    assert memory[addr] is not None and memory[addr+1] is not None
    return memory[addr] + (memory[addr+1] << 8)

def get_u16_be(addr):
    assert memory[addr] is not None and memory[addr+1] is not None
    return (memory[addr] << 8) | memory[addr+1]

def add_hex_dump(s, addr, length):
    assert length > 0
    if not config.hex_dump():
        return s
    s = "%-*s" % (config.inline_comment_column(), s)
    s += "; %s: " % plainhex4(addr)
    capped_length = min(length, 3)
    s += " ".join(plainhex2(x) for x in memory[addr:addr+capped_length])
    if capped_length < length:
        s += " ..."
    return s

# https://stackoverflow.com/questions/312443/how-do-you-split-a-list-into-evenly-sized-chunks
def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

def isprint(c):
    return 32 <= c <= 126

def check_expr(expr, value):
    # ENHANCE: It would be good if this could (probably optionally) evaluate
    # 'expr' itself in the content of the current set of labels and constants.
    # However, the "assert at assembly time" approach should be absolutely
    # reliable (it's just not as early a detection as we'd like) so should
    # probably be retained even if expression evaluation is supported directly
    # in py8dis.
    config.formatter().assert_expr(expr, value)
