// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/components/button.dart';

// ====================================================== //
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            'Led Cube\nController',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xfff7ccac),
              fontWeight: FontWeight.bold,
              fontSize: 30,
              shadows: const <Shadow>[
                Shadow(
                  color: Color(0xff000000),
                  offset: Offset(0.0, 5.0),
                  blurRadius: 5.0)
              ]
            ),
          ),
          Image(image: AssetImage("lib/src/assets/cube.png")),
          ConnectButton(b_text: 'Start', width: 200, height: 50,)
        ],
        )
      )
    );
  }
}
