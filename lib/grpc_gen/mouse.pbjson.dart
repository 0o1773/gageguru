//
//  Generated code. Do not modify.
//  source: mouse.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mouseShapeDescriptor instead')
const MouseShape$json = {
  '1': 'MouseShape',
  '2': [
    {'1': 'SYMMETRY', '2': 0},
    {'1': 'ERGO_RIGHT', '2': 1},
    {'1': 'ERGO_LEFT', '2': 2},
  ],
};

/// Descriptor for `MouseShape`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mouseShapeDescriptor = $convert.base64Decode(
    'CgpNb3VzZVNoYXBlEgwKCFNZTU1FVFJZEAASDgoKRVJHT19SSUdIVBABEg0KCUVSR09fTEVGVB'
    'AC');

@$core.Deprecated('Use getMouseRequestDescriptor instead')
const GetMouseRequest$json = {
  '1': 'GetMouseRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'maker', '3': 2, '4': 1, '5': 9, '10': 'maker'},
    {'1': 'price_lower', '3': 3, '4': 1, '5': 5, '10': 'priceLower'},
    {'1': 'price_upper', '3': 4, '4': 1, '5': 5, '10': 'priceUpper'},
    {'1': 'wireless', '3': 5, '4': 1, '5': 8, '10': 'wireless'},
    {'1': 'shape', '3': 6, '4': 1, '5': 14, '6': '.mouse.MouseShape', '10': 'shape'},
  ],
};

/// Descriptor for `GetMouseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMouseRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRNb3VzZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVtYWtlchgCIAEoCVIFbW'
    'FrZXISHwoLcHJpY2VfbG93ZXIYAyABKAVSCnByaWNlTG93ZXISHwoLcHJpY2VfdXBwZXIYBCAB'
    'KAVSCnByaWNlVXBwZXISGgoId2lyZWxlc3MYBSABKAhSCHdpcmVsZXNzEicKBXNoYXBlGAYgAS'
    'gOMhEubW91c2UuTW91c2VTaGFwZVIFc2hhcGU=');

@$core.Deprecated('Use mouseDescriptor instead')
const Mouse$json = {
  '1': 'Mouse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'maker', '3': 3, '4': 1, '5': 9, '10': 'maker'},
    {'1': 'price', '3': 4, '4': 1, '5': 5, '10': 'price'},
    {'1': 'wireless', '3': 5, '4': 1, '5': 8, '10': 'wireless'},
    {'1': 'shape', '3': 6, '4': 1, '5': 14, '6': '.mouse.MouseShape', '10': 'shape'},
    {'1': 'image', '3': 7, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `Mouse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mouseDescriptor = $convert.base64Decode(
    'CgVNb3VzZRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVtYWtlchgDIA'
    'EoCVIFbWFrZXISFAoFcHJpY2UYBCABKAVSBXByaWNlEhoKCHdpcmVsZXNzGAUgASgIUgh3aXJl'
    'bGVzcxInCgVzaGFwZRgGIAEoDjIRLm1vdXNlLk1vdXNlU2hhcGVSBXNoYXBlEhQKBWltYWdlGA'
    'cgASgJUgVpbWFnZQ==');

@$core.Deprecated('Use getMouseListDescriptor instead')
const GetMouseList$json = {
  '1': 'GetMouseList',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 2, '4': 1, '5': 5, '10': 'offset'},
    {'1': 'terms', '3': 3, '4': 1, '5': 11, '6': '.mouse.GetMouseRequest', '10': 'terms'},
  ],
};

/// Descriptor for `GetMouseList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMouseListDescriptor = $convert.base64Decode(
    'CgxHZXRNb3VzZUxpc3QSFAoFbGltaXQYASABKAVSBWxpbWl0EhYKBm9mZnNldBgCIAEoBVIGb2'
    'Zmc2V0EiwKBXRlcm1zGAMgASgLMhYubW91c2UuR2V0TW91c2VSZXF1ZXN0UgV0ZXJtcw==');

