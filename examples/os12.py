from commands import *
import acorn

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0xc000, "os12.orig", "6502")

acorn.bbc()

# Entry points
entry(0xdc1c)
entry(0xd9cd)

# default vector addresses
for i in range(0xd940, 0xd976, 2):
    addr = get_u16_binary(i)
    entry(addr)

# OSBYTE 0-21
n=0
for i in range(0xe5b3, 0xe5df, 2):
    addr = get_u16_binary(i)
    name = "osbyte{0}EntryPoint".format(n)
    entry(addr, name)
    word(i)
    expr(i, name)
    n += 1

# OSBYTE 117-160
n=117
for i in range(0xe5df, 0xe637, 2):
    addr = get_u16_binary(i)
    name = "osbyte{0}EntryPoint".format(n)
    entry(addr, name)
    word(i)
    expr(i, name)
    n += 1

# OSBYTE 161-255
entry(0xe99c, "osbyte166to255EntryPoint")
word(0xe637)
expr(0xe637, "osbyte166to255EntryPoint")
word(0xe639)
expr(0xe639, "uservJumper")

entry(0xe659, "uservJumper")

n=0
for i in range(0xe63b, 0xe657, 2):
    addr = get_u16_binary(i)
    name = "osword{0}EntryPoint".format(n)
    entry(addr, name)
    word(i)
    expr(i, name)
    n += 1

# VDU 0-31 and 127 routines
n=0
for i in range(0,33):
    low_addr = 0xc333 + i
    high_addr = 0xc354 + i
    low = get_u8_binary(low_addr)
    high = get_u8_binary(high_addr)
    if (high & 128):
        addr = (high * 256) + low
    else:
        high = high // 16
        addr = (high*256 + 0xc300) + low
    if n == 32:
        n = 127
    name = "vdu{0}EntryPoint".format(n)
    entry(addr, name)
    n += 1

entry(0xcc02, "clearScreenRoutineEntryPointMODE012")
label(0xcc32, "clearScreenRoutineEntryPointMODE3")
label(0xcc7a, "clearScreenRoutineEntryPointMODE45")
label(0xcc92, "clearScreenRoutineEntryPointMODE6")
label(0xcce6, "clearScreenRoutineEntryPointMODE7")

n=0
for i in range(0, 4):
    low_addr = 0xc4ae + i
    high_addr = 0xc4b2 + i
    byte(low_addr)
    byte(high_addr)

    low = get_u8_binary(low_addr)
    high = get_u8_binary(high_addr)
    addr = (high * 256) + low

    name = "plotLine{0}".format(i)
    entry(addr, name)
    expr(low_addr, "<{0}".format(name))
    expr(high_addr, ">{0}".format(name))


# Output initial section as bytes, in picture binary format
byte(0xc000, 0x300, cols=1)
picture_binary(0xc000, 0x300)

string(0xfc00, 0xfefe-0xfc00)

entry(0xffb9, "osrdsc")
entry(0xffbc, "vduchr")
entry(0xffbf, "oseven")
entry(0xffc8, "nvrdch")
entry(0xffcb, "nvwrch")
entry(0xffd1, "osgbpb")
entry(0xffda, "osargs")
entry(0xffdd, "osfile")
entry(0xffec, "oswrcr")
entry(0xfff1, "osword")

# Use all the information provided to actually disassemble the program.
go()
