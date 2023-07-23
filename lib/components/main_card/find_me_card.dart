import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class FindMeCard extends StatelessWidget {
  const FindMeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
      height: 200,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: boxshadow,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 25,
            right: 290,
            child: Image.asset(
              'assets/icons/findme1.png',
              width: 40,
            ),
          ),
          Positioned(
            top: 160,
            right: 300,
            child: Image.asset(
              'assets/icons/findme2.png',
              width: 25,
            ),
          ),
          Positioned(
            top: 20,
            right: 35,
            child: Image.asset(
              'assets/icons/findme3.png',
              width: 40,
            ),
          ),
          Positioned(
            top: 150,
            right: 28,
            child: Image.asset(
              'assets/icons/findme4.png',
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Click me!',
                  style: headingStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                button('assets/icons/gmail.png', 'dyandraaulia157@gmail.com'),
                button('assets/icons/github.png', 'github.com/dyandraaulia'),
                button('assets/icons/linkedin.png',
                    'linkedin.com/in/dyandraaulia'),
                button('assets/icons/instagram.png',
                    'instagram.com/dyandraauliaa'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget button(String image, String link) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffB1CFEB),
            ),
            child: Row(
              children: [
                Container(
                  width: 40,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffC059FF),
                  ),
                  child: Image.asset(
                    image,
                    width: 15,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  link,
                  style: subHeadingStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 6,
        )
      ],
    );
  }
}
