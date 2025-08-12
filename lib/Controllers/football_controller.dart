import 'package:get/get.dart';
import '../Models/player_model.dart';

class FootballController extends GetxController {
  var players = <Player>[
    Player(
      profileImage: 'asset/kanu.jpeg',
      nama: 'Kanu',
      posisi: 'Striker',
      nomorPunggung: 9,
    ),
    Player(
      profileImage: 'asset/vanB.jpg',
      nama: 'Van Basten',
      posisi: 'Midfielder',
      nomorPunggung: 10,
    ),
  ].obs;
}
