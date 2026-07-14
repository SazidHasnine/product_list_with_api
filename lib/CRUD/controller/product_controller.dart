import 'dart:convert';

import 'package:product_list_with_api/CRUD/model/product_model.dart';
import 'package:product_list_with_api/CRUD/utils/urls.dart';
import 'package:http/http.dart' as http;

class ProductController {

  List<Data>products = [];

  Future<void>getProduct() async{

    final url = Uri.parse(Urls.readProductURL);
    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);

    if(response.statusCode == 200){

      final jsonResponse = jsonDecode(response.body);

      ProductModel model = ProductModel.fromJson(jsonResponse);

      products = model.data ?? [];
    }
  }

}

