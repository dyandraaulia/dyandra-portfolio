import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class ExperiencesCard extends StatefulWidget {
  final String? image;
  final String? title;
  final String? description;
  final List<String>? position;
  String hintColor;

  ExperiencesCard(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.position,
      this.hintColor = '0xFF1D1D1D'});

  @override
  State<ExperiencesCard> createState() => _ExperiencesCardState();
}

class _ExperiencesCardState extends State<ExperiencesCard> {
  int slide = 0;
  @override
  Widget build(BuildContext context) {
    Widget _buildPosition() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.position!
            .map((e) => Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 45,
                width: MediaQuery.of(context).size.width * 0.51,
                decoration: BoxDecoration(
                  color: Color(int.parse(widget.hintColor)),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e,
                        style: subHeadingStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: Colors.white),
                      ),
                    ])))
            .toList(),
      );
    }

    Future openDialog() => showDialog(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Dialog(
                  backgroundColor: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: slide == 0
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 40),
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                      child: Image.asset(
                                        // width: MediaQuery.of(context).size.width * 0.25,
                                        widget.image!,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      widget.description!,
                                      textAlign: TextAlign.center,
                                      style: subHeadingStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                color: primaryColor,
                                iconSize: 20,
                                onPressed: () {
                                  setState(() {
                                    slide = 1;
                                  });
                                },
                              ),
                            ],
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    slide = 0;
                                  });
                                },
                                icon: Icon(Icons.arrow_back_ios),
                                color: primaryColor,
                                iconSize: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: _buildPosition(),
                              )
                            ],
                          ),
                  ),
                );
              },
            );
          },
        ).whenComplete(() => setState(() {
              slide = 0;
            }));

    return InkWell(
      onTap: () {
        openDialog();
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(right: 20, left: 3, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: boxshadow,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Image.asset(
            widget.image!,
          ),
        ),
      ),
    );
  }
}
