import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/latest_project/bannerProject.dart';

class LatestProject extends StatefulWidget {
  const LatestProject({super.key});

  @override
  State<LatestProject> createState() => _LatestProjectState();
}

class _LatestProjectState extends State<LatestProject> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    int index = -1;
    Widget indicator(int index) {
      return Container(
        width: 5,
        height: 4,
        margin: EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? Color(0xff837575) : Color(0xffD9D9D9),
        ),
      );
    }

    List ProjectData = [
      {
        'title': 'Kweekstop - post uts',
        'description':
            'Website ini merupakan website e-commerce hasil project tugas mata kuliah WIRPL selama setengah semester. \nskills: mysql, next.js',
        'image': 'assets/projects/kweekstop.png',
      },
      {
        'title': 'Kweekstop - pra uts',
        'description': 'Description 2',
        'image': 'assets/projects/kweekstop2.png',
      },
      {
        'title': 'Rejoin',
        'description': 'Description 3',
        'image': 'assets/projects/rejoin.png',
      },
    ];

    return Column(
      children: [
        CarouselSlider(
          items: ProjectData.map((project) {
            return Builder(
              builder: (BuildContext context) {
                return BannerProject(
                  image: project['image'],
                  title: project['title'],
                  description: project['description'],
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 180,
            scrollDirection: Axis.horizontal,
            initialPage: 0,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ProjectData.map((project) {
            index++;
            return indicator(index);
          }).toList(),
        ),
      ],
    );
  }
}
