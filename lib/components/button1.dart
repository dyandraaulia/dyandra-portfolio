import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class Button1 extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  // ignore: prefer_typing_uninitialized_variables
  final clicked;

  const Button1(
      {super.key, required this.title, this.onPressed, required this.clicked});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: clicked ? primaryColor : secondaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        title,
        style:
            clicked ? buttonStyle : buttonStyle.copyWith(color: Colors.black),
      ),
    );
  }
}
