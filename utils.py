import memory as config # TODO!

def force_case(s):
    return s.lower() if config.lower_case[0] else s.upper()

def plainhex2(i):
    return ("%02x" if config.lower_case[0] else "%02X") % i

def plainhex4(i):
    return ("%04x" if config.lower_case[0] else "%04X") % i
