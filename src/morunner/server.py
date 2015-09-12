#!/usr/bin/env python
# -*- encoding UTF-8 -*-

#-------------------------
# Standard Library Imports
#-------------------------
import multiprocessing.connection
import typing # needed for type checking
import uuid
import os
import tempfile
import stat

#-------------------------
# External Library Imports
#-------------------------
# NONE

#--------------
# Local Imports
#--------------
import morunner.identity as identity
import morunner.message


def _build_temp_directory() -> tempfile.TemporaryDirectory:
    return tempfile.TemporaryDirectory(prefix="memoryoracle-")


def _build_temp_file(tempdir: typing.Optional[tempfile.TemporaryDirectory]=None
                    ) -> tempfile.NamedTemporaryFile:
    if tempdir is not None:
        _tempdir = tempdir
    else:
        _tempdir = _build_temp_directory()
    return tempfile.NamedTemporaryFile(mode="w",
                                       dir=_tempdir.name,
                                       prefix="memoryoracle-",
                                       suffix=".socket")


class MasterServer(identity.Unique):

    def __init__(self, key_loc: str) -> None:
        self._key_loc = key_loc
        st = os.stat(self._key_loc)

        self._





class Server(identity.Unique):

    _DEFAULT_KEY_SIZE = 4096

    def __init__(self, keysize: typing.Optional[int]=None) -> None:
        super().__init__()
        if keysize is None:
            _authkey = os.urandom(Server._DEFAULT_KEY_SIZE) # type: bytes
        elif keysize >= 128:
            _authkey = os.urandom(keysize) # type: bytes
        else:
            raise ValueError("Keysize must be at least 128 bytes!")
        comfile = _build_temp_file()
        self._server = multiprocessing.connection.Listener(address=comfile.name,
                                                           family="AF_UNIX",
                                                           authenticate=True,
                                                           authkey=_authkey
                                                          )
        del _authkey

    def run(self):
        with
        with self._server.accept() as conn:
            print("Accepted connection!")


