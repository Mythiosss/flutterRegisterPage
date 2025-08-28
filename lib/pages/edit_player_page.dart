// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/edit_player_controller.dart';
import 'package:latihan1_11pplg2/controllers/uma_player_controller.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';

class EditPlayerPage extends StatelessWidget {
  EditPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UmaPlayerController umaPlayerController = Get.find<UmaPlayerController>();
    final EditPlayerController editPlayerController = Get.put(EditPlayerController());
    
    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Obx(() {
        if (editPlayerController.index == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        
        final int index = editPlayerController.index!;
        final player = umaPlayerController.players[index];

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(player.imagePath),
                onBackgroundImageError: (exception, stackTrace) {
                  // Handle error
                },
              ),
              const SizedBox(height: 20),
              TextField(
                controller: editPlayerController.nameController,
                decoration: const InputDecoration(
                  labelText: "Name"
                ),
              ),
              TextField(
                controller: editPlayerController.positionController,
                decoration: const InputDecoration(
                  labelText: "Position"
                ),
              ),
              TextField(
                controller: editPlayerController.distanceController,
                decoration: const InputDecoration(
                  labelText: "Distance"
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                myText: "Update", 
                myColor: Colors.green, 
                onPressed: () {
                  editPlayerController.updatePlayer(
                    index,
                    editPlayerController.nameController.text,
                    editPlayerController.positionController.text,
                    editPlayerController.distanceController.text,
                    editPlayerController.imagePathController.text, 
                  );
                  Get.back();
                },
              )
            ],
          ),
        );
      }),
    );
  }
}