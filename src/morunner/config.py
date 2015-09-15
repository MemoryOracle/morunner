#!/usr/bin/env python
# -*- encoding UTF-8 -*-
"""
Contains Configuration class which allows for easy merging of config files.
"""

# ------------------------
# Standard Library Imports
# ------------------------
import typing  # needed for type checking
import configparser as cp
import collections

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
# NONE


class Configuration(object):

    _HOME = "/home/dnoland"
    _CONF_DIR = _HOME + "/github/MemoryOracle/morunner/conf"
    _CONF_FILE = _CONF_DIR + "/global.ini"

    def __init__(self, conf_file_location: typing.Optional[str]=None) -> None:
        if conf_file_location is None:
            _loc = self._CONF_FILE
        else:
            _loc = conf_file_location

        self._conf = cp.ConfigParser(dict_type=collections.OrderedDict,
                                     allow_no_value=False,
                                     interpolation=cp.ExtendedInterpolation(),
                                     delimiters=('=',),
                                     comment_prefixes=('#', ';'),
                                     inline_comment_prefixes=None,
                                     strict=True,
                                     empty_lines_in_values=False,
                                     default_section="System")
        # We demand everything be case sensitive!
        self._conf.optionxform = lambda option: option
        self.merge(_loc)
        self.merge(self._conf["Security"]["config-file-path"])

    def merge(self, conf_file_location: str):
        """
        Merge in a config file.
        """
        with open(conf_file_location, "r") as conf_file:
            self._conf.read_file(conf_file, source=conf_file_location)

    @property
    def read(self):
        """
        Read only access to configparser object.
        """
        return self._conf


if __name__ == "__main__":
    import pprint
    pp = pprint.PrettyPrinter()
    conf = Configuration()
    pp.pprint(conf.read.__dict__)
    print(conf.read["Security"]["crt-path"])
