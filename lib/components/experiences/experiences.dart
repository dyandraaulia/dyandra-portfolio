import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/components/experiences/experiences_card.dart';

class Experiences extends StatelessWidget {
  Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    List experiences = [
      {
        'image': 'assets/experiences/omahti.png',
        'title': 'OmahTI',
        'description':
            'OmahTI merupakan badan semiotonom di bawah Himakom yang bergerak dibidang teknologi informasi dan berfokus pada 4 pilar yaitu Pelatihan, Perlombaan, Produk, dan Pelayanan.',
        'position': [
          'Member of Mobile App Division',
          'Head of External Affairs',
          'Secretary at Oemoem (OmahTI’s Event)',
          'Staff of Public Relations at OLC (OmahTI’s Event)'
        ],
        'hintColor': '0xffF0861A',
      },
      {
        'image': 'assets/experiences/joints.png',
        'title': 'Joints',
        'description':
            'JOINTS UGM 2023 is an anual event organized by Himakom that consist of four series of activities, namely Grand Launching, JointsCamp, TechTalk, and Competition.',
        'position': ['Subcoordinator of Public Relations Division'],
        'hintColor': '0xff172735',
      },
      {
        'image': 'assets/experiences/recursion.png',
        'title': 'Recursion',
        'description':
            'Recursion Tech Mentoring is a one-on-two mentoring program for students seeking to establish a career in the digital technology industry. ',
        'position': ['Mentee'],
        'hintColor': '0xffD33738',
      },
    ];

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
