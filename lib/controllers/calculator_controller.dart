import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController{
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var textHasil = "".obs;

  void tambah(){
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 + angka2;
    print("hasil jumlah $hasilJumlah");
    textHasil.value = hasilJumlah.toString();
  }

  void kurang (){
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilKurang = angka1 - angka2;
    print("hasil kurang $hasilKurang");
    textHasil.value = hasilKurang.toString();
  }

  void kali (){
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilKali = angka1 * angka2;
    print("hasil kali $hasilKali");
    textHasil.value = hasilKali.toString();
  }

  void bagi (){
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    double hasilBagi = angka1 / angka2;
    print("hasil bagi $hasilBagi");
    textHasil.value = hasilBagi.toString();
  }

  void clear (){
    txtangka1.clear();
    txtangka2.clear();
    textHasil.value = "";
  }
} 