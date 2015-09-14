#!/usr/bin/env python
# -*- encoding UTF-8 -*-
"""
Module offering helper classes and functions for launching subordinate
processes.  Useful for starting up debuggers and debugges.
"""

# ------------------------
# Standard Library Imports
# ------------------------
import subprocess
import tempfile
import typing  # needed for type checking
import shlex
import os
import copy

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
# NONE


def _parse_shell_command(command: str) -> typing.List[str]:
    """
    Parse a shell command into an arg array.  Note that no escaping is done!
    Do not launch subprocess calls with shell=True (almost ever), and certainly
    don't do it without sanatizing.  shlex.quote seems like a good start.

    @param command {str} the raw string command as you would type in a shell.

    @returns {typing.List[str]} command split into an argv list.
    """
    return shlex.split(command)


# {str} the base path to which io of subordinate processes should be
# redirected.
_STDIO_BASE_PATH = "/tmp/memoryoracle/proc_io/"


def _make_stdio_redirect_file():
    """
    @returns {file like object} tempfile to which we can send/recieve
    subordinate process standard io.
    """
    return tempfile.NamedTemporaryFile(dir=_STDIO_BASE_PATH)


class SubordinateProcess(object):
    """
    A helper class to launch sub processes.
    """

    def __init__(self,
                 command: str,
                 process_alias: typing.Optional[str]=None) -> None:
        self._env = copy.deepcopy(os.environ)
        self._raw_command = command
        self._command = _parse_shell_command(self._raw_command)
        self._proc = None  # type: typing.Optional[subprocess.Popen]
        self._stdout_file = _make_stdio_redirect_file()
        self._stdin_file = _make_stdio_redirect_file()
        self._stderr_file = _make_stdio_redirect_file()
        self._process_alias = process_alias

    def launch(self) -> None:
        """
        Launch the subordinate process.
        """
        if self._process_alias is not None:
            command = [self._process_alias] + self._command[1:]
            executable = self._command[0]
        else:
            command = self._command
            executable = None
        self._proc = subprocess.Popen(command,
                                      shell=False,
                                      stdin=self._stdout_file,
                                      stdout=self._stdin_file,
                                      stderr=self._stderr_file,
                                      executable=executable,
                                      env=self._env)

    @property
    def pid(self) -> typing.Optional[int]:
        """
        @returns {int} process id number of subordinate process.
        (or None if the process is not started).
        """
        return self._proc.pid if self._proc is not None else None

    @property
    def stdout(self):
        """
        Return the file to which the subordinate stdout has been
        directed.

        @returns {file like object} the stdout temp file.
        """
        return self._stdout_file.name

    @property
    def stdin(self):
        """
        Return the file to which the subordinate stdin has been
        directed.

        @returns {file like object} the stdin temp file.
        """
        return self._stdin_file.name

    @property
    def stderr(self):
        """
        Return the file to which the subordinate stderr has been
        directed.

        @returns {file like object} the stderr temp file.
        """
        return self._stderr_file.name

    def wait(self) -> None:
        """
        Wait for the subordinate process to finish.
        """
        self._proc.wait()
