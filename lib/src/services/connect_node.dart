import 'dart:convert';
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
  Future<List<String>> getEffects(String ip) async {
    var url = Uri.parse('http://$ip/');
    // var response = await http.get(url);
    final client = http.Client();
    try{
      var response = await client.get(url).timeout(const Duration(seconds: 5));
      var resObject = jsonDecode(response.body);
      List<String> effectsList = [];
      for(var effect in resObject["effects"]){
        effectsList.add(effect["id"]);
      }
      // if(response.statusCode == 200){}
      return effectsList;
    }catch(err){
      throw Exception();  
    }
  }
}
