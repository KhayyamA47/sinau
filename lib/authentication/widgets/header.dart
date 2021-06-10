import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/image.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class HeaderElements extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.size16),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageWidget(
              width: SizeConfig.screenWidth * 0.35,
              height: SizeConfig.size25 * 2,
              path: 'assets/images/logo.png',
              type: 1,
              boxShape: BoxShape.rectangle),
          SizedBox(height: SizeConfig.size20),
          TextWidget(
              maxLines: 1,
              textColor: Constants.whiteTextColor,
              text: 'SINAU',
              fontSize: SizeConfig.size25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
          TextWidget(
              maxLines: 1,
              textColor: Constants.whiteTextColor,
              text: 'Learn from anything and anywhere',
              fontSize: SizeConfig.size16,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.1),
        ],
      ),
    );
  }
}
