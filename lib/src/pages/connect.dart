// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/components/button.dart';
import '../components/input_field.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              InputField(width: 400, height: 50,),
              ConnectButton(b_text: "Connect", width: 200, height: 50),
            ],
          ),
        ),
      )
    );
  }
}
