import memory as config # TODO!

def force_case(s):
    return s.lower() if config.lower_case[0] else s.upper()

def plainhex2(i):
    return ("%02x" if config.lower_case[0] else "%02X") % i

def plainhex4(i):
    return ("%04x" if config.lower_case[0] else "%04X") % i

# TODO: Rename this to something like get_u16()?
def get_abs(i):
    memory = config.memory
    assert memory[i] is not None and memory[i+1] is not None
    return memory[i] + (memory[i+1] << 8)

# https://stackoverflow.com/questions/312443/how-do-you-split-a-list-into-evenly-sized-chunks
def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

def isprint(c):
    return 32 <= c <= 126
