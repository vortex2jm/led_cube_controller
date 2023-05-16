abstract class ConnectState{}

class ConnectInitialState extends ConnectState{}

class ConnectLoadingState extends ConnectState{}

class ConnectLoadedState extends ConnectState{}

class ConnectErrorState extends ConnectState{
  final Exception exception;
  ConnectErrorState({required this.exception}); 
}
