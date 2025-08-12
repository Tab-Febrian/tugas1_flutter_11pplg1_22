import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:practice/Controllers/calculator_controller.dart';
import 'package:practice/Routes/routes.dart';
import 'package:practice/custom_input_fiels.dart';
import 'package:practice/Widgets/widget_button.dart';

class CalculatorPage2 extends StatelessWidget {
  CalculatorPage2({super.key});
  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            CustomInputField(label: "Masukkan angka 1", controller: calculatorController.number1Controller,),
            SizedBox(height: 15,),
            CustomInputField(label: "Masukkan angka 2", controller: calculatorController.number2Controller,),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(text: "+", textcolor: Colors.red, onPressed: () {
                    calculatorController.tambah();
                  }),
                  CustomButton(text: "-", textcolor: Colors.orange, onPressed: () {
                    calculatorController.kurang();
                  })
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(text: "*", textcolor: Colors.yellow, onPressed: () {
                    calculatorController.kali();
                  }),
                  CustomButton(text: "/", textcolor: Colors.green, onPressed: () {
                    calculatorController.bagi();
                  })
                ],
              ),
            ),
            Obx(
              () => Text("Hasil: " + calculatorController.hasil.value),
              ),
            CustomButton(text: "Footbal Players", textcolor: Colors.blueAccent, onPressed: () {
              // Get.offAllNamed(AppRoutes.footballPlayers);
              Get.toNamed(AppRoutes.footballPlayers);
            })
          ],
        ),
      ),
    );
  }
}