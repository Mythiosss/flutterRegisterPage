import 'package:flutter/material.dart';

class PageTextfield extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration decoration;

  const PageTextfield({
    super.key,
    required this.controller,
    required this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: decoration,
    );
  }
}
