#!/usr/bin/env python
# -*- encoding UTF-8 -*-

#-------------------------
# Standard Library Imports
#-------------------------
import typing

#-------------------------
# External Library Imports
#-------------------------
import gdb

#--------------
# Local Imports
#--------------
# NONE

DEBUGGER_TYPES = (gdb.Architecture,
                  gdb.Block,
                  gdb.BlockIterator,
                  gdb.Breakpoint,
                  gdb.BreakpointEvent,
                  gdb.ClearObjFilesEvent,
                  gdb.Command,
                  gdb.ContinueEvent,
                  gdb.Event,
                  gdb.EventRegistry,
                  gdb.ExitedEvent,
                  gdb.Field,
                  gdb.FinishBreakpoint,
                  gdb.Frame,
                  gdb.Function,
                  gdb.Inferior,
                  gdb.InferiorCallPostEvent,
                  gdb.InferiorCallPreEvent,
                  gdb.InferiorThread,
                  gdb.LineTable,
                  gdb.LineTableEntry,
                  gdb.LineTableIterator,
                  gdb.Membuf,
                  gdb.MemoryChangedEvent,
                  gdb.NewObjFileEvent,
                  gdb.Objfile,
                  gdb.Parameter,
                  gdb.PendingFrame,
                  gdb.Progspace,
                  gdb.RegisterChangedEvent,
                  gdb.SignalEvent,
                  gdb.StopEvent,
                  gdb.Symbol,
                  gdb.Symtab,
                  gdb.Symtab_and_line,
                  gdb.ThreadEvent,
                  gdb.Type,
                  gdb.TypeIterator,
                  gdb.UnwindInfo,
                  gdb.Value
                 )

DebuggerObject = typing.TypeVar('DebuggerDataType', *DEBUGGER_TYPES)
