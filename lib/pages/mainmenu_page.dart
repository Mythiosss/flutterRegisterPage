import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/bottom_nav_controller.dart';

class MainmenuPage extends StatelessWidget {
  final BottomNavController menucontroller = Get.put(BottomNavController());

  

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(title: Text("My Home Example"),),
      body:menucontroller.pages[menucontroller.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: menucontroller.changePage,
        currentIndex: menucontroller.selectedIndex.value,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.rocket_launch_outlined), label: "Player"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    ),);
  }
}