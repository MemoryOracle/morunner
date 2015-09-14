#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import ssl
import typing  # needed for type checking
import asyncio

# ------------------------
# External Library Imports
# ------------------------
import websockets

# -------------
# Local Imports
# -------------
import authentication
import subordinate


def ssl_context_factory() -> ssl.SSLContext:
    return ssl.create_default_context(purpose=ssl.Purpose.SERVER_AUTH,
                                      cafile="/home/dnoland/github/MemoryOracle/morunner/src/morunner/security/encryption/certificates/ca.crt")


class LauncherDaemon(object):
    """
    Daemon which listens for requests to launch memory-oracle instances.
    """

    def __init__(self, address: str, port: int) -> None:
        self.address = address
        self.port = port
        # TODO: deduce type of self._server
        self._server = None  # type: typing.Optional[]

    def run(self) -> None:
        self._server = websockets.serve(self.handle,
                                        host=self.address,
                                        port=self.port,
                                        ssl=ssl_context_factory())
        print(type(self._server))
        asyncio.get_event_loop().run_until_complete(self._server)
        print("server started")
        asyncio.get_event_loop().run_forever()

    async def handle(self, websocket, path) -> None:
        print("Type of websocket: ", type(websocket))
        print("Type of path: ", type(path))
        name = await websocket.recv()
        print("< {}".format(name))
        greeting = "Hello {}!".format(name)
        await websocket.send(greeting)
        print("> {}".format(greeting))


def main() -> None:
    launcher_daemon = LauncherDaemon("localhost", 8765)
    launcher_daemon.run()


if __name__ == "__main__":
    main()
