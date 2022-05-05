from __future__ import print_function
import collections # TODO!?
import sys

import config
#import trace6502 # TODO!
import movemanager

memory_binary = config.memory_binary

def die(s):
    print(s, file=sys.stderr)
    sys.exit(1)

def warn(s):
    print("warning: " + s, file=sys.stderr)

def force_case(s):
    return s.lower() if config.lower_case() else s.upper()

def plainhex2(i):
    return ("%02x" if config.lower_case() else "%02X") % i

def plainhex4(i):
    return ("%04x" if config.lower_case() else "%04X") % i

def tab_to(s, n):
    assert n >= 0
    return "%-*s" % (n, s)

def make_indent(n):
    assert n >= 0
    return (config.indent_string()) * n

def signed8(i):
    assert 0 <= i <= 255
    if i >= 0x80:
        return i - 256
    else:
        return i

def get_u8(addr):
    assert memory_binary[addr] is not None
    return memory_binary[addr]

def get_u16(addr):
    assert memory_binary[addr] is not None and memory_binary[addr+1] is not None
    return memory_binary[addr] + (memory_binary[addr+1] << 8)

# TODO: This is a poor name - *if* one of these is going to have a non-explicit name, it should be this one not get_u16() which works with binary - but just getting things working for now - *maybe* get_u16 should take an "array" and an index as separate arguments
def get_u16_runtime(runtime_addr):
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    return get_u16(binary_addr)

def get_u16_be(addr):
    assert memory_binary[addr] is not None and memory_binary[addr+1] is not None
    return (memory_binary[addr] << 8) | memory_binary[addr+1]

# TODO: As get_u16_runtime
def get_u16_be_runtime(runtime_addr):
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    return get_u16_be(binary_addr)

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

# TODO: Get rid of or at least reduce use of this in favour of is_valid_{runtime,binary}_addr?
def is_valid_addr(addr):
    return 0 <= addr < 0x10000

def is_valid_runtime_addr(runtime_addr):
    assert not isinstance(runtime_addr, BinaryAddr)
    return is_valid_addr(runtime_addr)

def is_valid_binary_addr(binary_addr):
    assert not isinstance(binary_addr, RuntimeAddr)
    return is_valid_addr(binary_addr)

def data_loaded_at_binary_addr(binary_addr, n=1):
    assert all(is_valid_binary_addr(x) for x in range(binary_addr, binary_addr+n))
    return all(memory_binary[binary_addr + i] is not None for i in range(n))

# TODO: Probably not a good name for this function, something reflecting that it outputs a "described count" is probably better.
def plural(n, singular):
    return "%d %s" % (n, singular if n == 1 else singular + "s")

def check_data_loaded_at_binary_addr(binary_addr, n=1):
    if data_loaded_at_binary_addr(binary_addr, n):
        return True
    # TODO: Does this need to report runtime addr instead/as well?
    # TODO: The idea is sound but in practice this is a bit confusing because you have no idea what in the user program is triggering the warning (whereas with an actual fail and a backtrace you do) - it's not ideal, but searching for the address (which is likely to appear as a label name) in the output can be helpful, but still, this feels a little crappy
    warn("expecting %s of data at binary address %s but not present" % (plural(n, "byte"), config.formatter().hex(binary_addr)))
    return False

# TODO: Not a problem but just a note so I can come back to it and check my thinking later and maybe put some comments in elsewhere: we only "need" LazyString to defer labelling decisions until we've decided if an address is code or data, since otherwise we have all the information we need straight away. This means that we *don't* need to use LazyString anywhere "outside" the tracing code.
class LazyString(object):
    def __init__(self, fmt, *args):
        self._fmt = fmt
        self._args = args

    def __str__(self):
        return self._fmt % tuple(x() if callable(x) else x for x in self._args)

    def __add__(self, other):
        if isinstance(other, LazyString):
            return LazyString(self._fmt + other._fmt, *(self._args + other._args))
        return LazyString(self._fmt + "%s", *(list(self._args) + [other]))

    def __len__(self):
        return len(str(self))

# https://stackoverflow.com/questions/2912231/is-there-a-clever-way-to-pass-the-key-to-defaultdicts-default-factory
class keydefaultdict(collections.defaultdict):
    def __missing__(self, key):
        if self.default_factory is None:
            raise KeyError( key )
        else:
            ret = self[key] = self.default_factory(key)
            return ret

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)

# TODO: Very experimental
class TypedInt(int):
    def __add__(self, other):
        res = super(TypedInt, self).__add__(other)
        return self.__class__(res)


# TODO: Very experimental
class BinaryAddr(TypedInt):
    def __new__(cls, value, *args, **kwargs):
        assert not isinstance(value, RuntimeAddr)
        return super(BinaryAddr, cls).__new__(cls, value)


# TODO: Very experimental
class RuntimeAddr(TypedInt):
    def __new__(cls, value, *args, **kwargs):
        assert not isinstance(value, BinaryAddr)
        return super(RuntimeAddr, cls).__new__(cls, value)
