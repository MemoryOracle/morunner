#!/usr/bin/env python
# -*- encoding UTF-8 -*-

# ------------------------
# Standard Library Imports
# ------------------------
import ssl
import typing  # needed for type checking
import configparser

# ------------------------
# External Library Imports
# ------------------------
# NONE

# -------------
# Local Imports
# -------------
# NONE


def build_ssl_context(tls_config: configparser.SectionProxy
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
    context.set_ecdh_curve(tls_config["ecdh-curve"])
    context.load_cert_chain(certfile=tls_config["crt-path"],
                            keyfile=tls_config["key-path"],
                            password=tls_config["key-password"])
    return context
