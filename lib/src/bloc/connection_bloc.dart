import 'dart:async';
import 'package:led_cube_controller/src/bloc/connection_event.dart';
import 'package:led_cube_controller/src/bloc/connection_state.dart';
import 'package:led_cube_controller/src/services/connect_node.dart';

class ConnectBloc{

  final _connection = ConnectNode();

  final _inputController = StreamController<ConnectEvent>();
  final _outputControler = StreamController<ConnectState>();

  Sink<ConnectEvent> get input => _inputController.sink;
  Stream<ConnectState> get output => _outputControler.stream;

  ConnectBloc(){
    _inputController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(ConnectEvent event) async {

    bool connected = false;

    _outputControler.add(ConnectLoadingState());

    if(event is TestConnection){
      
      connected = _connection.testConnection(event.ip);

      if(connected == false) {
        _outputControler.add(ConnectErrorState(exception: Exception("Connection failure")));
      }
      else {
        _outputControler.add(ConnectLoadedState());
      }
    }
  }
}
