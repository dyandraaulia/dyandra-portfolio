import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class ExperiencesCard extends StatelessWidget {
  final String? image;
  final String? title;

  const ExperiencesCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: Container(
                child: Column(
                  children: [
                    Text('this is ok'),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(right: 20, left: 3, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: boxshadow,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.30,
          child: Image.asset(
            image!,
          ),
        ),
      ),
    );
  }
}
