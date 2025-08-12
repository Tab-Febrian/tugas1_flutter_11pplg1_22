import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final number1Controller = TextEditingController();
  final number2Controller = TextEditingController();
  var hasil = "".obs;

  void tambah (){
    int angka1 = int.parse(number1Controller.text.toString());
    int angka2 = int.parse(number2Controller.text.toString());

    int hasilJumlah = angka1 + angka2;
    print("Hasil Tambah : " + hasilJumlah.toString());
    hasil.value = hasilJumlah.toString();
  }

  void kurang (){
    int angka1 = int.parse(number1Controller.text.toString());
    int angka2 = int.parse(number2Controller.text.toString());

    int hasilKurang = angka1 - angka2;
    print("Hasil Kurang : " + hasilKurang.toString());
    hasil.value = hasilKurang.toString();
  }

  void kali (){
    int angka1 = int.parse(number1Controller.text.toString());
    int angka2 = int.parse(number2Controller.text.toString());

    int hasilKali = angka1 * angka2;
    print("Hasil Kali : " + hasilKali.toString());
    hasil.value = hasilKali.toString();
  }

  void bagi (){
    int angka1 = int.parse(number1Controller.text.toString());
    int angka2 = int.parse(number2Controller.text.toString());

    double hasilBagi = angka1 / angka2;
    print("Hasil Bagi : " + hasilBagi.toString());
    hasil.value = hasilBagi.toString();
  }

  void clear (){
    number1Controller.clear();
    number2Controller.clear();
  }
}