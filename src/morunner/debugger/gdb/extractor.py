#!/usr/bin/env python
# -*- encoding UTF-8 -*-

#-------------------------
# Standard Library Imports
#-------------------------
import typing # needed for type checking
import queue
import collections


#-------------------------
# External Library Imports
#-------------------------
import gdb

#--------------
# Local Imports
#--------------
import morunner.identity
# import message
import morunner.debugger.gdb.debugger_info as debugger_info

# _handler = {gdb.Block: _extract_block,
#             gdb.Frame: _extract_frame,
#             gdb.LineTable: _extract_line_table,
#             gdb.Symbol: _extract_symbol,
#             gdb.Symtab: _extract_symtab,
#             gdb.Symtab_and_line: _extract_symtab_and_line,
#             gdb.Type: _extract_type,
#             gdb.Value: _extract_value
#            }

def _other_priority(obj: debugger_info.DebuggerObject) -> int:
    """
    Just return 0 priority for everything which has no predictable memory
    location.
    """
    return 0

_EXTRACTION_HANDLERS = {gdb.Value: lambda v: int(v.address),
                        gdb.Frame: lambda f: int(f.pc()),
                        gdb.Block: lambda b: b.start
                       }

def _extraction_priority(obj: debugger_info.DebuggerObject) -> int:
    return _EXTRACTION_HANDLERS.get(type(obj), _other_priority)(obj)


class ExtractionQueue(object):

    def __init__(self) -> None:
        self._queue = queue.PriorityQueue()

    def get(self) -> debugger_info.DebuggerObject:
        """
        Get an item from the extraction queue
        """
        return self._queue.get()[1]

    def put(self, inferior_object: debugger_info.DebuggerObject) -> None:
        """
        Put an item on the extraction queue
        """
        self.put((_extraction_priority(inferior_object), inferior_object))

AddressRange = collections.namedtuple('AddressRange',
                                      ['start', 'end'],
                                      verbose=False,
                                      rename=False
                                     )

Block = collections.namedtuple('Block',
                               ['is_valid', # type: bool
                                'address_range', # type: AddressRange
                                'function_name', # type: str
                                'is_static', # type: bool
                                'is_global' # type: bool
                               ],
                               verbose=False,
                               rename=False
                              )

def _extract_block(block: gdb.Block) -> Block:
    """
    Extract a block
    """
    return Block(is_valid=block.is_valid(),
                 start=block.start,
                 end=block.end,
                 function_name=block.function.name,
                 is_global=block.is_global,
                 is_static=block.is_static
                )

Value = collections.namedtuple('Value',
                               ['address_range', # type: AddressRange
                                'is_optimized_out', # type: bool
                                'species_code', # type: int
                                'type_name', # type: str
                                'dynamic_type_name', # type: str
                               ],
                               verbose=False,
                               rename=False
                              )

def _extract_value(value: gdb.Value) -> typing.Optional[Value]:
    """
    Extract a gdb.Value
    """
    if value.is_optimized_out:
        return None
    _start = int(value.address)
    _end = _start + value.type.sizeof
    _address_range = AddressRange(_start, _end)
    return Value(address_range=_address_range,
                 is_optimized_out=value.is_optimized_out,
                 species_code=value.type.code,
                 type_name=value.type.name,
                 dynamic_type_name=value.dynamic_type.name,
                )

Symbol = collections.namedtuple('Symbol',
                                ['species_code', # type: int
                                 'type_name', # type: str
                                 'line_number', # type: int
                                 'linkage_name', # type: str
                                 'print_name', # type: str
                                 'address_class', # type: int
                                 'needs_frame', # type: bool
                                 'is_argument', # type: bool
                                 'is_constant', # type: bool
                                 'is_function', # type: bool
                                 'is_variable' # type: bool
                                ],
                                verbose=False,
                                rename=False
                               )

def _extract_symbol(symbol: gdb.Symbol) -> Symbol:
    """
    Extract a gdb.Symbol
    """
    return Symbol(species_code=symbol.type.code,
                  type_name=symbol.type.name,
                  line_number=symbol.line,
                  linkage_name=symbol.linkage_name,
                  print_name=symbol.print_name,
                  address_class=symbol.addr_class,
                  needs_frame=symbol.needs_frame,
                  is_argument=symbol.is_argument,
                  is_constant=symbol.is_constant,
                  is_function=symbol.is_function,
                  is_variable=symbol.is_variable
                 )

