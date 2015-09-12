#!/usr/bin/env python3.5
# -*- encoding UTF-8 -*-
"""
Test suite for morunner launch module
"""
#-------------------------
# Standard Library Imports
#-------------------------
import subprocess
import typing # needed for type checking
import unittest
import pickle

#-------------------------
# External Library Imports
#-------------------------
# NONE

#--------------
# Local Imports
#--------------
import morunner.launch as launch


class TestInferiorArgumentParser(unittest.TestCase):

    def setUp(self) -> None:
        self.subject = launch.InferiorArgumentParser()

    def test_parse_debug(self) -> None:
        self.subject.parse_args(["--debug", "fakeProgram"])
        self.subject.parse_args(["--debug", "fakeProgram"])



class TestLaunch(unittest.TestCase):

    def setUp(self):
        self.run_instructions = None
        with open("./runinstr.p", "rb") as f:
            self.run_instructions = pickle.load(f)

    def test_launch_inferior(self):
        with launch.launch_inferior(["./bin/trivial.test"]) as inferior_proc:
            self.assertNotEqual(inferior_proc.pid, 0)

    def test_launch(self):
        inferior_proc, debugger_proc = launch.launch(self.run_instructions)
        with inferior_proc:
            self.assertNotEqual(inferior_proc.pid, 0)
            with debugger_proc:
                self.assertNotEqual(debugger_proc.pid, 0)




if __name__ == "__main__":
    unittest.main()
