#!/usr/bin/env python
# -*- encoding UTF-8 -*-

#-------------------------
# Standard Library Imports
#-------------------------
import typing # needed for type checking
import queue

#-------------------------
# External Library Imports
#-------------------------
import gdb

#--------------
# Local Imports
#--------------
import morunner.identity
import debugger_info


class Task(identity.Unique):

    def __init__(self,
                 data: debugger_info.DebuggerObject
                ) -> None:
        super().__init__()
        self._data = data
        if isinstance(self._data, gdb.Value):
            self._priority = int(self._data.address)
        elif isinstance(self._data, gdb.Frame):
            self._priority = int(self._data.pc())
        elif isinstance(self._data, gdb.Block):
            self._priority = self._data.start
        else:
            self._priority = 0

    @property
    def data(self) -> debugger_info.DebuggerObject:
        return self._data

    @property
    def priority(self) -> int:
        return self._priority


class TaskQueue(object):

    def __init__(self):
        self._queue = queue.PriorityQueue()

    def get(self) -> Task:
        return self._queue.get()

    def put(self, task: Task) -> None:
        self.put((task.priority, task.data))

