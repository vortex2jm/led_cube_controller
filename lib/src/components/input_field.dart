// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
//Component===============================================//
class InputField extends StatefulWidget {  
  
  final double width, height;
  const InputField({super.key, required this.width, required this.height});

  @override
  State<InputField> createState() => InputFieldState();
}

//State==================================================//
class InputFieldState extends State<InputField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        controller: _controller,
        textAlign: TextAlign.center,
        cursorColor: Color(0xffc69b7b),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "IP",  // Calocar label como variável
          labelStyle: TextStyle(
            color: Color(0xffc69b7b), 
          ),
        ),
        style: TextStyle(
          color: Color(0xffc69b7b)
        ),
      )
    );
  }
}
