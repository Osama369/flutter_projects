import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_style.dart';

class APPDoubleText extends StatelessWidget {
  const APPDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.function});

  final String bigText;
  final String smallText;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    // row me ham text ko show krwayen ge
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
            onTap: function,
            child: Text(smallText,
                style: AppStyles.textStyle
                    .copyWith(color: AppStyles.primaryColor)))
      ],
    ); // placeholder is just like box
  }
}
