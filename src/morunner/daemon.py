#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import ssl
import typing  # needed for type checking
import asyncio
import configparser
import json

# ------------------------
# External Library Imports
# ------------------------
import tornado
import tornado.web
import tornado.websocket
import tornado.ioloop
import tornado.httpserver

# -------------
# Local Imports
# -------------
import authentication
import subordinate
import config


def ssl_context_factory(tls_config: configparser.SectionProxy
                        ) -> ssl.SSLContext:
    context = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
    # context.verify_mode = ssl.CERT_REQUIRED
    # context.options = (ssl.OP_CIPHER_SERVER_PREFERENCE |
                       # ssl.OP_SINGLE_ECDH_USE)
    # context.verify_flags = (ssl.VERIFY_CRL_CHECK_CHAIN |
                            # ssl.VERIFY_X509_STRICT)
    # context.verify_mode = ssl.CERT_REQUIRED

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
    context.set_ecdh_curve(tls_config["ecdh-curve"])
    context.load_cert_chain(certfile=tls_config["crt-path"],
                            keyfile=tls_config["key-path"],
                            password=tls_config["key-password"])
    return context


class IndexHandler(tornado.web.RequestHandler):

    def get(self):
        self.render("index.html")


class SocketHandler(tornado.websocket.WebSocketHandler):

    def check_origin(self, origin):
        return True

    def open(self):
        print("WebSocket opened")

    def on_message(self, message):
        self.write_message("You said: " + message)

    def on_close(self):
        print("WebSocket closed")


class ApiHandler(tornado.web.RequestHandler):

    @tornado.web.asynchronous
    def get(self, *args):
        self.finish()
        id = self.get_argument("id")
        value = self.get_argument("value")
        data = {"id": id, "value" : value}
        data = json.dumps(data)

    @tornado.web.asynchronous
    def post(self):
        pass

CONF = config.Configuration()
SERVER_SETTINGS = {"ssl_options": ssl_context_factory(CONF.read["Security"])}
HANDLERS = [(r'/', IndexHandler),
            (r'/ws', SocketHandler),
            (r'/api', ApiHandler),
            (r'/(favicon.ico)',
             tornado.web.StaticFileHandler,
             {'path': '../'}),
            (r'/(rest_api_example.png)',
             tornado.web.StaticFileHandler,
             {'path': './'})]
app = tornado.web.Application(HANDLERS)


# class LauncherDaemon(object):
#     """
#     Daemon which listens for requests to launch memory-oracle instances.
#     """
#
#     def __init__(self, config: configparser.ConfigParser) -> None:
#         self._config = config
#         self.address = config["System"]["hostname"]
#         self.port = config["System"].getint("port")
#         # TODO: deduce type of self._server
#         self._server = None
#
#     def run(self) -> None:
#         tls_context = ssl_context_factory(self._config["Security"])
#         self._server = websockets.serve(handle,
#                                         host=self.address,
#                                         port=self.port,
#                                         ssl=tls_context)
#         print(type(self._server))
#         asyncio.get_event_loop().run_until_complete(self._server)
#         asyncio.get_event_loop().run_forever()
#
#
# async def handle(websocket: websockets.server.WebSocketServerProtocol,
#                  path: str) -> None:
#     while True:
#         try:
#             name = await websocket.recv()
#             print("< {}".format(name))
#             greeting = "Hello {}!".format(name)
#             await websocket.send(greeting)
#             print("> {}".format(greeting))
#         except:
#             break


def main() -> None:
    conf = config.Configuration()
    launcher_daemon = LauncherDaemon(conf.read)
    launcher_daemon.run()


if __name__ == "__main__":
    httpd = tornado.httpserver.HTTPServer(app, **SERVER_SETTINGS)
    httpd.listen(18942)
    tornado.ioloop.IOLoop.current().start()
    # main()
