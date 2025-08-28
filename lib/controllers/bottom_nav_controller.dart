import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';
import 'package:latihan1_11pplg2/pages/uma_player.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    CalculatorPage(),
    UmaPlayerPage(),
    ProfilePage(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
