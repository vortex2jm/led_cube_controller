import 'package:flutter/material.dart';

class Effects extends StatelessWidget{

  final String  ipState;

  const Effects({super.key, required this.ipState});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Página de efeitos")),
    );
  }
}
