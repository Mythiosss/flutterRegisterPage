import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/edit_player_controller.dart';
import 'package:latihan1_11pplg2/controllers/uma_player_controller.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';

class EditPlayerPage extends StatelessWidget {
  
  EditPlayerPage({super.key, required this.index});
  final int index;
  final UmaPlayerController umaPlayerController = Get.find<UmaPlayerController>();
  final EditPlayerController editPlayerController = Get.find<EditPlayerController>();

  @override
  Widget build(BuildContext context) {

    final player = umaPlayerController.players[index];
    final nameController = TextEditingController(text: player.name);
    final distanceController = TextEditingController(text: player.distance);
    final positionController = TextEditingController(text: player.position);
    final imagePathController = TextEditingController(text: player.imagePath); // tambah ini

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Tampilkan image preview
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(player.imagePath),
              onBackgroundImageError: (exception, stackTrace) {
                // Handle error jika image tidak ditemukan
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name"
              ),
            ),
            TextField(
              controller: positionController,
              decoration: const InputDecoration(
                labelText: "Position"
              ),
            ),
            TextField(
              controller: distanceController,
              decoration: const InputDecoration(
                labelText: "Distance"
              ),
            ),
            TextField(
              controller: imagePathController,
              decoration: const InputDecoration(
                labelText: "Image Path",
                hintText: "assets/images/filename.jpeg"
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              myText: "Update", 
              myColor: Colors.green, 
              onPressed: () {
                editPlayerController.updatePlayer(
                  index,
                  nameController.text,
                  positionController.text,
                  distanceController.text,
                  imagePathController.text, // tambah parameter imagePath
                );
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}