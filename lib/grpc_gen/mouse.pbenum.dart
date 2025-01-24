//
//  Generated code. Do not modify.
//  source: mouse.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MouseShape extends $pb.ProtobufEnum {
  static const MouseShape SYMMETRY = MouseShape._(0, _omitEnumNames ? '' : 'SYMMETRY');
  static const MouseShape ERGO_RIGHT = MouseShape._(1, _omitEnumNames ? '' : 'ERGO_RIGHT');
  static const MouseShape ERGO_LEFT = MouseShape._(2, _omitEnumNames ? '' : 'ERGO_LEFT');

  static const $core.List<MouseShape> values = <MouseShape> [
    SYMMETRY,
    ERGO_RIGHT,
    ERGO_LEFT,
  ];

  static final $core.Map<$core.int, MouseShape> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MouseShape? valueOf($core.int value) => _byValue[value];

  const MouseShape._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
