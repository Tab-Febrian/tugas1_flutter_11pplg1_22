import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/Controllers/football_edit_controller.dart';

class FootballEditPage extends StatelessWidget {
  FootballEditPage({super.key});

  final editController = Get.put(FootballEditController());

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final int index = args['index'];

    // Load data player untuk diedit
    editController.loadPlayer(index);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Edit Player",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: editController.namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: editController.posisiController,
              decoration: InputDecoration(labelText: 'Posisi'),
            ),
            TextField(
              controller: editController.nomorPunggungController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nomor Punggung'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                editController.updatePlayer();
                Get.back();
              },
              child: Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
