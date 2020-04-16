# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: monitor.proto

from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='monitor.proto',
  package='fkie_multimaster_msgs.monitor',
  syntax='proto3',
  serialized_options=None,
  serialized_pb=b'\n\rmonitor.proto\x12\x1d\x66kie_multimaster_msgs.monitor\"\x07\n\x05\x45mpty\"*\n\x06\x46ilter\x12\x11\n\ttimestamp\x18\x01 \x01(\x01\x12\r\n\x05level\x18\x02 \x01(\x05\"e\n\x0f\x44iagnosticArray\x12\x11\n\ttimestamp\x18\x01 \x01(\x01\x12?\n\x06status\x18\x02 \x03(\x0b\x32/.fkie_multimaster_msgs.monitor.DiagnosticStatus\"\xc3\x01\n\x10\x44iagnosticStatus\x12\r\n\x05level\x18\x01 \x01(\x05\x12\x0c\n\x04name\x18\x02 \x01(\t\x12\x0f\n\x07message\x18\x03 \x01(\t\x12\x13\n\x0bhardware_id\x18\x04 \x01(\t\x12\x37\n\x06values\x18\x05 \x03(\x0b\x32\'.fkie_multimaster_msgs.monitor.KeyValue\"3\n\tLevelType\x12\x06\n\x02OK\x10\x00\x12\x08\n\x04WARN\x10\x01\x12\t\n\x05\x45RROR\x10\x02\x12\t\n\x05STALE\x10\x03\"&\n\x08KeyValue\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t\"\x12\n\x03Pid\x12\x0b\n\x03pid\x18\x01 \x01(\x05\x32\x91\x04\n\x0eMonitorService\x12m\n\x14GetSystemDiagnostics\x12%.fkie_multimaster_msgs.monitor.Filter\x1a..fkie_multimaster_msgs.monitor.DiagnosticArray\x12i\n\x11GetSystemWarnings\x12$.fkie_multimaster_msgs.monitor.Empty\x1a..fkie_multimaster_msgs.monitor.DiagnosticArray\x12g\n\x0eGetDiagnostics\x12%.fkie_multimaster_msgs.monitor.Filter\x1a..fkie_multimaster_msgs.monitor.DiagnosticArray\x12\x63\n\x0bGetWarnings\x12$.fkie_multimaster_msgs.monitor.Empty\x1a..fkie_multimaster_msgs.monitor.DiagnosticArray\x12W\n\x0bKillProcess\x12\".fkie_multimaster_msgs.monitor.Pid\x1a$.fkie_multimaster_msgs.monitor.Emptyb\x06proto3'
)



