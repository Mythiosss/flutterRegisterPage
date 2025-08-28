import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/uma_player_controller.dart';

class EditPlayerController extends GetxController {

  

  final UmaPlayerController umaPlayerController = Get.find<UmaPlayerController>();

  late TextEditingController nameController;
  late TextEditingController distanceController;
  late TextEditingController positionController;
  late TextEditingController imagePathController;
  int? index;

  void initializeWithIndex(int playerIndex) {
    index = playerIndex;
    final player = umaPlayerController.players[index!];
    nameController = TextEditingController(text: player.name);
    distanceController = TextEditingController(text: player.distance);
    positionController = TextEditingController(text: player.position);
    imagePathController = TextEditingController(text: player.imagePath);
  }

   @override
  void onInit() {
    super.onInit();
    nameController    = TextEditingController();  
    distanceController= TextEditingController();
    positionController= TextEditingController();
    imagePathController= TextEditingController();
    initializeWithIndex(Get.arguments ?? 0);
  }
  
  void updatePlayer(int index, String name, String position, String distance, String imagePath) {
    umaPlayerController.players[index] = Player(
      name: name,
      position: position,
      distance: distance,
      imagePath: imagePath,
    );
    umaPlayerController.players.refresh();
  }

  @override
  void onClose() {
    nameController.dispose();
    distanceController.dispose();
    positionController.dispose();
    imagePathController.dispose();
    super.onClose();
  }
}