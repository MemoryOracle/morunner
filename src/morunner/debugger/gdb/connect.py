#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import multiprocessing.connection as connection
import typing  # needed for type checking
import time

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
import morunner.authentication as authentication

_address = "/tmp/memoryoracle/session-server.sock"
_key_file = "/tmp/memoryoracle/session-auth.key"


def attach(cmd_line: typing.Iterator[str]) -> None:
    authkey = authentication.read_key(_key_file)
    with connection.Client(_address,
                           family="AF_UNIX",
                           authkey=authkey) as server:
        while True:
            server.send(["ls", "-l"])
            time.sleep(1)

if __name__ == "__main__":
    attach(["ls", "-l"])
