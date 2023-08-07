import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:url_launcher/url_launcher.dart';

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
                button('assets/icons/gmail.png', 'dyandraaulia157@gmail.com',
                    'mailto:dyandraaulia157@gmail.com?subject=&body='),
                button('assets/icons/github.png', 'github.com/dyandraaulia',
                    'github.com/dyandraaulia'),
                button(
                    'assets/icons/linkedin.png',
                    'linkedin.com/in/dyandraaulia',
                    'linkedin.com/in/dyandraaulia'),
                button(
                    'assets/icons/instagram.png',
                    'instagram.com/dyandraauliaa',
                    'instagram.com/dyandraauliaa'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget button(String image, String link, String url) {
    final Uri _url = Uri.parse(url);

    return Column(
      children: [
        InkWell(
          onTap: () {
            launchURL(_url);
          },
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
