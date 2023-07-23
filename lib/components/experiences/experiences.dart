import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/components/experiences/experiences_card.dart';
import 'package:portfolio/data.dart';

class Experiences extends StatelessWidget {
  Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Experiences',
            style: headingStyle,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          height: 120,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: experiences.length,
              itemBuilder: (context, index) {
                final experience = experiences[index];
                return ExperiencesCard(
                  image: experience['image'],
                  title: experience['title'],
                  description: experience['description'],
                  position: experience['position'],
                  hintColor: experience['hintColor'],
                );
              }),
        ),
      ],
    );
  }
}
