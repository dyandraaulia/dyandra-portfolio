import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/tech_stack/techstack_listview.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/data.dart';

class TechStack extends StatefulWidget {
  const TechStack({super.key});

  @override
  State<TechStack> createState() => _TechStackState();
}

class _TechStackState extends State<TechStack> {
  ScrollController _scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     double minScrollExtent1 = _scrollController.position.minScrollExtent;
  //     double maxScrollExtent1 = _scrollController.position.maxScrollExtent;

  //     animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 25,
  //         _scrollController);
  //   });
  // }

  // animateToMaxMin(double max, double min, double direction, int seconds,
  //     ScrollController scrollController) {
  //   scrollController
  //       .animateTo(direction,
  //           duration: Duration(seconds: seconds), curve: Curves.linear)
  //       .then((value) {
  //     direction = direction == max ? min : max;
  //     animateToMaxMin(max, min, direction, seconds, scrollController);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      height: 40,
      child: TechStackListView(
        techStacks: images,
        // scrollController: _scrollController,
      ),
    );
  }
}