Type = collections.namedtuple('Type',
                              ['type_code', # type: int
                               'name', # type: int
                               'size', # type: str
                               'tag', # type: str
                               'fields', # type: list
                               'template_arguments' # type: list
                              ],
                              verbose=False,
                              rename=False
                             )

Field = collections.namedtuple('Field',
                               ['bit_position', # type: int
                                'enumval', # type: typing.Optional[int]
                                'name', # type: typing.Optional[str]
                                'is_artificial', # type: bool
                                'is_base_class', # type: bool
                                'bitsize', # type: int
                                'type_name', # type: typing.Optional[str]
                               ],
                               verbose=False,
                               rename=False
                              )

def _extract_type(type_: gdb.Type) -> Type:
    """
    Extract a gdb.Type
    """
    fields = [extract_field(f) for f in type_.fields()]
    template_arguments = []
    try:
        i = 0
        while True:
            arg = type_.template_argument(i)
            if isinstance(arg, gdb.Value):
                arg = _extract_value(arg)
            elif isinstance(arg, gdb.Type):
                arg = _extract_type(arg)
            else:
                raise ValueError("Template argument is not a gdb.Value or gdb.Type?")
            template_arguments.append(arg)
            i += 1
    except gdb.error:
        pass

    return Type(type_code=type_.code,
                name=type_.name,
                size=type_.sizeof,
                tag=type_.tag,
                fields=fields,
                template_arguments=template_arguments
               )

def _extract_field(field: gdb.Field) -> Field:
    enumval=None
    try:
        enumval = field.enumval
    except gdb.error:
        pass
    return Field(bit_position=field.bitpos,
                 enumval=enumval,
                 name=field.name,
                 is_artificial=field.artificial,
                 is_base_class=field.is_base_class,
                 bitsize=field.bitsize,
                 type_name=field.type.name
                )

Inferior = collections.namedtuple('Inferior',
                                  ['num', # type: int
                                   'pid', # type: int
                                   'was_attached', # type: bool
                                  ],
                                  verbose=False,
                                  rename=False
                                 )

def _extract_inferior(inferior: gdb.Inferior) -> Inferior:
    return Inferior(num=inferior.num,
                    pid=inferior.pid,
                    was_attached=inferior.was_attached
                   )

Frame = collections.namedtuple('Frame',
                               ['function_name', # type: str
                                'type_code', # type: int
                               ],
                               verbose=False,
                               rename=False
                              )

def _extract_frame(frame: gdb.Frame) -> Frame:
    return Frame(function_name=frame.name(),
                 type_code=frame.type(),
                )

SymbolTableAndLine = collections.namedtuple('SymbolTableAndLine',
                                            ['source_file_name', # type: str
                                             'object_file_name', # type: str
                                             'producer', # type: int
                                            ],
                                            verbose=False,
                                            rename=False
                                           )

def _extract_symbol_table_and_line(symbol_table_and_line: gdb.Symtab_and_line
                                  ) -> SymbolTableAndLine:
    return SymbolTableAndLine(source_file_name=symbol_table.filename,
                              object_file_name=symbol_table.objfile,
                              producer=symbol_table.producer
                             )

_HANDLER = {gdb.Block: _extract_block,
            gdb.Field: _extract_field,
            gdb.Frame: _extract_frame,
            gdb.Inferior: _extract_inferior,
            gdb.Symbol: _extract_symbol,
            gdb.Symtab_and_line: _extract_symbol_table_and_line,
            gdb.Type: _extract_type,
            gdb.Value: _extract_value
           }

ExtractResultType = typing.Union[type(None),
                                 Block,
                                 Field,
                                 Frame,
                                 Inferior,
                                 Symbol,
                                 SymbolTableAndLine,
                                 Type,
                                 Value
                                ]

def extract(obj: debugger_info.DebuggerObject) -> ExtractResultType:
    return _HANDLER[type(obj)](obj)
