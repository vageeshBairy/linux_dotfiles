from __future__ import absolute_import, division, print_function

import os

from plugins.ranger_udisk_menu.mounter import mount
from ranger.api.commands import *


class emptytrash(Command):
    """:empty

    Empties the trash 
    """

    def execute(self):
        HOME = os.environ['HOME']
        self.fm.run(f'trash-empty')

