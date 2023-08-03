import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/pages/project_details.dart';

class BannerProject extends StatelessWidget {
  Project? project;

  BannerProject({super.key, this.project});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProjectDetails(project: project!)));
      },
      child: Container(
        color: Colors.transparent,
        child: Container(
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: secondaryColor,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 150,
                  child: Image.asset(
                    project!.galleries[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.17,
                  left: MediaQuery.of(context).size.width * 0.03,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor.withOpacity(0.8),
                    ),
                    child: Text(
                      project!.title + ' >',
                      style: subHeadingStyle.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                          color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
