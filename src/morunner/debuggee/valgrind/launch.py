#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import typing  # needed for type checking

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
import morunner.subordinate


class ValgrindProcess(morunner.subordinate.SubordinateProcess):
    """
    Run a debugee under valgrind.
    """
    _EXECUTABLE = "valgrind"
    _PROCESS_ALIAS = "memoryoracle-valgrind"

    def __init__(self, command: str) -> None:
        super().__init__(command=self._EXECUTABLE + " " + command,
                         process_alias=self._PROCESS_ALIAS)
