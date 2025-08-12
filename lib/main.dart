import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/Pages/calculator_page2.dart';
import 'package:practice/Routes/pages.dart';
import 'package:practice/Routes/routes.dart';
import 'package:practice/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.calculator,
      getPages: AppPages.pages,
    );
  }
}
