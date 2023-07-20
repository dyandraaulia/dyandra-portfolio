import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class EducationsCard extends StatelessWidget {
  final String? image;
  final String? title;
  String gpa;
  String status;
  String relevantCourse;
  String aditionalDesc;
  String year;

  EducationsCard({
    super.key,
    required this.image,
    required this.title,
    this.gpa = "4.00/4.00",
    this.status = "Student",
    this.relevantCourse = "",
    this.aditionalDesc = "",
    this.year = "2019-2021",
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  scrollable: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  content: Container(
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 300,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 0.7,
                                  style: BorderStyle.none)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(image!),
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text(title!, style: headingStyle),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(year,
                                    style: subHeadingStyle.copyWith(
                                        color: Colors.white)),
                              ),
                              SizedBox(height: 10),
                              Text("$status \u2013 \nGPA: $gpa",
                                  style: subHeadingStyle,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ));
      },
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
