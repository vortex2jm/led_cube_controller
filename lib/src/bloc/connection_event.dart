abstract class ConnectEvent{}

class GetEffects extends ConnectEvent{
  final String ip;
  GetEffects({required this.ip});
}
