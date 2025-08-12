import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/Controllers/football_controller.dart';
import '../Models/player_model.dart';

class FootballEditController extends GetxController {
  final footballController = Get.find<FootballController>();

  final namaController = TextEditingController();
  final posisiController = TextEditingController();
  final nomorPunggungController = TextEditingController();

  late int index;

  void loadPlayer(int idx) {
    index = idx;
    final player = footballController.players[idx];
    namaController.text = player.nama;
    posisiController.text = player.posisi;
    nomorPunggungController.text = player.nomorPunggung.toString();
  }

  void updatePlayer() {
    final updatedPlayer = Player(
      profileImage: footballController.players[index].profileImage,
      nama: namaController.text,
      posisi: posisiController.text,
      nomorPunggung: int.tryParse(nomorPunggungController.text) ?? 0,
    );
    footballController.players[index] = updatedPlayer;
  }

  @override
  void onClose() {
    namaController.dispose();
    posisiController.dispose();
    nomorPunggungController.dispose();
    super.onClose();
  }
}
