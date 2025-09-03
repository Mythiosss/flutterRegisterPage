// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/edit_player_controller.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';
import 'package:latihan1_11pplg2/widgets/page_textfield.dart';

class EditPlayerPage extends StatelessWidget {
  const EditPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final editController = Get.put(EditPlayerController());
    
    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(editController.imagePathController.text),
              ),
              const SizedBox(height: 20),
              PageTextfield(
                controller: editController.nameController,
                decoration: const InputDecoration(
                  labelText: "Name"
                ),
              ),
              PageTextfield(
                controller: editController.positionController,
                decoration: const InputDecoration(
                  labelText: "Position"
                ),
              ),
              PageTextfield(
                controller: editController.distanceController,
                decoration: const InputDecoration(
                  labelText: "Distance"
                ),
              ),
                const SizedBox(height: 20),
                CustomButton(
                myText: "Update", 
                myColor: Colors.green, 
                onPressed: () {
                  editController.updatePlayer(
                    editController.nameController.text,
                    editController.positionController.text,
                    editController.distanceController.text,
                    editController.imagePathController.text, 
                  );
                  Get.back();
                },
              )
            ],
          ),
        ));

      }
    
  }
