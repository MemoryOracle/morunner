#!/usr/bin/env python
# -*- encoding UTF-8 -*-

import communication


class Registry(object):

    def __init__(self):
        self.breaks = dict()
        self.broadcaster = communication.Broadcaster()
        self.
