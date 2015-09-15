#!/usr/bin/env python3.5
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import typing  # needed for type checking
import asyncio
import ssl
import socket
import configparser

# ------------------------
# External Library Imports
# ------------------------
import websockets

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
    context.check_hostname = True
    context.load_verify_locations(cafile=tls_config["ca-crt-path"])
    context.load_verify_locations(cafile=tls_config["crl-path"])
    context.set_ciphers(tls_config["cipher-list"])
    context.set_ecdh_curve('sect571k1')
    context.load_cert_chain(certfile=tls_config["crt-path"],
                            keyfile=tls_config["key-path"],
                            password=tls_config["key-password"])
    return context


async def hello(conf: configparser.ConfigParser) -> None:
    hostname = conf["System"]["hostname"]
    port = conf["System"]["port"]
    websocket = await websockets.connect("wss://" + hostname + ":" + port,
                                         ssl=ssl_context_factory(conf["Security"]))
    name = input("What's your name? ")
    await websocket.send(name)
    print("> {}".format(name))
    greeting = await websocket.recv()
    print("< {}".format(greeting))
    await websocket.close()


def main() -> None:
    conf = config.Configuration()
    conf.merge("/home/dnoland/github/MemoryOracle/morunner/conf/security/localhost.ini")
    import pprint
    pp = pprint.PrettyPrinter()
    pp.pprint(conf.read.__dict__)
    pp.pprint(conf.read["System"]["hostname"])
    pp.pprint(conf.read["Security"]["key-path"])
    asyncio.get_event_loop().run_until_complete(hello(conf.read))


if __name__ == "__main__":
    main()
