# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: version.proto

from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='version.proto',
  package='fkie_multimaster_msgs.version',
  syntax='proto3',
  serialized_options=None,
  serialized_pb=b'\n\rversion.proto\x12\x1d\x66kie_multimaster_msgs.version\"\x07\n\x05\x45mpty\"(\n\x07Version\x12\x0f\n\x07version\x18\x01 \x01(\t\x12\x0c\n\x04\x64\x61te\x18\x02 \x01(\t2l\n\x0eVersionService\x12Z\n\nGetVersion\x12$.fkie_multimaster_msgs.version.Empty\x1a&.fkie_multimaster_msgs.version.Versionb\x06proto3'
)




_EMPTY = _descriptor.Descriptor(
  name='Empty',
  full_name='fkie_multimaster_msgs.version.Empty',
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


_VERSION = _descriptor.Descriptor(
  name='Version',
  full_name='fkie_multimaster_msgs.version.Version',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='version', full_name='fkie_multimaster_msgs.version.Version.version', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='date', full_name='fkie_multimaster_msgs.version.Version.date', index=1,
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
  serialized_start=57,
  serialized_end=97,
)

DESCRIPTOR.message_types_by_name['Empty'] = _EMPTY
DESCRIPTOR.message_types_by_name['Version'] = _VERSION
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

Empty = _reflection.GeneratedProtocolMessageType('Empty', (_message.Message,), {
  'DESCRIPTOR' : _EMPTY,
  '__module__' : 'version_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.version.Empty)
  })
_sym_db.RegisterMessage(Empty)

Version = _reflection.GeneratedProtocolMessageType('Version', (_message.Message,), {
  'DESCRIPTOR' : _VERSION,
  '__module__' : 'version_pb2'
  # @@protoc_insertion_point(class_scope:fkie_multimaster_msgs.version.Version)
  })
_sym_db.RegisterMessage(Version)



_VERSIONSERVICE = _descriptor.ServiceDescriptor(
  name='VersionService',
  full_name='fkie_multimaster_msgs.version.VersionService',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  serialized_start=99,
  serialized_end=207,
  methods=[
  _descriptor.MethodDescriptor(
    name='GetVersion',
    full_name='fkie_multimaster_msgs.version.VersionService.GetVersion',
    index=0,
    containing_service=None,
    input_type=_EMPTY,
    output_type=_VERSION,
    serialized_options=None,
  ),
])
_sym_db.RegisterServiceDescriptor(_VERSIONSERVICE)

DESCRIPTOR.services_by_name['VersionService'] = _VERSIONSERVICE

# @@protoc_insertion_point(module_scope)
