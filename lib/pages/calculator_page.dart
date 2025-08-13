import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';
import 'package:latihan1_11pplg2/widgets/custom_textbox.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Column(
        children: [
          Customtb(hint: "Input Angka 1", controller: widget.calculatorController.txtangka1, password: false, isNumber: true, label: "",),
          Customtb(hint: "Input Angka 2", controller: widget.calculatorController.txtangka2, password: false, isNumber: true, label: "",),
          Container(
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(myText: "+", myColor: Colors.blue, onPressed: () {
                widget.calculatorController.tambah();
              },),
              CustomButton(myText: "-", myColor: Colors.blue, onPressed: () {
                widget.calculatorController.kurang();
              },)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(myText: "/", myColor: Colors.blue, onPressed: () {
                widget.calculatorController.bagi();
              },),
              CustomButton(myText: "*", myColor: Colors.blue, onPressed: () {
                widget.calculatorController.kali();
              },),
            ],

          ),
          Obx(() => Text("Hasil ${widget.calculatorController.textHasil.value}"),),
          CustomButton(myText: "My Team", myColor: Colors.pink, onPressed: () {
            Get.toNamed(AppRoutes.umaPage);
          },)
        ],
      ),
    );
  }
}