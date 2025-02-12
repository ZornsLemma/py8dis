import memorymanager

class MoveDefinition:
    """A move definition represents an range of addresses in the binary file
    (the source of a move) and where it is relocated to at runtime (the destination).
    """
    def __init__(self, dest_runtime_addr, src_binary_addr, length):
        self.dest_runtime_addr = memorymanager.RuntimeAddr(dest_runtime_addr)
        self.src_binary_addr   = memorymanager.BinaryAddr(src_binary_addr)
        self.length = length

    def is_in_move_dest(self, runtime_addr, include_end_address):
        """Is the runtime address given within the move?"""
        assert not isinstance(runtime_addr, memorymanager.BinaryAddr)
        if include_end_address:
            return self.dest_runtime_addr <= runtime_addr <= (self.dest_runtime_addr + self.length)
        return self.dest_runtime_addr <= runtime_addr < (self.dest_runtime_addr + self.length)

    def is_in_move_src(self, binary_addr, include_end_address):
        """Is the binary address given within the move?"""
        assert not isinstance(binary_addr, memorymanager.RuntimeAddr)
        if include_end_address:
            return self.src_binary_addr <= binary_addr <= (self.src_binary_addr + self.length)
        return self.src_binary_addr <= binary_addr < (self.src_binary_addr + self.length)

    def convert_binary_to_runtime_addr(self, binary_addr):
        # Assert the address we want is within the move
        assert not isinstance(binary_addr, memorymanager.RuntimeAddr)
        assert self.is_in_move_src(binary_addr, include_end_address=True)

        # The binary address is translated to a runtime addess
        return memorymanager.RuntimeAddr(self.dest_runtime_addr + (binary_addr - self.src_binary_addr))

    def convert_runtime_to_binary_addr(self, runtime_addr):
        # Assert the address we want is within the move
        assert not isinstance(runtime_addr, memorymanager.BinaryAddr)
        assert self.is_in_move_dest(runtime_addr, include_end_address=True)

        return memorymanager.BinaryAddr(self.src_binary_addr + (runtime_addr - self.dest_runtime_addr))
