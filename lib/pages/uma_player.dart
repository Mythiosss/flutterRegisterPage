import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/uma_player_controller.dart';
import 'package:latihan1_11pplg2/controllers/edit_player_controller.dart'; 
import 'package:latihan1_11pplg2/routes/routes.dart';

class UmaPlayer extends StatelessWidget {
  UmaPlayer({super.key});

  final UmaPlayerController umaPlayerController = Get.put(UmaPlayerController());
  final EditPlayerController editPlayerController = Get.put(EditPlayerController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Team"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(()=>ListView.builder(
          itemCount: umaPlayerController.players.length,
          itemBuilder: (context, index) {
            final player = umaPlayerController.players[index];
            return ListTile(
              leading: CircleAvatar(
              backgroundImage: AssetImage(player.imagePath),
              radius: 25,
              ),
              title: Text(player.name),
              subtitle: Text("${player.position} - ${player.distance}"),
              onTap: (){
                Get.toNamed(AppRoutes.editPage, arguments: index);
              },
            );
          },
        )),
      ),
    );
  }
}