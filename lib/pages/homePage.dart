import 'package:flutter/material.dart';
import 'package:portfolio/components/contact/contact.dart';
import 'package:portfolio/components/educations/educations.dart';
import 'package:portfolio/components/experiences/experiences.dart';
import 'package:portfolio/components/games/games.dart';
import 'package:portfolio/components/latest_project/latest_project.dart';
import 'package:portfolio/components/main_card/find_me_card.dart';
import 'package:portfolio/components/main_card/funfact_card.dart';
import 'package:portfolio/components/main_card/intro_card.dart';
import 'package:portfolio/components/tech_stack/tech_stack.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/components/button1.dart';
import 'package:portfolio/components/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int card = 1;
  List<bool> clicked = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portfolio',
          style: titleStyle,
        ),
        // actions tuh kek leading tp sebelah kanan
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.menu,
        //   ),
        // ),
        toolbarHeight: 45,
        backgroundColor: primaryColor,
      ),
      drawer: Drawer(
        backgroundColor: primaryColor,
        child: NavDrawer(),
      ),
      body: ListView(
        children: [
          card == 1
              ? IntroCard()
              : card == 2
                  ? FindMeCard()
                  : FunFactCard(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button1(
                title: 'About me',
                clicked: clicked[0],
                onPressed: () {
                  setState(() {
                    card = 1;
                    clicked[0] = true;
                    clicked[1] = false;
                    clicked[2] = false;
                  });
                },
              ),
              SizedBox(
                width: 5,
              ),
              Button1(
                  title: 'Find me at',
                  clicked: clicked[1],
                  onPressed: () {
                    setState(() {
                      card = 2;
                      // print(card);
                      clicked[0] = false;
                      clicked[1] = true;
                      clicked[2] = false;
                    });
                  }),
              SizedBox(
                width: 5,
              ),
              Button1(
                  clicked: clicked[2],
                  title: 'Fun fact',
                  onPressed: () {
                    setState(() {
                      card = 3;
                      // print(card);
                      clicked[0] = false;
                      clicked[1] = false;
                      clicked[2] = true;
                    });
                  }),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Mini Projects',
              style: headingStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Games(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Latest Project',
              style: headingStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          LatestProject(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Tech Stack',
              style: headingStyle,
            ),
          ),
          TechStack(),
          SizedBox(
            height: 10,
          ),
          Experiences(),
          SizedBox(
            height: 20,
          ),
          Educations(),
          SizedBox(
            height: 20,
          ),
          Contact(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
