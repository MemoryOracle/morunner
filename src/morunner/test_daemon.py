#!/usr/bin/env python3.5
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import typing  # needed for type checking
import asyncio
import ssl

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
    return ssl.create_default_context(purpose=ssl.Purpose.CLIENT_AUTH,
                                      cafile="/home/dnoland/github/MemoryOracle/morunner/src/morunner/security/encryption/certificates/ca.crt")

async def hello() -> None:
    websocket = await websockets.connect('wss://localhost:8765', ssl=ssl_context_factory())
    name = input("What's your name? ")
    await websocket.send(name)
    print("> {}".format(name))
    greeting = await websocket.recv()
    print("< {}".format(greeting))
    await websocket.close()


def main() -> None:
    asyncio.get_event_loop().run_until_complete(hello())


if __name__ == "__main__":
    main()
