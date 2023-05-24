import 'dart:async';
import 'package:led_cube_controller/src/bloc/connection_event.dart';
import 'package:led_cube_controller/src/bloc/connection_state.dart';
import 'package:led_cube_controller/src/services/connect_node.dart';
import 'package:http/http.dart' as http;

class ConnectBloc{

  final _connection = ConnectNode();

  final _inputController = StreamController<ConnectEvent>();
  final _outputControler = StreamController<ConnectState>();

  Sink<ConnectEvent> get input => _inputController.sink;
  Stream<ConnectState> get output => _outputControler.stream;

  ConnectBloc(){_inputController.stream.listen(_mapEventToState);}

  void _mapEventToState(ConnectEvent event) async {
    _outputControler.add(ConnectLoadingState());

    if(event is GetEffects){
      // Adding loading state before find api response
      _outputControler.add(ConnectLoadingState());

      try{
        var effects = await _connection.getEffects(event.ip);
        _outputControler.add(ConnectLoadedState(effects: effects));
      }catch(err){
        _outputControler.add(ConnectErrorState(exception: Exception("Connection failure")));
      }
    }
  }
}
