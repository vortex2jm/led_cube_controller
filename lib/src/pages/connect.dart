// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../components/input_field.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InputField(),
      ),
    );
  }
}
