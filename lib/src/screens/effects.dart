import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/bloc/connection_bloc.dart';
import 'package:led_cube_controller/src/bloc/connection_event.dart';
import 'package:led_cube_controller/src/bloc/connection_state.dart';
import 'package:led_cube_controller/src/services/connect_node.dart';
import 'package:led_cube_controller/src/widgets/button.dart';
import 'package:led_cube_controller/src/widgets/failure.dart';
import 'package:led_cube_controller/src/widgets/loading.dart';

// Class============================//
class Effects extends StatefulWidget{

  final String  ipState;

  const Effects({super.key, required this.ipState});

  @override
  State<Effects> createState() => _EffectsState();
}

// State======================================//
class _EffectsState extends State<Effects> {

  late final ConnectBloc _connectBloc;
  final example = ConnectNode.getEffects();

  // Put getNode here with right request

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
              child:
              ListView.builder(
                padding: const EdgeInsets.all(100),
                itemCount: example.length,
                itemBuilder: (context, index){
                  final item = example[index];
                  return Column(
                    children: [
                      GenericButton(bText: item['name'], width: 400, height: 100, callback: ConnectNode.getNode),
                      const SizedBox(height: 20)
                    ],
                  ); 
                }
              )
            ) 
          ),
        );
      }
    );
  }
}
