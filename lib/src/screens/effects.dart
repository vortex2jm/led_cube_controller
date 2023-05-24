import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/bloc/connection_bloc.dart';
import 'package:led_cube_controller/src/bloc/connection_event.dart';
import 'package:led_cube_controller/src/bloc/connection_state.dart';
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

  @override
  void initState() {
    super.initState();
    _connectBloc = ConnectBloc();
    _connectBloc.input.add(GetEffects(ip: widget.ipState));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectState>(
      stream: _connectBloc.output,
      builder: (context, state) {

        if(state.data is ConnectLoadingState){
          return const Loading();
        }

        if(state.data is ConnectLoadedState){
          var example = state.data?.effects ?? [];

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
                        GenericButton(bText: item, width: 400, height: 100, callback: (){}),
                        const SizedBox(height: 20)
                      ],
                    ); 
                  }
                )
              ) 
            ),
          );
        }

        else{
          return const Failure();
        }
      }
    );
  }
}
