import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/bottom_nav_controller.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';
import 'package:latihan1_11pplg2/pages/uma_player.dart';

class BottomNav extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> pages = [
    CalculatorPage(),
    UmaPlayer(),
    ProfilePage(), // ganti jadi profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: controller.selectedIndex.value,
        children: pages,
      ),),  
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex:  controller.selectedIndex.value,
        onTap: controller.changePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate), 
            label: "Calculator"),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_off_alt_sharp), 
            label: "Umas"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_rounded), 
            label: "Profile"),
        ],
       ),),
    );
  }
}