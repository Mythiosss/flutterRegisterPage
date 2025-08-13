import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/uma_player_controller.dart';

class EditPlayerController extends GetxController {
  final UmaPlayerController umaPlayerController = Get.find<UmaPlayerController>();
  
  void updatePlayer(int index, String name, String position, String distance, String imagePath) {
    umaPlayerController.players[index] = Player(
      name: name,
      position: position,
      distance: distance,
      imagePath: imagePath,
    );
    umaPlayerController.players.refresh();
  }
}