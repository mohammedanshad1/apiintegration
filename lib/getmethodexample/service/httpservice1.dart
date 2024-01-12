
import 'package:http/http.dart' as http;


import '../modelclass/shirtmodel.dart';

class HttpService1{

  static Future<List<ShirtModel>> fetchProducts() async{
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if(response.statusCode == 200){
      var user = response.body;
      return shirtModelFromJson(user);
    }else{
      throw Exception();
    }
  }
}
