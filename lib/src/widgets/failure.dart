// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/widgets/colors.dart';

class Failure extends StatelessWidget {
  const Failure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Image(image: AssetImage("lib/src/assets/failure.png"))),
          Text(
            'Connection Failure',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsPalette.textColor,
              fontWeight: FontWeight.normal,
              fontSize: 30,
              shadows: <Shadow>[
                Shadow(
                  color: ColorsPalette.shadows,
                  offset: Offset(0.0, 5.0),
                  blurRadius: 5.0)
              ]
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){print("teste");},
        backgroundColor: ColorsPalette.secondary, 
        icon: Center(child: Icon(Icons.arrow_back)),
        label: const Text("Back"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );  
  } 
}
