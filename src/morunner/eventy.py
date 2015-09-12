#!/usr/bin/env python
# -*- encoding UTF-8 -*

#-------------------------
# Standard Library Imports
#-------------------------
import enum
import typing
import morunner.identity

DebuggerObject = typing.TypeVar('DebuggerObject')

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


class BaseEvent(morunner.identity.Unique):
    """
    Common interface for all events.
    """

    def __init__(self,
                 action: Action,
                 subject: DebuggerObject,
                 parent_event: typing.Optional['BaseEvent']
                ) -> None:
        self.action = action
        self.subject = subject
        self.parent_event = parent_event

    # What?

    def species(self) -> DebuggerObject:
        return type(self.subject)


class ValueEvent(BaseEvent):

    def __init__(self,
                 action: Action,
                 subject: DebuggerObject,
                 parent_event: typing.Optional['BaseEvent']
                ) -> None:
        super().__init__(action, subject, parent_event)
        self.

    def _start_address(self) -> int:
        return self.subject.address

    def _end_address(self) -> int:
        return self.subject.address + self.subject.size

    def _address_range(self) -> typing.Tuple[int, int]:
        return (self.start_address, self.end_address)

    def _is_optimized_out(self) -> bool:
        return self.subject.is_optimized_out

    def _type(self):
        return self.subject.type

    def _dynamic_type(self):
        return self.subject.dynamic_type

    def _is_lazy(self):


    # # When?

    # def line_number(self) -> int:
    #     raise NotImplementedError()

    # def source_file(self) -> str:
    #     raise NotImplementedError()

    # def object_file(self) -> str:
    #     raise NotImplementedError()
