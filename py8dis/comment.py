import utils
import config
import mainformatter

class Annotation(object):
    """A raw string to add to the output."""

    def __init__(self, text, inline=False, priority=None):
        if priority is None:
            priority = 0
        self.text = text
        self.inline = inline
        self.priority = priority

    def as_string(self, binary_addr):
        return str(self.text)

class Comment(Annotation):
    """A comment, either inline or standalone.

    Derives from the Annotation class."""

    def __init__(self, text, inline=False, word_wrap=True, indent=0, priority=None, auto_generated=True):

        def late_formatter():
            strtext = str(text)
            if word_wrap:
                if not inline:
                    return mainformatter.format_comment(strtext, indent)
            return "\n".join("{0}{1} {2}".format(config.get_indent_string() * indent, config.get_assembler().comment_prefix(), line) for line in strtext.split("\n"))

        Annotation.__init__(self, utils.LazyString("%s", late_formatter), inline, priority)
