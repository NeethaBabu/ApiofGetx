import 'dart:convert';


import 'package:apiofgetx/product.dart';
import 'package:http/http.dart' as http;

import 'RespMain.dart';

class ApiService{

  Future<List<Products>> fetchproducts() async {
    var response=await http.get(Uri.parse("https://dummyjson.com/products"));
    final jsonData = json.decode(response.body.toString());
    var data=RespMain.fromJson(jsonData);
    var p=data.products;
    return p;
  }
}