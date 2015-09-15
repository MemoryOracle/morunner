#!/usr/bin/env python3.5
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import typing  # needed for type checking
import uuid
import os
import stat
import configparser

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
import morunner.subordinate
import morunner.authentication as authentication


def _generate_connection_id() -> str:
    """
    @returns {int} a unique id used by the spawned debugger to help it connect
    to the correct process.
    """
    return str(uuid.uuid4())



def create_gdb_init(gdb_conf: configparser.SectionProxy) -> None:
    """
    Temp function.  Just a quick hack to build the file containing initial
    commands for GDBProcesses.
    """
    # deny all access to outside users
    os.makedirs(gdb_conf["config-path"], mode=0o700, exist_ok=True)
    os.chmod(gdb_conf["config-path"],
             mode=stat.S_IRWXU,
             follow_symlinks=False)
    target = gdb_conf["init-path"]
    with authentication.secure_open(target, "w") as init:
        os.truncate(target, 0)  # wipe the init file
        init.write("python import morunner.debugger.gdb.connect")
        init.write("python morunner.debugger.gdb.connect.accept_task()")


class GDBProcess(morunner.subordinate.SubordinateProcess):
    """
    Launch a gdb instance.
    """
    # -n Do not run gdb initialization files
    # -x source commands from specified file
    _EXECUTABLE = "gdb -n -x " + _GDB_INIT_PATH + _GDB_INIT_FILE_NAME
    _PROCESS_ALIAS = "memoryoracle-gdb"

    def __init__(self) -> None:
        super().__init__(command=self._EXECUTABLE,
                         process_alias=self._PROCESS_ALIAS)
        self.connection_id = _generate_connection_id()
        self._env["MEMORYORACLE_CONNECTION_ID"] = self.connection_id
        self._env["PYTHONPATH"] = "/home/dnoland/MemoryOracle/morunner/src"
