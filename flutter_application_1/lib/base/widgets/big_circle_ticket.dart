import 'package:flutter/material.dart';

class BigCircleTicket extends StatelessWidget {
  final bool isRight;
  const BigCircleTicket({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 20,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: isRight == true // here we used turnary operator
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))
                  : BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)))),
    );
  }
}
