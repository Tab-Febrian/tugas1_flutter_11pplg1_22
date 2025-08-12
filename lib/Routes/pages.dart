import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:practice/Pages/calculator_page2.dart';
import 'package:practice/Pages/football_edit__pages.dart';
import 'package:practice/Pages/football_pages.dart';
import 'package:practice/Routes/routes.dart';
class AppPages{
  // list array yang isinya kumpulan page/ui kita
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage2()),
    GetPage(name: AppRoutes.footballPlayers, page: () => FootballPages()),
    GetPage(name: AppRoutes.footballEditPlayers, page: () => FootballEditPage())
  ];
}