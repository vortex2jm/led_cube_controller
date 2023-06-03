import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/widgets/colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: ColorsPalette.secondary,),
      ),
    );
  }
}
