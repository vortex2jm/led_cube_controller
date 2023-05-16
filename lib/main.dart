// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/components/colors.dart';
import 'package:led_cube_controller/src/pages/home.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  static const String _title = 'Led cube controller';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsPalette.primary,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsPalette.details
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsPalette.textColor
            )
          )
        ) 
      ),
      home: Home(),
    );
  }
}
