from commands import *

# Example code from https://en.wikipedia.org/wiki/Intel_8080#Example_code
load(0x1000, "orig/example8080.orig", "8080")
entry(0x1000)

go()
