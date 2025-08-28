import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/mainmenu_page.dart';
import 'package:latihan1_11pplg2/pages/uma_player.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
      GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage()),
      GetPage(name: AppRoutes.umaPage, page: ()=> UmaPlayerPage()),
      GetPage(name: AppRoutes.navbar, page: ()=> MainmenuPage()),
      GetPage(name: AppRoutes.editPage, page: () =>EditPlayerPage()),
  ];
}
