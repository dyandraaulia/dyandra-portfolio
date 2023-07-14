import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class TechStackListView extends StatelessWidget {
  // final ScrollController scrollController;
  final List<Map> techStacks;

  const TechStackListView({
    super.key,
    required this.techStacks,
    // required this.scrollController
  });

  @override
  Widget build(BuildContext context) {
    Widget box(String image) {
      return Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            image,
            height: 20,
          ));
    }

    return ListView.builder(
      // controller: scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: techStacks.length,
      itemBuilder: (context, index) {
        return box(techStacks[index]['images']);
      },
    );
  }
}
