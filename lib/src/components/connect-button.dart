// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// ================================================== //
class ConnectButton extends StatefulWidget {
  
  final String b_text;
  const ConnectButton({super.key, required this.b_text});

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
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: bStyle,
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => After()));
          print("oi");
        },
        child: Text(
          widget.b_text,
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        )
      ),
    );
  }
}
