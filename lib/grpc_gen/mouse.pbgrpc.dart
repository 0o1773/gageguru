//
//  Generated code. Do not modify.
//  source: mouse.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'mouse.pb.dart' as $0;

export 'mouse.pb.dart';

@$pb.GrpcServiceName('mouse.MouseService')
class MouseServiceClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$0.GetMouseRequest, $0.Mouse>(
      '/mouse.MouseService/Get',
      ($0.GetMouseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.GetMouseList, $0.Mouse>(
      '/mouse.MouseService/List',
      ($0.GetMouseList value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value));
  static final _$create = $grpc.ClientMethod<$0.Mouse, $0.Mouse>(
      '/mouse.MouseService/Create',
      ($0.Mouse value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.Mouse, $0.Mouse>(
      '/mouse.MouseService/Update',
      ($0.Mouse value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.Mouse, $0.Mouse>(
      '/mouse.MouseService/Delete',
      ($0.Mouse value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value));

  MouseServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Mouse> get($0.GetMouseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$0.Mouse> list($0.GetMouseList request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Mouse> create($0.Mouse request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.Mouse> update($0.Mouse request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.Mouse> delete($0.Mouse request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('mouse.MouseService')
abstract class MouseServiceBase extends $grpc.Service {
  $core.String get $name => 'mouse.MouseService';

  MouseServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetMouseRequest, $0.Mouse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMouseRequest.fromBuffer(value),
        ($0.Mouse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMouseList, $0.Mouse>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GetMouseList.fromBuffer(value),
        ($0.Mouse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Mouse, $0.Mouse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value),
        ($0.Mouse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Mouse, $0.Mouse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value),
        ($0.Mouse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Mouse, $0.Mouse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Mouse.fromBuffer(value),
        ($0.Mouse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Mouse> get_Pre($grpc.ServiceCall call, $async.Future<$0.GetMouseRequest> request) async {
    return get(call, await request);
  }

  $async.Stream<$0.Mouse> list_Pre($grpc.ServiceCall call, $async.Future<$0.GetMouseList> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$0.Mouse> create_Pre($grpc.ServiceCall call, $async.Future<$0.Mouse> request) async {
    return create(call, await request);
  }

  $async.Future<$0.Mouse> update_Pre($grpc.ServiceCall call, $async.Future<$0.Mouse> request) async {
    return update(call, await request);
  }

  $async.Future<$0.Mouse> delete_Pre($grpc.ServiceCall call, $async.Future<$0.Mouse> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.Mouse> get($grpc.ServiceCall call, $0.GetMouseRequest request);
  $async.Stream<$0.Mouse> list($grpc.ServiceCall call, $0.GetMouseList request);
  $async.Future<$0.Mouse> create($grpc.ServiceCall call, $0.Mouse request);
  $async.Future<$0.Mouse> update($grpc.ServiceCall call, $0.Mouse request);
  $async.Future<$0.Mouse> delete($grpc.ServiceCall call, $0.Mouse request);
}
