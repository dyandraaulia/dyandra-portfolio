import 'package:flutter/material.dart';
import 'package:portfolio/components/educations/educations_card.dart';
import 'package:portfolio/theme.dart';

class Educations extends StatelessWidget {
  const Educations({super.key});

  @override
  Widget build(BuildContext context) {
    List educations = [
      {
        'image': 'assets/ugm.png',
        'title': 'Universitas Gadjah Mada',
        'status': 'Bachelor of Computer Science',
        'gpa': '3.79/4.00',
        'relevant-coursework':
            ': algorithms and data structures (Java OOP), front-end and UI/UX, software engineering implementation, workshop, software engineering method, machine learning, pattern recognition, big data analysis',
        'aditional-desc':
            'Had the opportunity to work on various final projects with teams using programming languages such as C++, Java, SQL, and Python, as well as frameworks like Next.js.',
        'year': '2021-Now'
      },
      {
        'image': 'assets/sma4.png',
        'title': 'SMA Negeri 4 Surakarta',
        'status': 'High School Diploma, Mathematics & Natural Science',
        'gpa': ' 90.8/100',
        'relevant-coursework': '',
        'aditional-desc':
            'Participated in the school\'s math olympiad team and represented the school in the National Mathematics Competition (KSN) in 2020.',
        'year': '2019-2021',
      },
    ];

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
