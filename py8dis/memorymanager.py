import utils

class TypedInt(int):
    def __add__(self, other):
        res = super(TypedInt, self).__add__(other)
        return self.__class__(res)

class BinaryAddr(TypedInt):
    def __new__(cls, value, *args, **kwargs):
        assert not isinstance(value, RuntimeAddr)
        return super(BinaryAddr, cls).__new__(cls, value)

class RuntimeAddr(TypedInt):
    def __new__(cls, value, *args, **kwargs):
        assert not isinstance(value, BinaryAddr)
        return super(RuntimeAddr, cls).__new__(cls, value)


# Address validation
def is_valid_runtime_addr(runtime_addr):
    """Validate a runtime address."""

    assert not isinstance(runtime_addr, BinaryAddr)
    return 0 <= runtime_addr < 0x10000

def is_valid_binary_addr(binary_addr):
    """Validate a binary address."""

    assert not isinstance(binary_addr, RuntimeAddr)
    return 0 <= binary_addr < 0x10000


# Memory access
def get_u8_binary(binary_addr):
    """Get 8 bit number given a binary address"""

    assert memory_binary[binary_addr] is not None
    return memory_binary[binary_addr]

def get_u16_binary(binary_addr):
    """Get 16 bit number (little-endian) given a binary address"""

    assert memory_binary[binary_addr] is not None and memory_binary[binary_addr+1] is not None
    return memory_binary[binary_addr] + (memory_binary[binary_addr+1] << 8)

def get_u16_be_binary(binary_addr):
    """Get 16 bit number (big-endian) given a binary address"""

    assert memory_binary[binary_addr] is not None and memory_binary[binary_addr+1] is not None
    return (memory_binary[binary_addr] << 8) | memory_binary[binary_addr+1]



def get_u8_runtime(runtime_addr):
    """Get 8 bit number given a runtime address"""

    import movemanager
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    return get_u8_binary(binary_addr)

def get_u16_runtime(runtime_addr):
    """Get 16 bit number (little-endian) given a runtime address"""

    import movemanager
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    return get_u16_binary(binary_addr)

def get_u16_be_runtime(runtime_addr):
    """Get 16 bit number (big-endian) given a runtime address"""

    import movemanager
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    return get_u16_be_binary(binary_addr)


class MemoryRuntime(object):
    def __getitem__(self, runtime_addr):
        import movemanager
        assert is_valid_runtime_addr(runtime_addr)
        runtime_addr = RuntimeAddr(runtime_addr)
        binary_address, _ = movemanager.r2b_checked(runtime_addr)
        return memory_binary[binary_address]


memory_binary = [None] * 64*1024

# This perhaps should more properly be called memory_runtime, but
# earlier versions just had memory and this is the main memory access
# for user code so probably reasonable to use a short name for it.
memory = MemoryRuntime()

load_ranges = []

def get_entire_load_range():
    pydis_start = min(start_addr for start_addr, end_addr in load_ranges)
    pydis_end   = max(end_addr for start_addr, end_addr in load_ranges)

    return (pydis_start, pydis_end)

def load(filename, binary_addr, md5sum=None):
    binary_addr = BinaryAddr(binary_addr)

    with open(filename, "rb") as f:
        data = bytearray(f.read())
        if binary_addr + len(data) > 0x10000:
            utils.die("load() would overflow memory")
        memory_binary[binary_addr:binary_addr+len(data)] = data

    if md5sum is not None:
        import hashlib
        hash = hashlib.md5()
        hash.update(data)
        if md5sum != hash.hexdigest():
            utils.die("load() md5sum doesn't match")
    load_ranges.append((binary_addr, binary_addr + len(data)))

def is_data_loaded_at_binary_addr(binary_addr, n=1):
    assert all(is_valid_binary_addr(x) for x in range(binary_addr, binary_addr+n))
    return all(memory_binary[binary_addr + i] is not None for i in range(n))

def check_data_loaded_at_binary_addr(binary_addr, n, do_warn):
    """Check we have data loaded where we expect, optionally warning if not."""

    if is_data_loaded_at_binary_addr(binary_addr, n):
        return True
