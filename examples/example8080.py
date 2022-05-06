from commands import *
import config # TODO: bit hacky
import trace8080
import utils

# Example code from https://en.wikipedia.org/wiki/Intel_8080#Example_code
code = [0x78, 0xb1, 0xc8, 0x1a, 0x77, 0x13, 0x23, 0x0b, 0x78, 0xb1, 0xc2, 0x03, 0x10, 0xc9]
for i, c in enumerate(code):
    memory_binary[0x1000+i] = c
config.load_ranges = [(utils.BinaryAddr(0x1000), utils.BinaryAddr(0x1000+len(code)))]

entry(0x1000)

go()
