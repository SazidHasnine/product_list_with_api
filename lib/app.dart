import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_list_with_api/CRUD/screens/crud.dart';
import 'package:product_list_with_api/CRUD/utils/urls.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Product_List_with_CRUD',

          initialRoute: '/Crud',

          routes: {
            '/Crud': (context) => Crud(),
          },

        );
      },
    );
  }
}