_DIAGNOSTICSTATUS_LEVELTYPE = _descriptor.EnumDescriptor(
  name='LevelType',
  full_name='fkie_multimaster_msgs.monitor.DiagnosticStatus.LevelType',
  filename=None,
  file=DESCRIPTOR,
  values=[
    _descriptor.EnumValueDescriptor(
      name='OK', index=0, number=0,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='WARN', index=1, number=1,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='ERROR', index=2, number=2,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='STALE', index=3, number=3,
      serialized_options=None,
      type=None),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=349,
  serialized_end=400,
)
_sym_db.RegisterEnumDescriptor(_DIAGNOSTICSTATUS_LEVELTYPE)


_EMPTY = _descriptor.Descriptor(
  name='Empty',
  full_name='fkie_multimaster_msgs.monitor.Empty',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=48,
  serialized_end=55,
)


_FILTER = _descriptor.Descriptor(
  name='Filter',
  full_name='fkie_multimaster_msgs.monitor.Filter',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='timestamp', full_name='fkie_multimaster_msgs.monitor.Filter.timestamp', index=0,
      number=1, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='level', full_name='fkie_multimaster_msgs.monitor.Filter.level', index=1,
      number=2, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=57,
  serialized_end=99,
)


_DIAGNOSTICARRAY = _descriptor.Descriptor(
  name='DiagnosticArray',
  full_name='fkie_multimaster_msgs.monitor.DiagnosticArray',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='timestamp', full_name='fkie_multimaster_msgs.monitor.DiagnosticArray.timestamp', index=0,
      number=1, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='status', full_name='fkie_multimaster_msgs.monitor.DiagnosticArray.status', index=1,
      number=2, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=101,
  serialized_end=202,
)


_DIAGNOSTICSTATUS = _descriptor.Descriptor(
  name='DiagnosticStatus',
  full_name='fkie_multimaster_msgs.monitor.DiagnosticStatus',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='level', full_name='fkie_multimaster_msgs.monitor.DiagnosticStatus.level', index=0,
      number=1, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='name', full_name='fkie_multimaster_msgs.monitor.DiagnosticStatus.name', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='message', full_name='fkie_multimaster_msgs.monitor.DiagnosticStatus.message', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='hardware_id', full_name='fkie_multimaster_msgs.monitor.DiagnosticStatus.hardware_id', index=3,
      number=4, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='values', full_name='fkie_multimaster_msgs.monitor.DiagnosticStatus.values', index=4,
      number=5, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
    _DIAGNOSTICSTATUS_LEVELTYPE,
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=205,
  serialized_end=400,
)


_KEYVALUE = _descriptor.Descriptor(
  name='KeyValue',
  full_name='fkie_multimaster_msgs.monitor.KeyValue',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='key', full_name='fkie_multimaster_msgs.monitor.KeyValue.key', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='value', full_name='fkie_multimaster_msgs.monitor.KeyValue.value', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=402,
  serialized_end=440,
)


_PID = _descriptor.Descriptor(
  name='Pid',
  full_name='fkie_multimaster_msgs.monitor.Pid',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='pid', full_name='fkie_multimaster_msgs.monitor.Pid.pid', index=0,
      number=1, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=442,
  serialized_end=460,
)

_DIAGNOSTICARRAY.fields_by_name['status'].message_type = _DIAGNOSTICSTATUS
_DIAGNOSTICSTATUS.fields_by_name['values'].message_type = _KEYVALUE
_DIAGNOSTICSTATUS_LEVELTYPE.containing_type = _DIAGNOSTICSTATUS
DESCRIPTOR.message_types_by_name['Empty'] = _EMPTY
DESCRIPTOR.message_types_by_name['Filter'] = _FILTER
DESCRIPTOR.message_types_by_name['DiagnosticArray'] = _DIAGNOSTICARRAY
DESCRIPTOR.message_types_by_name['DiagnosticStatus'] = _DIAGNOSTICSTATUS
DESCRIPTOR.message_types_by_name['KeyValue'] = _KEYVALUE
DESCRIPTOR.message_types_by_name['Pid'] = _PID
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

Empty = _reflection.GeneratedProtocolMessageType('Empty', (_message.Message,), {
  'DESCRIPTOR' : _EMPTY,
  '__module__' : 'monitor_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.monitor.Empty)
  })
_sym_db.RegisterMessage(Empty)

Filter = _reflection.GeneratedProtocolMessageType('Filter', (_message.Message,), {
  'DESCRIPTOR' : _FILTER,
  '__module__' : 'monitor_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.monitor.Filter)
  })
_sym_db.RegisterMessage(Filter)

DiagnosticArray = _reflection.GeneratedProtocolMessageType('DiagnosticArray', (_message.Message,), {
  'DESCRIPTOR' : _DIAGNOSTICARRAY,
  '__module__' : 'monitor_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.monitor.DiagnosticArray)
  })
_sym_db.RegisterMessage(DiagnosticArray)

DiagnosticStatus = _reflection.GeneratedProtocolMessageType('DiagnosticStatus', (_message.Message,), {
  'DESCRIPTOR' : _DIAGNOSTICSTATUS,
  '__module__' : 'monitor_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.monitor.DiagnosticStatus)
  })
_sym_db.RegisterMessage(DiagnosticStatus)

KeyValue = _reflection.GeneratedProtocolMessageType('KeyValue', (_message.Message,), {
  'DESCRIPTOR' : _KEYVALUE,
  '__module__' : 'monitor_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.monitor.KeyValue)
  })
_sym_db.RegisterMessage(KeyValue)

Pid = _reflection.GeneratedProtocolMessageType('Pid', (_message.Message,), {
  'DESCRIPTOR' : _PID,
  '__module__' : 'monitor_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.monitor.Pid)
  })
_sym_db.RegisterMessage(Pid)



_MONITORSERVICE = _descriptor.ServiceDescriptor(
  name='MonitorService',
  full_name='fkie_multimaster_msgs.monitor.MonitorService',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  serialized_start=463,
  serialized_end=992,
  methods=[
  _descriptor.MethodDescriptor(
    name='GetSystemDiagnostics',
    full_name='fkie_multimaster_msgs.monitor.MonitorService.GetSystemDiagnostics',
    index=0,
    containing_service=None,
    input_type=_FILTER,
    output_type=_DIAGNOSTICARRAY,
    serialized_options=None,
  ),
  _descriptor.MethodDescriptor(
    name='GetSystemWarnings',
    full_name='fkie_multimaster_msgs.monitor.MonitorService.GetSystemWarnings',
    index=1,
    containing_service=None,
    input_type=_EMPTY,
    output_type=_DIAGNOSTICARRAY,
    serialized_options=None,
  ),
  _descriptor.MethodDescriptor(
    name='GetDiagnostics',
    full_name='fkie_multimaster_msgs.monitor.MonitorService.GetDiagnostics',
    index=2,
    containing_service=None,
    input_type=_FILTER,
    output_type=_DIAGNOSTICARRAY,
    serialized_options=None,
  ),
  _descriptor.MethodDescriptor(
    name='GetWarnings',
    full_name='fkie_multimaster_msgs.monitor.MonitorService.GetWarnings',
    index=3,
    containing_service=None,
    input_type=_EMPTY,
    output_type=_DIAGNOSTICARRAY,
    serialized_options=None,
  ),
  _descriptor.MethodDescriptor(
    name='KillProcess',
    full_name='fkie_multimaster_msgs.monitor.MonitorService.KillProcess',
    index=4,
    containing_service=None,
    input_type=_PID,
    output_type=_EMPTY,
    serialized_options=None,
  ),
])
_sym_db.RegisterServiceDescriptor(_MONITORSERVICE)

DESCRIPTOR.services_by_name['MonitorService'] = _MONITORSERVICE

# @@protoc_insertion_point(module_scope)
