#!/usr/bin/env python
# -*- encoding UTF-8 -*-

#-------------------------
# Standard Library Imports
#-------------------------
import enum

#-------------------------
# External Library Imports
#-------------------------

#--------------
# Local Imports
#--------------
import identity


@enum.unique
class Action(enum.Enum):
    """
    The list of valid action codes for messages.
    """

    discovery = 1
    read = 2
    write = 3
    initialize = 4
    destroy = 5
    allocation = 6
    deallocation = 7


@enum.unique
class Subject(enum.Enum):
    """
    The list of valid subject codes for messages.
    """

    value = 0
    type = 1
    frame = 2
    inferior = 3
    thread = 4
    progspace = 5
    objfile = 6
    block = 7
    symbol = 8
    symbol_table = 9
    line_table = 10
    user_breakpoint = 11
    user_watchpoint = 12
    architecture = 13
    macro = 14


class MessageDescription(object):
    """
    Provides data about a message, which subscribers can use to decide if they
    are "interested."
    """

    def __init__(self,
                 action: Action,
                 subject: Subject
                ) -> None:
        self._action = action
        self._subject = subject

    @property
    def action(self) -> Action:
        return self._action

    @property
    def subject(self) -> Subject:
        return self._subject


class Message(identity.Unique):
    """
    Message between components of the runner.
    """

    def __init__(self,
                 action: Action,
                 subject: Subject,
                 data: object
                ) -> None:
        super().__init__()
        self._action = action
        self._subject = subject
        self._data = data
        self._description = None

    @property
    def action(self) -> Action:
        return self._action

    @property
    def subject(self) -> Subject:
        return self._subject
