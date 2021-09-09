from commands import *
import trace8080

# Example code from https://en.wikipedia.org/wiki/Intel_8080#Example_code
code = [0x78, 0xb1, 0xc8, 0x1a, 0x77, 0x13, 0x23, 0x0b, 0x78, 0xb1, 0xc2, 0x03, 0xc9]
memory[0x1000:] = code
config.set_disassembly_range(0x1000, 0x1000 + len(code))

entry(0x1000)

go() # TODO: rename if we keep trace() outside
