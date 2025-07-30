import 'package:flutter/material.dart';

class Customtb extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool password;


  const Customtb({
    Key? key, 
    required this.hint,
    required this.controller,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: password,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(),
      ),
    );
  }
  
}