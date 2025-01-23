import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

  Future<void> getItem() async {
  }
}