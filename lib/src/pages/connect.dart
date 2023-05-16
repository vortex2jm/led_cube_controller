// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:led_cube_controller/src/components/button.dart';
import 'package:led_cube_controller/src/pages/effects.dart';
import '../components/input_field.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {

  String ip = "";

  void setIp(String value){
    setState(() {
      ip = value;
    });
  }

  void pageRoute(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Effects(ipState: ip)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InputField(width: 400, height: 50, label: "IP",callback: setIp),
              ConnectButton(bText: "Connect", width: 200, height: 50, callback: pageRoute),
            ],
          ),
        ),
      )
    );
  }
}
