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

import 'mouse.pbenum.dart';

export 'mouse.pbenum.dart';

class GetMouseRequest extends $pb.GeneratedMessage {
  factory GetMouseRequest({
    $core.String? name,
    $core.String? maker,
    $core.int? priceLower,
    $core.int? priceUpper,
    $core.bool? wireless,
    MouseShape? shape,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (maker != null) {
      $result.maker = maker;
    }
    if (priceLower != null) {
      $result.priceLower = priceLower;
    }
    if (priceUpper != null) {
      $result.priceUpper = priceUpper;
    }
    if (wireless != null) {
      $result.wireless = wireless;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    return $result;
  }
  GetMouseRequest._() : super();
  factory GetMouseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMouseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMouseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'mouse'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'maker')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'priceLower', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'priceUpper', $pb.PbFieldType.O3)
    ..aOB(5, _omitFieldNames ? '' : 'wireless')
    ..e<MouseShape>(6, _omitFieldNames ? '' : 'shape', $pb.PbFieldType.OE, defaultOrMaker: MouseShape.SYMMETRY, valueOf: MouseShape.valueOf, enumValues: MouseShape.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMouseRequest clone() => GetMouseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMouseRequest copyWith(void Function(GetMouseRequest) updates) => super.copyWith((message) => updates(message as GetMouseRequest)) as GetMouseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMouseRequest create() => GetMouseRequest._();
  GetMouseRequest createEmptyInstance() => create();
  static $pb.PbList<GetMouseRequest> createRepeated() => $pb.PbList<GetMouseRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMouseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMouseRequest>(create);
  static GetMouseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get maker => $_getSZ(1);
  @$pb.TagNumber(2)
  set maker($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaker() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaker() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get priceLower => $_getIZ(2);
  @$pb.TagNumber(3)
  set priceLower($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPriceLower() => $_has(2);
  @$pb.TagNumber(3)
  void clearPriceLower() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get priceUpper => $_getIZ(3);
  @$pb.TagNumber(4)
  set priceUpper($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPriceUpper() => $_has(3);
  @$pb.TagNumber(4)
  void clearPriceUpper() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get wireless => $_getBF(4);
  @$pb.TagNumber(5)
  set wireless($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWireless() => $_has(4);
  @$pb.TagNumber(5)
  void clearWireless() => clearField(5);

  @$pb.TagNumber(6)
  MouseShape get shape => $_getN(5);
  @$pb.TagNumber(6)
  set shape(MouseShape v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasShape() => $_has(5);
  @$pb.TagNumber(6)
  void clearShape() => clearField(6);
}

class Mouse extends $pb.GeneratedMessage {
  factory Mouse({
    $core.String? id,
    $core.String? name,
    $core.String? maker,
    $core.int? price,
    $core.bool? wireless,
    MouseShape? shape,
    $core.String? image,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (maker != null) {
      $result.maker = maker;
    }
    if (price != null) {
      $result.price = price;
    }
    if (wireless != null) {
      $result.wireless = wireless;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  Mouse._() : super();
  factory Mouse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mouse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Mouse', package: const $pb.PackageName(_omitMessageNames ? '' : 'mouse'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'maker')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..aOB(5, _omitFieldNames ? '' : 'wireless')
    ..e<MouseShape>(6, _omitFieldNames ? '' : 'shape', $pb.PbFieldType.OE, defaultOrMaker: MouseShape.SYMMETRY, valueOf: MouseShape.valueOf, enumValues: MouseShape.values)
    ..aOS(7, _omitFieldNames ? '' : 'image')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mouse clone() => Mouse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mouse copyWith(void Function(Mouse) updates) => super.copyWith((message) => updates(message as Mouse)) as Mouse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mouse create() => Mouse._();
  Mouse createEmptyInstance() => create();
  static $pb.PbList<Mouse> createRepeated() => $pb.PbList<Mouse>();
  @$core.pragma('dart2js:noInline')
  static Mouse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mouse>(create);
  static Mouse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get maker => $_getSZ(2);
  @$pb.TagNumber(3)
  set maker($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaker() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaker() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get price => $_getIZ(3);
  @$pb.TagNumber(4)
  set price($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get wireless => $_getBF(4);
  @$pb.TagNumber(5)
  set wireless($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWireless() => $_has(4);
  @$pb.TagNumber(5)
  void clearWireless() => clearField(5);

  @$pb.TagNumber(6)
  MouseShape get shape => $_getN(5);
  @$pb.TagNumber(6)
  set shape(MouseShape v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasShape() => $_has(5);
  @$pb.TagNumber(6)
  void clearShape() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get image => $_getSZ(6);
  @$pb.TagNumber(7)
  set image($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasImage() => $_has(6);
  @$pb.TagNumber(7)
  void clearImage() => clearField(7);
}

class GetMouseList extends $pb.GeneratedMessage {
  factory GetMouseList({
    $core.int? limit,
    $core.int? offset,
    GetMouseRequest? terms,
  }) {
    final $result = create();
    if (limit != null) {
      $result.limit = limit;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (terms != null) {
      $result.terms = terms;
    }
    return $result;
  }
  GetMouseList._() : super();
  factory GetMouseList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMouseList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMouseList', package: const $pb.PackageName(_omitMessageNames ? '' : 'mouse'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..aOM<GetMouseRequest>(3, _omitFieldNames ? '' : 'terms', subBuilder: GetMouseRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMouseList clone() => GetMouseList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMouseList copyWith(void Function(GetMouseList) updates) => super.copyWith((message) => updates(message as GetMouseList)) as GetMouseList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMouseList create() => GetMouseList._();
  GetMouseList createEmptyInstance() => create();
  static $pb.PbList<GetMouseList> createRepeated() => $pb.PbList<GetMouseList>();
  @$core.pragma('dart2js:noInline')
  static GetMouseList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMouseList>(create);
  static GetMouseList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  GetMouseRequest get terms => $_getN(2);
  @$pb.TagNumber(3)
  set terms(GetMouseRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerms() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerms() => clearField(3);
  @$pb.TagNumber(3)
  GetMouseRequest ensureTerms() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
