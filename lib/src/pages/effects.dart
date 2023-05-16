import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/bloc/connection_bloc.dart';
import 'package:led_cube_controller/src/bloc/connection_event.dart';
import 'package:led_cube_controller/src/bloc/connection_state.dart';

class Effects extends StatefulWidget{

  final String  ipState;

  const Effects({super.key, required this.ipState});

  @override
  State<Effects> createState() => _EffectsState();
}

class _EffectsState extends State<Effects> {

  late final ConnectBloc _connectBloc;

  @override
  void initState() {
    super.initState();
    _connectBloc = ConnectBloc();
    _connectBloc.input.add(TestConnection(ip: widget.ipState));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectState>(
      stream: _connectBloc.output,
      builder: (context, state) {

        if(state.data is ConnectLoadingState){
          return const Center(child: CircularProgressIndicator());
        }

        else if(state.data is ConnectLoadedState){
          return const Scaffold(
            body: Center(child: Text("IP correto")),
          );
        }

        else if(state.data is ConnectErrorState){
          return const Scaffold(
            body: Center(child: Text("IP incorreto")),
          );
        }

        return const Scaffold(
          body: Center(child: Text("Página de efeitos")),
        );
      }
    );
  }
}
