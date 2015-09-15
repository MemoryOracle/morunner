#!/usr/bin/env python3.5
# -*- encoding UTF-8 -*-
"""
@package morunner

Functions responsible for launching the runner (which is more difficult than
you might guess).
"""

# ------------------------
# Standard Library Imports
# ------------------------
import multiprocessing.connection as connection
import typing  # needed for type checking
import uuid

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
import security.authentication


class Session(object):

    def __init__(self) -> None:
        self._session_id = uuid.uuid4()
        self._debugger = None  # type: typing.Optional[Debugger]
        self._debuggee = None  # type: typing.Optional[Debuggee]

    def launch(self) -> None:
        self._debuggee.launch()
        self._debugger.launch()

    def wait(self) -> None:
        self._debugger.wait()
        self._debuggee.wait()

    def __hash__(self):
        return hash(self._debugger)


class SessionServer(object):

    _address = "/tmp/memoryoracle/session-server.sock"
    _key_location = "/tmp/memoryoracle/session-auth.key"

    def __init__(self) -> None:
        self._sessions = set()  # type: typing.Set[Session]
        self.__key = authentication.EphemeralKey(SessionServer._key_location)
        self._connections = []  # type: typing.List[connection.Connection]

    def run(self):
        with connection.Listener(address=SessionServer._address,
                                 family='AF_UNIX',
                                 authkey=self.__key.bytes) as listener:
            with listener.accept() as client:
                print("connection accepted")
                while True:
                    for ready_client in connection.wait([client]):
                        try:
                            cmd_line = ready_client.recv()
                            print(cmd_line)
                        except EOFError:
                            print("end of file?")


# def _launch_gdb(inferior_pid: int,
#                 gdb_args: typing.Optional[typing.Iterator[str]]=None
#                ) -> subprocess.Popen:
#     """
#     Start up a gdb instance
#     """
#
#     gdb_io = tempfile.NamedTemporaryFile(dir="./")
#     env = copy.deepcopy(os.environ)
#     env["PYTHONPATH"] = "/home/dnoland/MemoryOracle/morunner/src"
#
#     gdb_launch_commands = tempfile.NamedTemporaryFile(dir="/tmp/memoryoracle/", prefix="gdb--")
#     # connect to vgdb
#     gdb_launch_commands.write("target remote | vgdb --pid={}".format(inferior_pid))
#     # stop at main
#     gdb_launch_commands.write("break main")
#     # TODO: Make this import a more reasonable module...
#     # import the extractor module
#     gdb_launch_commands.write("py import morunner.debugger.gdb.extractor as extractor")
#     args = ["memoryoracle-debugger",
#             "-n", # Do not run gdb initialization files
#             "-x", gdb_launch_commands.name # source initial commands
#            ]
#     if gdb_args is not None:
#         args += list(gdb_args)
#
#     gdb_proc = subprocess.Popen(args,
#                                 shell=False,
#                                 stdout=gdb_io,
#                                 stdin=gdb_io,
#                                 stderr=gdb_io,
#                                 executable="gdb",
#                                 env=env
#                                )
#     return gdb_proc
#
#
# def launch_master_server() -> None:
#     """
#     Launch the master server which spawns child processes.
#     """
#     key_loc = "/home/dnoland/MemoryOracle/morunner/src/test/_test_subjects_/"
#     with open(key_loc, "rb") as key_file:
#         auth_key = key_file.read()
#
#
#
#
# def launch(run_instructions: argparse.Namespace
#           ) -> typing.Tuple[subprocess.Popen, subprocess.Popen]:
#     """
#     Launch the runner
#     """
#     with open("/home/dnoland/runinstr.p", "wb") as run_file:
#         pickle.dump(run_instructions, run_file)
#     inferior_args = [run_instructions.target]
#     inferior_proc = launch_inferior(inferior_args)
#     gdb_proc = _launch_gdb(inferior_proc.pid, inferior_args)
#     return (inferior_proc, gdb_proc)


def main() -> None:
    SessionServer().run()
    # run = assemble_run_instructions()
    # inferior, debugger = launch(run)
    # debugger.wait()
    # inferior.wait()


if __name__ == "__main__":
    main()
