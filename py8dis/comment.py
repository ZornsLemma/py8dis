import utils
import config
import mainformatter
from align import Align

class Annotation(object):
    """A raw string to add to the output."""

    def __init__(self, text, align=Align.INLINE, priority=None, auto_generated=False):
        if priority is None:
            priority = 0
        self.text = text
        self.priority = priority
        self.align = align
        self.auto_generated = auto_generated

    def as_string(self, binary_addr):
        return str(self.text)

    def __str__(self):
        return str(self.text)

    def __repr__(self) -> str:
        return self.__str__()

class Comment(Annotation):
    """A comment, either inline or standalone.

    Derives from the Annotation class."""

    def __init__(self, text, word_wrap=True, indent=0, align=Align.BEFORE_LABEL, priority=None, auto_generated=True):

        def late_formatter():
            strtext = str(text)
            if word_wrap:
                if align != Align.INLINE:
                    return mainformatter.format_comment(strtext, indent)
            return "\n".join("{0}{1} {2}".format(config.get_indent_string() * indent, config.get_assembler().comment_prefix(), line) for line in strtext.split("\n"))

        Annotation.__init__(self, utils.LazyString("%s", late_formatter), align=align, priority=priority, auto_generated=auto_generated)
