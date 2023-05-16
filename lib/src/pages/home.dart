// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/components/button.dart';
import 'package:led_cube_controller/src/components/colors.dart';
import 'package:led_cube_controller/src/pages/connect.dart';

// ====================================================== //
class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  void pageRoute(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Connect()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Led Cube\nController',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsPalette.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              shadows: const <Shadow>[
                Shadow(
                  color: ColorsPalette.shadows,
                  offset: Offset(0.0, 5.0),
                  blurRadius: 5.0)
              ]
            ),
          ),
          Image(image: AssetImage("lib/src/assets/cube.png")),
          ConnectButton(bText: 'Start', width: 200, height: 50, callback: pageRoute)
        ],
        )
      )
    );
  }
}
