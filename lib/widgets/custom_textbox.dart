import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customtb extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool password;
  final bool isNumber;
  final String label;


  const Customtb({super.key, 
    required this.hint,
    required this.controller,
    required this.password, 
    required this.isNumber,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      inputFormatters: isNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
      controller: controller,
      obscureText: password,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(),
        labelText: label,
      ),
    );
  }
  
}