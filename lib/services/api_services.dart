import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class Api {

  static const String baseUrl = "http://";

  static addProduct(Map productData) async{
    // Add product to the database
    var finalUrl = Uri.parse("$baseUrl/api/add_product");
    try {
      final response = await http.post(finalUrl, body: productData);
      if(response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        debugPrint(data);
      }else{
        debugPrint("Failed to add product");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

}