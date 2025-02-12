class Subroutine(object):
    """Data describing a subroutine."""

    def __init__(self, runtime_addr, label_name, title, description, on_entry, on_exit, hook_function, move_id):
        self.runtime_addr   = runtime_addr
        self.move_id        = move_id
        self.label_name     = label_name
        self.title          = title
        self.description    = description
        self.on_entry       = on_entry if on_entry else {}
        self.on_exit        = on_exit if on_exit else {}
        self.hook_function  = hook_function
