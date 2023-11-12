// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/widgets/colors.dart';

// ================================================== //
class GenericButton extends StatelessWidget {
  
  final String bText;
  final double width, height;
  final Function callback;
  
  GenericButton({
    super.key,
    required this.bText,
    required this.width,
    required this.height,
    required this.callback
  });

  final ButtonStyle bStyle = ElevatedButton.styleFrom(
    backgroundColor: ColorsPalette.secondary, 
    elevation: 20, 
    shadowColor: ColorsPalette.shadows, 
    minimumSize: Size(50.0, 50.0),
  );

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: bStyle,
        onPressed: () {
          callback();
        },
        child: Text(
          bText,
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        ),
      )
    );
  }
}
