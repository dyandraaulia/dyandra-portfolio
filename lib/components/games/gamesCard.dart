import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class GamesCard extends StatelessWidget {
  final String? image;
  final String? title;

  const GamesCard({super.key, this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
      // double infinity?
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: boxShadow2,
      ),
      child: Column(
        children: [
          Image.asset(
            image!,
            height: 90,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title!,
            style: subHeadingStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
