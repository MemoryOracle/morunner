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
import socket
import pprint

# ------------------------
# External Library Imports
# ------------------------
import tornado
import tornado.web
import tornado.websocket
import tornado.ioloop
import tornado.httpserver
import tornado.netutil
import tornado.process

# -------------
# Local Imports
# -------------
import authentication
import subordinate
import config
import security


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


def main() -> None:
    port = CONF.read['System'].getint('port')
    address = CONF.read['System']['address']
    hostname = CONF.read['System']['hostname']
    sockets = tornado.netutil.bind_sockets(port=port,
                                           address=address,
                                           family=socket.AF_INET6)
    context = security.ssl_context_factory(CONF.read["Security"])
    ssockets = [context.wrap_socket(sock,
                                    do_handshake_on_connect=False,
                                    server_hostname=hostname)
                for sock in sockets]
    server_settings = {"ssl_options": context}
    httpd = tornado.httpserver.HTTPServer(app, **server_settings)
    httpd.add_sockets(ssockets)
    tornado.ioloop.IOLoop.current().start()


if __name__ == '__main__':
    main()
