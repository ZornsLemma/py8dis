import trace8080
from commands import *

def my_comment(addr, comment):
    formatted_comment(addr, "\n" + comment + "\n")

def my_label(addr, lab, comm):
    label(addr, lab)
    comment(addr, comm, inline=True)

#config.set_label_references(False)
#config.set_show_char_literals(False)
#config.set_hex_dump(False)

# Example code from http://www.emulator101.com/full-8080-emulation.html
load(0x0100, "test8080.orig", "f5ca07054c3ee9832866f5c60697a3f6")
entry(0x0100)
comment(0x0100, "jump to 8080 CPU diagnostic", inline=True)

label(0x0000, "wboot")  # CPM routine
label(0x0005, "bdos")   # CPM routine

label(0x0145, "msg")
my_comment(0x0145, "message output routine")
label(0x014e, "pchar")
label(0x0154, "byte0")
label(0x0164, "byto1")
label(0x0168, "byto2")
label(0x0171, "byto3")
label(0x01ab, "cpu")
label(0x01b6, "j010")
comment(0x01b0, 'TEST "JZ"', inline=True)
my_label(0x01bc, "j020", 'TEST "JNC"')
my_label(0x01c2, "j030", 'TEST "JPE"')
my_label(0x01c8, "j040", 'TEST "JP"')
label(0x01d7, "j050")
label(0x01da, "j060")
label(0x01e2, "j070")
label(0x01eb, "j080")
label(0x01ee, "j090")
label(0x01f6, "j100")
label(0x01ff, "j110")
label(0x0202, "j120")
label(0x020a, "j130")
label(0x0213, "j140")
label(0x0216, "j150")
label(0x021e, "j160")
label(0x0227, "j170")
label(0x022a, "aimm")
my_comment(0x022a, "test accumulator immediate instructions")
label(0x0242, "cpie")
label(0x0245, "acii")
label(0x0251, "suii")
label(0x025d, "sbii")
label(0x0269, "anii")
label(0x0273, "orii")
label(0x027d, "xrii")
label(0x0287, "c010")
label(0x029d, "c020")
label(0x02b3, "c030")
label(0x02c0, "cpoi")
label(0x02cc, "cpei")
label(0x02d8, "cmi")
label(0x02e4, "tcpi")
label(0x02f0, "cnci")
label(0x02fc, "cci")
label(0x0308, "cnzi")
label(0x0314, "czi")
label(0x031d, "movi")
label(0x06a4, "tempp")
label(0x06a5, "tempp+1")
label(0x06a6, "temp0")
label(0x06a7, "temp1")
label(0x06a8, "temp2")
label(0x06a9, "temp3")
label(0x06aa, "temp4")
label(0x06ab, "savstk")

label(0x0689, "cpuer")
entry(0x069b, "cpuok")
label(0x07ad, "stack")

print(";")
print("; Microcosm Associates  8080/8085 CPU Diagnostic Version 1.0  (C) 1980")
print(";")
print("")

go()
