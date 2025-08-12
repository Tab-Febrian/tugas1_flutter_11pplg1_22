import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/Controllers/football_controller.dart';
import 'package:practice/Routes/routes.dart';

class FootballPages extends StatelessWidget {
  FootballPages({super.key});
  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "My Football Players",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              final player = footballController.players[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.profileImage),
                ),
                title: Text(player.nama),
                subtitle: Text('${player.posisi} • #${player.nomorPunggung}'),
                onTap: () {
                  // Get.snackbar(
                  //   "Player Selected",
                  //   footballController.players[index],
                  //   // routw kw wditPage
                  // );
                  Get.toNamed(
                    AppRoutes.footballEditPlayers,
                    arguments: {'index': index},
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
