#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import typing  # needed for type checking
import configparser as cp

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
# NONE


_DEFAULT_CONFIG_LOC = "/home/dnoland/github/MemoryOracle/morunner/conf/morunner.ini"


def parse(loc: typing.Optional[str]=None) -> cp.ConfigParser:
    if loc is None:
        _loc = _DEFAULT_CONFIG_LOC
    else:
        _loc = loc
    with open(_loc, "r") as config_file:
        config_str = config_file.read()
    config = cp.ConfigParser(allow_no_value=False,
                             interpolation=cp.ExtendedInterpolation())
    config.read_string(config_str)
    return config
