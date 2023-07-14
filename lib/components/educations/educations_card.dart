import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class EducationsCard extends StatelessWidget {
  final String? image;
  final String? title;

  const EducationsCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 20, left: 3, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: boxshadow,
        ),
        child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.35,
          child: Image.asset(
            image!,
          ),
        ),
      ),
    );
  }
}
