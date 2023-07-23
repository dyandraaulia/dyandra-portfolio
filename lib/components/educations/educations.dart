import 'package:flutter/material.dart';
import 'package:portfolio/components/educations/educations_card.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/data.dart';

class Educations extends StatelessWidget {
  const Educations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Educations',
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
              itemCount: educations.length,
              itemBuilder: (context, index) {
                final education = educations[index];
                return EducationsCard(
                  image: education['image'],
                  title: education['title'],
                  status: education['status'],
                  gpa: education['gpa'],
                  year: education['year'],
                  relevantCourse: education['relevant-coursework'],
                  aditionalDesc: education['aditional-desc'],
                );
              }),
        ),
      ],
    );
  }
}
