import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: boxshadow,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            'assets/image-dyandra.png',
            height: 160,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hi, ',
                    style: headingStyle,
                  ),
                  Image.asset(
                    'assets/icons/waving-hand.png',
                    width: 20,
                  )
                ],
              ),
              RichText(
                text: TextSpan(
                  text: 'I\'m ',
                  style: headingStyle,
                  children: [
                    TextSpan(
                      text: 'Dyandra ',
                      style: headingStyle.copyWith(
                        color: accentColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Aulia',
                      style: headingStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '2nd year student of Computer \nScience at Universitas \nGadjah Mada',
                style: subHeadingStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
