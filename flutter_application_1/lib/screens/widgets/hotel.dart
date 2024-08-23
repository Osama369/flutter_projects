import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/media.dart';
import 'package:flutter_application_1/base/res/styles/app_style.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 350,
      margin: EdgeInsets.only(right: 16),
      width: size.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppStyles.primaryColor),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AppMedia.hotelRoom))),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Open space",
              style:
                  AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "London",
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$25/night",
              style:
                  AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor),
            ),
          ),
        ],
      ),
    );
  }
}
