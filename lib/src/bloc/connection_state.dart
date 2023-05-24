abstract class ConnectState{
  final List<String> effects;
  ConnectState({required this.effects});
}

class ConnectInitialState extends ConnectState{
  ConnectInitialState() : super(effects: []);
}

class ConnectLoadingState extends ConnectState{
  ConnectLoadingState() : super(effects: []);
}

class ConnectLoadedState extends ConnectState{
  ConnectLoadedState({required List<String> effects}) : super(effects: effects);
}

class ConnectErrorState extends ConnectState{
  final Exception exception;
  ConnectErrorState({required this.exception}) : super(effects: []); 
}
