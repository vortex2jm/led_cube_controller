// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Led cube controller';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Home(),
    );
  }
}

class After extends StatelessWidget {
  const After({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}

// ====================================================== //
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

// ====================================================== //
class HomeState extends State<Home> {
  final ButtonStyle bStyle = ElevatedButton.styleFrom(
      primary: Color(0xffc69b7b), elevation: 1000, shadowColor: Colors.black, minimumSize: Size(50.0, 50.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff3a3845),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Led Cube\nController',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xfff7ccac),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  shadows: const <Shadow>[
                    Shadow(
                        color: Color(0xff000000),
                        offset: Offset(0.0, 5.0),
                        blurRadius: 5.0)
                  ]),
            ),
            Image(image: AssetImage("lib/src/assets/cube.png")),
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
                  "Connect",
                  style: TextStyle(color: Color(0xff3a3845)),
                )),
            )
            
          ],
        )));
  }
}
