#!/usr/bin/env python
# -*- encoding UTF-8 -*-
import morunner.debugger.gdb.connect


def attach() -> None:
    morunner.debugger.gdb.connect.attach()


if __name__ == "__main__":
    attach()
