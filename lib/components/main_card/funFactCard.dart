import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class FunFactCard extends StatelessWidget {
  const FunFactCard({super.key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Emojis that describe me the most!',
            style: headingStyle.copyWith(
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                width: 35,
                'assets/icons/funfact1.png',
              ),
              SizedBox(
                width: 25,
              ),
              Image.asset(
                width: 50,
                'assets/icons/funfact2.png',
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                width: 50,
                'assets/icons/funfact3.png',
              ),
              SizedBox(
                width: 17,
              ),
              Image.asset(
                width: 30,
                'assets/icons/funfact4.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}
