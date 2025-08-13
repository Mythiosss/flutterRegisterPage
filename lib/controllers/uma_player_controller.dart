import 'package:get/get.dart';

class Player {
  final String name;
  final String position;
  final String distance;
  final String imagePath;

  Player({
    required this.name,
    required this.position,
    required this.distance,
    required this.imagePath
  });
}

class UmaPlayerController extends GetxController {
  var players = <Player>[
    Player(
      name: "Tokai Teio", 
      position: "Pace", 
      distance: "Medium", 
      imagePath: "assets/image/teio.jpeg", // fix: image -> images
    ),
    Player(
      name: "Symboli Rudolf", 
      position: "Pace", 
      distance: "Long",
      imagePath: "assets/image/rudolf.jpg", // tambah imagePath
    ),
    Player(
      name: "Nice Nature", 
      position: "Front", 
      distance: "Medium",
      imagePath: "assets/image/nature.jpeg", // tambah imagePath
    ),
    Player(
      name: "Mejiro McQueen", 
      position: "Late", 
      distance: "Medium",
      imagePath: "assets/image/mcqueen.jpg", // tambah imagePath
    ),
    Player(
      name: "Maruzensky", 
      position: "End", 
      distance: "Sprint",
      imagePath: "assets/image/maruzensky.jpeg", // tambah imagePath
    ),
  ].obs;
}