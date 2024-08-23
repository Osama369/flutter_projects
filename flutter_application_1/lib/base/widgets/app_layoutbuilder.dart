import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppLayoutbuilder extends StatelessWidget {
  final randomDevider; // declare

  final double width;
  const AppLayoutbuilder(
      {super.key, required this.randomDevider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("${(constraints.constrainWidth() / randomDevider).floor()}");
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDevider).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white)),
                )),
      );
    });
  }
}
