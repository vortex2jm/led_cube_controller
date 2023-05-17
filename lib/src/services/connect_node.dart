class ConnectNode {

  // If response status is not 200, return false
  // And application will fail
  bool testConnection(String ip){
    if(ip== "12345"){
      return true;
    }
    return false;
  }

  // Simulating api response with effects names
  static List<dynamic>getEffects(){
    return [
      {'name': 'propeller', 'number':24},
      {'name': 'random', 'number':25}
    ];
  }
}
