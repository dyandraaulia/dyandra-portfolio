import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Contact here!',
            style: headingStyle,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Email',
                    style: subHeadingStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.56,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'Enter your email',
                        hintStyle: subHeadingStyle.copyWith(
                            fontSize: 14, color: Color(0xff939393)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.73,
                child: TextFormField(
                  controller: messageController,
                  decoration: InputDecoration(
                    hintText: 'Write your messages here...',
                    hintStyle: subHeadingStyle.copyWith(
                        fontSize: 14, color: Color(0xff939393)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                  maxLines: 4,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Send',
            style: subHeadingStyle.copyWith(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}
