import trace8080
from commands import *

# Example code from https://en.wikipedia.org/wiki/Intel_8080#Example_code
load(0x1000, "example8080.orig", "d3db354aac5d0f0d4d2527030d5aff1e")
entry(0x1000)

go()
