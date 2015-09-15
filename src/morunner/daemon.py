#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import ssl
import typing  # needed for type checking
import asyncio
import configparser

# ------------------------
# External Library Imports
# ------------------------
import websockets
import websockets.server

# -------------
# Local Imports
# -------------
import authentication
import subordinate
import config


def ssl_context_factory(tls_config: configparser.SectionProxy
                        ) -> ssl.SSLContext:
    context = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
    context.verify_mode = ssl.CERT_REQUIRED
    context.options = (ssl.OP_CIPHER_SERVER_PREFERENCE |
                       ssl.OP_SINGLE_ECDH_USE)
    context.verify_flags = (ssl.VERIFY_CRL_CHECK_CHAIN |
                            ssl.VERIFY_X509_STRICT)
    context.verify_mode = ssl.CERT_REQUIRED

    # TODO: more testing is needed here.  I don't understand if / how the
    # websockets lib is checking the hostname.  This is *required* for a secure
    # connection according to the python ssl documentation.  That said, I am
    # not sure I fully understand why, as we should be verifying the
    # client/server by certificate signature.

    # context.server_hostname = tls_config["hostname"]
    # context.check_hostname = True
    context.load_verify_locations(cafile=tls_config["ca-crt-path"])
    context.load_verify_locations(cafile=tls_config["crl-path"])
    context.set_ciphers(tls_config["cipher-list"])
    context.set_ecdh_curve('sect571k1')
    context.load_cert_chain(certfile=tls_config["crt-path"],
                            keyfile=tls_config["key-path"],
                            password=tls_config["key-password"])
    return context


class LauncherDaemon(object):
    """
    Daemon which listens for requests to launch memory-oracle instances.
    """

    def __init__(self, config: configparser.ConfigParser) -> None:
        self._config = config
        self.address = config["System"]["hostname"]
        self.port = config["System"].getint("port")
        # TODO: deduce type of self._server
        self._server = None

    def run(self) -> None:
        tls_context = ssl_context_factory(self._config["Tls"])
        self._server = websockets.serve(handle,
                                        host=self.address,
                                        port=self.port,
                                        ssl=tls_context)
        print(type(self._server))
        asyncio.get_event_loop().run_until_complete(self._server)
        asyncio.get_event_loop().run_forever()


async def handle(websocket: websockets.server.WebSocketServerProtocol,
                 path: str) -> None:
    while True:
        try:
            name = await websocket.recv()
            print("< {}".format(name))
            greeting = "Hello {}!".format(name)
            await websocket.send(greeting)
            print("> {}".format(greeting))
        except:
            break


def main() -> None:
    conf = config.parse()
    launcher_daemon = LauncherDaemon(conf)
    launcher_daemon.run()


if __name__ == "__main__":
    main()
