import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/uma_player_controller.dart';
import 'package:latihan1_11pplg2/model/playermodel.dart';

class EditPlayerController extends GetxController {

  

  final UmaPlayerController umaPlayerController = Get.find<UmaPlayerController>();

  final distanceController = TextEditingController();
  final positionController =TextEditingController();
  final umaController = Get.find<UmaPlayerController>();
  final nameController = TextEditingController();
  final imagePathController = TextEditingController();
  late int index;

  @override
  void onInit() {
    super.onInit();
    index = Get.arguments as int;
    loadPlayer();
  }

  void loadPlayer() {
    var player = umaController.players[index];
    nameController.text = player.name;
    positionController.text = player.position;
    imagePathController.text = player.imagePath;
    distanceController.text = player.distance;
  }
  
  void updatePlayer(String name, String position, String distance, String imagePath) {
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
