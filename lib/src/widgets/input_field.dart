// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/widgets/colors.dart';

//Component===============================================//
class InputField extends StatefulWidget {  
  
  final double width, height;
  final Function callback;
  final String label;
  const InputField({
    super.key, 
    required this.width, 
    required this.height,
    required this.label,
    required this.callback
    });

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
        onChanged: (text) {
          widget.callback(text);
        },
        controller: _controller,
        textAlign: TextAlign.center,
        cursorColor: ColorsPalette.secondary,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: widget.label,  // Calocar label como variável
          labelStyle: TextStyle(
            color: ColorsPalette.secondary, 
          ),
        ),
        style: TextStyle(
          color:ColorsPalette.secondary
        ),
      )
    );
  }
}
