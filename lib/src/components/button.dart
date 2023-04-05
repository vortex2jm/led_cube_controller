// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/pages/connect.dart';

// ================================================== //
class ConnectButton extends StatefulWidget {
  
  final String b_text;
  final double width, height;
  const ConnectButton({
    super.key,
    required this.b_text,
    required this.width,
    required this.height
    });

  @override
  State<ConnectButton> createState() => _ButtonState();
}

// ================================================== //
class _ButtonState extends State<ConnectButton> {
  
  final ButtonStyle bStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xffc69b7b), elevation: 1000, shadowColor: Colors.black, minimumSize: Size(50.0, 50.0));

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        style: bStyle,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Connect()));
          // print("oi");
        },
        child: Text(
          widget.b_text,
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        )
      ),
    );
  }
}
