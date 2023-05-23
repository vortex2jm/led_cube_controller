import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ConnectNode {

  // Returns if connection sucefull
  bool testConnection(String ip){
    if(ip== "12345"){
      return true;
    }
    return false;
  }

  // Função para testar requisição
  static Future<void> getNode() async {
    var url = Uri.parse('https://api.github.com/users/vortex2jm');
    var response = await http.get(url);

    var resObject = jsonDecode(response.body);

    if(response.statusCode == 200){
      print(resObject['login']);
    }
    else{
      print("Erro na request");
    }
  }

  // Simulating api response with effects names
  static List<dynamic>getEffects(){
    return [
      {'name': 'propeller', 'number':24},
      {'name': 'random', 'number':25}
    ];
  }
}
