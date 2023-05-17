import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/bloc/connection_bloc.dart';
import 'package:led_cube_controller/src/bloc/connection_event.dart';
import 'package:led_cube_controller/src/bloc/connection_state.dart';
import 'package:led_cube_controller/src/services/connect_node.dart';
import 'package:led_cube_controller/src/widgets/button.dart';
import 'package:led_cube_controller/src/widgets/failure.dart';
import 'package:led_cube_controller/src/widgets/loading.dart';

class Effects extends StatefulWidget{

  final String  ipState;

  const Effects({super.key, required this.ipState});

  @override
  State<Effects> createState() => _EffectsState();
}

// State======================================//
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
          return const Loading();
        }

        if(state.data is ConnectErrorState){
          return const Failure();
        }

        // LoadedState
        return Scaffold(
          body: Center(
            child: SizedBox(
              height: 10000,
              child: 
                ListView(
                  padding: const EdgeInsets.all(50.0),
                  children: <Widget>[
                    GenericButton(bText: "Propeller", width: 400, height: 100, callback: ConnectNode.propeller),
                    const SizedBox(height: 20),
                    GenericButton(bText: "Random", width: 400, height: 100, callback: ConnectNode.random),
                    const SizedBox(height: 20),
                    GenericButton(bText: "PET", width: 400, height: 100, callback: ConnectNode.pet),
                    const SizedBox(height: 20),
                    GenericButton(bText: "Rain", width: 400, height: 100, callback: ConnectNode.pet),
                    const SizedBox(height: 20),
                    GenericButton(bText: "Sequencial", width: 400, height: 100, callback: ConnectNode.pet),
                    const SizedBox(height: 20),
                    GenericButton(bText: "Layer", width: 400, height: 100, callback: ConnectNode.pet),
                    const SizedBox(height: 20),
                    GenericButton(bText: "Column", width: 400, height: 100, callback: ConnectNode.pet)
                  ],                
                ),              
            ) 
          ),
        );
      }
    );
  }
}
