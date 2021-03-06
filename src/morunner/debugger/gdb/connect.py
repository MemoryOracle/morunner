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
import morunner.security as security

_address = "/tmp/memoryoracle/session-server.sock"
_key_file = "/tmp/memoryoracle/session-auth.key"


def attach(config) -> None:
    authkey = security.read_key(_key_file)
    with connection.Client(_address,
                           family="AF_UNIX",
                           authkey=authkey) as server:
        while True:
            server.send(["ls", "-l"])
            time.sleep(1)

if __name__ == "__main__":
    attach(["ls", "-l"])
