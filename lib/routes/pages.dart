import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/bottom_nav.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/uma_player.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
      GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage()),
      GetPage(name: AppRoutes.umaPage, page: ()=> UmaPlayer()),
      GetPage(name: AppRoutes.navbar, page: ()=> BottomNav()),
      GetPage(name: AppRoutes.editPage, page: () {
      final index = Get.arguments as int;
      return EditPlayerPage(index: index);
      },
    ),
  ];
}
