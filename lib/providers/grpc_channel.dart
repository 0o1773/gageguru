import 'package:gageguru/grpc_gen/mouse.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../grpc_gen/mouse.pbgrpc.dart';

final gRpcChannelProvider = Provider.autoDispose((ref) {
  return ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
});

class ItemDataService {
  final ClientChannel channel;

  ItemDataService(this.channel);

  Future<void> close() async {
    await channel.shutdown();
  }

  Future<Mouse> getItem() async {
    final stub = MouseServiceClient(channel);
    final response = await stub.get(
      GetMouseRequest(),
    );
    return response;
  }
}