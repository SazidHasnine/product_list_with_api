import 'package:flutter/material.dart';
import 'package:product_list_with_api/CRUD/screens/crud.dart';
import 'package:product_list_with_api/CRUD/utils/urls.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Crud',

      routes: {
        '/Crud' : (context) => Crud(),
      },
    );
  }
}

