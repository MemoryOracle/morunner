#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import os
import os.path
import typing  # needed for type checking
import random
import stat

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
# NONE

_GDB_INIT_PATH = "/tmp/memoryoracle/gdb/"
_GDB_INIT_FILE_NAME = "init"

def create_gdb_init() -> None:
    # deny all access to outside users
    os.makedirs(_GDB_INIT_PATH, mode=0o700, exist_ok=True)
    os.chmod(_GDB_INIT_PATH,
             mode=stat.S_IRWXU,
             follow_symlinks=False)
    target = _GDB_INIT_PATH + _GDB_INIT_FILE_NAME
    with secure_open(target, "w") as init:
        os.truncate(target, 0)  # wipe the init file
        init.write("python import morunner.debugger.gdb.connect")
        init.write("python morunner.debugger.gdb.connect.accept_task()")


def secure_open(path: str, openmode: str="r"):
    """
    Open a file "securely".  The file will be constructed securely in the sense
    that, provided your operating system is not compromised, other (non admin)
    users on the system can neither read nor write to it.

    WARNING: If the file already exists, its permissions are not changed.
    WARNING: This function is NOT thread safe.

    @param path {str} path to the file you would like to securely create /
    open.

    @param openmode {str} standard python "r" or "w" or "rb" and so forth modes
    to specify how python should prep to handle the file.

    @returns {file like object} the "securely" opened file.
    """
    # TODO: Make this function threadsafe.
    orig_umask = os.umask(0)
    try:
        handle = os.open(path,
                         (os.O_WRONLY |
                          os.O_RDONLY |
                          os.O_CREAT) & ~os.O_TRUNC,
                         stat.S_IWUSR | stat.S_IRUSR)
        secure_file = os.fdopen(handle, openmode)
    finally:
        os.umask(orig_umask)
    return secure_file


class EphemeralKey(object):
    """
    A key that automatically vanishes when you are done with it.
    """

    def __init__(self, path: str,
                 key_length: int=512) -> None:
        self.__key_length = key_length
        self.__keybytes = self.__generate_key()
        self.__path = path
        self.__write_key_file()

    @property
    def bytes(self):
        """
        Get the raw key bytes
        """
        return self.__keybytes

    def __generate_key(self) -> bytes:
        """
        Compute a random key of at least 256 bytes.
        """
        # NOTE: 256 bytes is minimum key length (arbitrary, but should be fine)
        if self.__key_length >= 256:
            # NOTE: don't confuse bit length with byte length!
            key = random.SystemRandom().getrandbits(self.__key_length*8)
        else:
            raise ValueError("key_length must be >= 256")
        return int.to_bytes(key,
                            length=self.__key_length,
                            byteorder="little")

    def __write_key_file(self) -> None:
        """
        Write a random key to a file.
        """
        try:
            with secure_open(self.__path, "wb") as authfile:
                authfile.write(self.__keybytes)
        finally:
            # set the authfile to user read only
            # this is less a security thing than an error catching thing.
            os.chmod(self.__path, stat.S_IRUSR)

    def __enter__(self):
        return self

    def __exit__(self, type_, value, traceback):
        self._cleanup()

    def __del__(self):
        self._cleanup()

    def _cleanup(self):
        """
        Attempt to securely wipe and unlink the key file.
        """
        # I can not decide on a security model yet, so this is more of an
        # experiment than anything.  It is likely not a perfect solution,
        # especially on an SSD.  Still, the key should be kept on /tmp.
        os.chmod(self.__path, stat.S_IWUSR)
        try:
            with secure_open(self.__path, "wb") as authfile:
                authfile.write(self.__generate_key())
        finally:
            # remove the key file.  This is potentially a bad idea, just
            # because we *may* not have overwritten the key file at this
            # point, and as a result we may leave a potentially useful key
            # in a recoverable state.
            os.unlink(self.__path)


def read_key(path: str) -> bytes:
    """
    Read a key at path.
    """
    try:
        handle = os.open(path,
                         # file should be read only and already exist
                         os.O_RDONLY & ~os.O_CREAT,
                         stat.S_IRUSR)
        authfile = os.fdopen(handle, "rb")
        keybytes = authfile.read()
    finally:
        authfile.close()
    return keybytes
