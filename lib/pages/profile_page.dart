import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/widgets/custom_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50, // ukuran lingkaran
              backgroundImage: AssetImage('assets/image/avatar.png'), // ganti sesuai path gambar kamu
            ),
            SizedBox(height: 16),
            CustomText(
              myText: "Sharlyf Rajashsatara Altafarrel",
              myStyle: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 8), // memberi jarak antar teks
            CustomText(
              myText: "Kelas: 11 PPLG 2",
              myStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 4),
            CustomText(
              myText: "No Absen: 32",
              myStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
