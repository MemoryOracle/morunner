#!/usr/bin/env python3.5
# -*- encoding UTF-8 -*-
"""
@package morunner

Functions responsible for launching the runner (which is more difficult than
you might guess).
"""

#-------------------------
# Standard Library Imports
#-------------------------
import argparse
import multiprocessing
import multiprocessing.connection
import queue
import subprocess
import sys
import typing # needed for type checking
import io
import tempfile
import time
import os
import copy
import pickle

#-------------------------
# External Library Imports
#-------------------------
# NONE

#--------------
# Local Imports
#--------------
# NONE


class InferiorArgumentParser(object):
    """
    Parses arguments given to the inferior.
    """

    def __init__(self) -> None:
        self._parser = argparse.ArgumentParser()
        self._parser.add_argument("--debug",
                                  help="the target program to be debuged",
                                  type=str
                                 )

    def parse_args(self, args: typing.Optional[typing.Iterator[str]]=None) -> argparse.Namespace:
        """
        Parse arguments to be given to the inferior.
        """
        if args is not None:
            args = self._parser.parse_args(args)
        else:
            args = self._parser.parse_args()
        return args


def assemble_run_instructions() -> argparse.Namespace:
    """
    Assemble an object which describes what the user has asked us to do (from
    the command line arguments)
    """
    args = parser.parse_args()
    return parser.parse_args()


def launch_inferior(inferior_args: typing.Iterator[str]) -> subprocess.Popen:
    inferior_args = ["memoryoracle-inferior"] + list(inferior_args)
    inferior_io = tempfile.NamedTemporaryFile(dir="./")
    inferior_proc = subprocess.Popen(inferior_args,
                                     shell=False,
                                     stdin=inferior_io,
                                     stdout=inferior_io,
                                     stderr=inferior_io,
                                     executable="valgrind"
                                    )
    return inferior_proc


def _launch_gdb(inferior_pid: int,
                gdb_args: typing.Optional[typing.Iterator[str]]=None
               ) -> subprocess.Popen:
    """
    Start up a gdb instance
    """

    gdb_io = tempfile.NamedTemporaryFile(dir="./")
    env = copy.deepcopy(os.environ)
    env["PYTHONPATH"] = "/home/dnoland/MemoryOracle/morunner/src"

    gdb_launch_commands = tempfile.NamedTemporaryFile(dir="/tmp/memoryoracle/", prefix="gdb--")
    # connect to vgdb
    gdb_launch_commands.write("target remote | vgdb --pid={}".format(inferior_pid))
    # stop at main
    gdb_launch_commands.write("break main")
    # TODO: Make this import a more reasonable module...
    # import the extractor module
    gdb_launch_commands.write("py import morunner.debugger.gdb.extractor as extractor")
    args = ["memoryoracle-debugger",
            "-n", # Do not run gdb initialization files
            "-x", gdb_launch_commands.name # source initial commands
           ]
    if gdb_args is not None:
        args += list(gdb_args)

    gdb_proc = subprocess.Popen(args,
                                shell=False,
                                stdout=gdb_io,
                                stdin=gdb_io,
                                stderr=gdb_io,
                                executable="gdb",
                                env=env
                               )
    return gdb_proc


def launch_master_server() -> None:
    """
    Launch the master server which spawns child processes.
    """
    key_loc = "/home/dnoland/MemoryOracle/morunner/src/test/_test_subjects_/"
    with open(key_loc, "rb") as key_file:
        auth_key = key_file.read()




def launch(run_instructions: argparse.Namespace
          ) -> typing.Tuple[subprocess.Popen, subprocess.Popen]:
    """
    Launch the runner
    """
    with open("/home/dnoland/runinstr.p", "wb") as run_file:
        pickle.dump(run_instructions, run_file)
    inferior_args = [run_instructions.target]
    inferior_proc = launch_inferior(inferior_args)
    gdb_proc = _launch_gdb(inferior_proc.pid, inferior_args)
    return (inferior_proc, gdb_proc)


def main() -> None:
    run = assemble_run_instructions()
    inferior, debugger = launch(run)
    debugger.wait()
    inferior.wait()


if __name__ == "__main__":
    main()
