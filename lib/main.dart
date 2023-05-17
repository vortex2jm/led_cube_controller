// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/widgets/colors.dart';
import 'package:led_cube_controller/src/screens/connect.dart';
import 'package:led_cube_controller/src/screens/home.dart';

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
      routes: {
        '/home' : (context) => Home(),
        '/connect' : (context) => Connect(),
      },
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
