import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String myText;
  final TextStyle myStyle;

  

  const CustomText({super.key, required this.myText, required this.myStyle});

  @override
  Widget build(BuildContext context) {
    return Text(myText, style: myStyle);
  }
}