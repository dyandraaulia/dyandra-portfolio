import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/latest_project/banner_project.dart';
import 'package:portfolio/data.dart';
import 'package:portfolio/models/projects.dart';

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
    final projects = ProjectData2.map((data) => Project.fromMap(data)).toList();

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

    return Column(
      children: [
        CarouselSlider(
          // key: ValueKey(projects[currentIndex].id),
          // items: ProjectData2.map((project) {
          //   return Builder(
          //     builder: (BuildContext context) {
          //       return BannerProject(
          //         image: project['galleries'],
          //         title: project['title'],
          //         description: project['description'],
          //       );
          //     },
          //   );
          // }).toList(),
          items: projects.map((project) {
            return Builder(
              builder: (BuildContext context) {
                return BannerProject(
                  project: project,
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
