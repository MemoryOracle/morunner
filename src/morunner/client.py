#!/usr/bin/env python
# -*- encoding UTF-8 -*-

#-------------------------
# Standard Library Imports
#-------------------------
import multiprocessing.connection
import typing # needed for type checking
import uuid
import os

#-------------------------
# External Library Imports
#-------------------------
# NONE

#--------------
# Local Imports
#--------------
import morunner.identity as identity
import morunner.message


class Client(identity.Unique):

    def __init__(self):
        super().__init__()
        _socketname = "memoryoracle-com-" + str(hash(self)) + ".socket"
        self.client = multiprocessing.connection.Client()
