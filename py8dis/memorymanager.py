"""
Memory Manager

Loads binary data into memory ready to disassemble, and provides access to this
memory.

Code can sometimes be assembled at one address (the 'binary address') but will
be executed at another (the 'runtime address'). We define classes that help
distinguish these types of addresses.
"""

import utils

# We make one class to hold a runtime address, and another for a binary address.
# They are just integers underneath, but storing them in classes means we can
# check they are of the correct type.
class TypedInt(int):
    """An abstract base class for address types"""
    def __add__(self, other):
        res = super(TypedInt, self).__add__(other)
        return self.__class__(res)

class BinaryAddr(TypedInt):
    """Address of data at load time"""
    def __new__(cls, value, *args, **kwargs):
        assert not isinstance(value, RuntimeAddr)
        return super(BinaryAddr, cls).__new__(cls, value)

class RuntimeAddr(TypedInt):
    """Address of data at execution time"""
    def __new__(cls, value, *args, **kwargs):
        assert not isinstance(value, BinaryAddr)
        return super(RuntimeAddr, cls).__new__(cls, value)

# Address validation
def is_valid_runtime_addr(runtime_addr, allow_final_address = False):
    """Validate a runtime address."""

    assert not isinstance(runtime_addr, BinaryAddr)
    if allow_final_address:
        return 0 <= runtime_addr <= 0x10000
    return 0 <= runtime_addr < 0x10000

def is_valid_binary_addr(binary_addr, allow_final_address = False):
    """Validate a binary address."""

    assert not isinstance(binary_addr, RuntimeAddr)
    if allow_final_address:
        return 0 <= runtime_addr <= 0x10000
    return 0 <= binary_addr < 0x10000


# Memory access by binary address
def get_u8_binary(binary_addr):
    """Get 8 bit number given a binary address"""

    assert memory_binary[binary_addr] is not None, "Bad address {0}".format(hex(binary_addr))
    return memory_binary[binary_addr]

def get_u16_binary(binary_addr):
    """Get 16 bit number (little-endian) given a binary address"""

    assert memory_binary[binary_addr] is not None, "Nothing loaded at address {0}".format(hex(binary_addr))
    assert memory_binary[binary_addr+1] is not None, "Nothing loaded at address {0} (supposed 2nd byte of 16 bit address)".format(hex(binary_addr+1))
    return memory_binary[binary_addr] + (memory_binary[binary_addr+1] << 8)

def get_u16_be_binary(binary_addr):
    """Get 16 bit number (big-endian) given a binary address"""

    assert memory_binary[binary_addr] is not None and memory_binary[binary_addr+1] is not None
    return (memory_binary[binary_addr] << 8) | memory_binary[binary_addr+1]



# Memory access by runtime address
def get_u8_runtime(runtime_addr):
    """Get 8 bit number given a runtime address"""

    import movemanager
    binary_loc = movemanager.r2b_checked(runtime_addr)
    return get_u8_binary(binary_loc.binary_addr)

def get_u16_runtime(runtime_addr):
    """Get 16 bit number (little-endian) given a runtime address"""

    import movemanager
    binary_loc = movemanager.r2b_checked(runtime_addr)
    return get_u16_binary(binary_loc.binary_addr)

def get_u16_be_runtime(runtime_addr):
    """Get 16 bit number (big-endian) given a runtime address"""

    import movemanager
    binary_loc = movemanager.r2b_checked(runtime_addr)
    return get_u16_be_binary(binary_loc.binary_addr)

class RuntimeLocation:
    """RuntimeLocation holds a runtime address and move id"""

    def __init__(self, runtime_addr, move_id):
        self.runtime_addr = runtime_addr
        self.move_id = move_id

    def __str__(self) -> str:
        result = hex(self.runtime_addr)
        if self.move_id != 0:
            result += ":" + str(self.move_id)
        return result

    def __eq__(self, other):
        """Overrides the default implementation"""
        if isinstance(other, BinaryLocation):
            return (self.binary_addr == other.binary_addr) and (self.move_id == other.move_id)
        return NotImplemented

    def __hash__(self):
        """Overrides the default implementation"""
        return hash(tuple(sorted(self.__dict__.items())))

class BinaryLocation:
    """BinaryLocation holds a binary address and move id"""

    def __init__(self, binary_addr, move_id):
        assert binary_addr != None
        assert move_id != None
        self.binary_addr = BinaryAddr(binary_addr)
        self.move_id = move_id

    def __str__(self) -> str:
        result = hex(self.binary_addr)
        if self.move_id != 0:
            result += "[" + str(self.move_id) + "]"
        return result

    def __repr__(self):
        return self.__str__()

    def __eq__(self, other):
        """Overrides the default implementation"""
        if isinstance(other, BinaryLocation):
            return (self.binary_addr == other.binary_addr) and (self.move_id == other.move_id)
        return NotImplemented

    def __hash__(self):
        """Overrides the default implementation"""
        return hash(tuple(sorted(self.__dict__.items())))

class MemoryRuntime(object):
    """Class for reading runtime memory with address validation"""

    def __getitem__(self, runtime_addr):
        import movemanager
        assert is_valid_runtime_addr(runtime_addr)
        runtime_addr = RuntimeAddr(runtime_addr)
        binary_loc = movemanager.r2b_checked(runtime_addr)
        return memory_binary[binary_loc.binary_addr]


# We store 64K of memory. Some portion of this will hold the binary file(s) to
# disassemble. Use the get_u*() functions above to access this memory since this
# includes proper address validation.
memory_binary = [None] * 64*1024

# To read memory based on a runtime address we have a class to squirrel away
# the address conversion and validation.
# (This perhaps should more properly be called memory_runtime, but earlier
# versions just had 'memory' and this is the main memory access for user code
# so probably reasonable to use a short name for it.)
memory = MemoryRuntime()

# Stores a (start_binary_addr, end_binary_addr) pair for each load()
load_ranges = []

def get_entire_load_range():
    """Get the whole binary address range for any loaded data"""

    pydis_start = min(start_addr for start_addr, end_addr in load_ranges)
    pydis_end   = max(end_addr for start_addr, end_addr in load_ranges)

    return (pydis_start, pydis_end)

def load(filename, binary_addr, md5sum=None):
    """Load a binary file into memory at the given address.

    Checks the md5 checksum matches if given."""

    binary_addr = BinaryAddr(binary_addr)

    try:
        with open(filename, "rb") as f:
            data = bytearray(f.read())
            if binary_addr + len(data) > 0x10000:
                utils.die("load() would overflow memory")
            memory_binary[binary_addr:binary_addr+len(data)] = data
    except FileNotFoundError:
        utils.die("File '{0}' not found".format(filename))

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
