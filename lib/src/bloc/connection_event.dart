abstract class ConnectEvent{}

class TestConnection extends ConnectEvent {
  final String ip;
  TestConnection({required this.ip});
}
