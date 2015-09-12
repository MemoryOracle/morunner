#!/usr/bin/env python
# -*- encoding UTF-8 -*-

import gdb
import collections

BreakCondition = collections.namedtuple('BreakCondition',
                                        [
                                         'spec',
                                         'type',
                                         'wp_class',
                                         'internal',
                                         'temporary'
                                        ]
                                       )
# Note that the spec is missing: this makes it required
BreakCondition.__new__.__defaults__ = (gdb.BP_BREAKPOINT, # default type
                                       None,  # default wp_class
                                       True,  # default to internal bp
                                       False  # default to non temporary bp
                                      )


class Task(object):

    def __init__(self, registry):




class Break(gdb.Breakpoint):

    def __init__(self, condition: BreakCondition) -> None:
        super(Break, self).__init__(*condition)
        self.silent = True
        self.enabled = True
        self.tasks = set()

    def add_task(self, task) -> None:
        self.tasks.add(task)

    def add_tasks(self, tasks):
        self.tasks.update(tasks)

    def stop(self):
        frame = gdb.newest_frame()
        for task in self.tasks:
            task.run(frame)
        return False

