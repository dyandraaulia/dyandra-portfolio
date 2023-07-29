import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class BannerProject extends StatelessWidget {
  var image;
  var title;
  var description;

  BannerProject({super.key, this.image, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/project-details');
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
                    image,
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
                      title + ' >',
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
