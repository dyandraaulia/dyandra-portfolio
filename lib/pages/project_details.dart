import 'package:flutter/material.dart';
import 'package:portfolio/components/tech_stack/techstack_listview.dart';
import 'package:portfolio/data.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:portfolio/theme.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        panel: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'judul'.toUpperCase(),
                style: headingStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Website',
                style: subHeadingStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Waktu Pengerjaan',
                      style: subHeadingStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      '2 bulan',
                      style: headingStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Description',
                style: subHeadingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Lorem ipsum dolor si',
                style: subHeadingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Tech Stack',
                style: subHeadingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: TechStackListView(techStacks: images)),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                images[0]['images'],
              )
            ],
          ),
        ),
        minHeight: MediaQuery.of(context).size.height * 0.6,
        maxHeight: MediaQuery.of(context).size.height * 0.65,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
    );
  }
}
