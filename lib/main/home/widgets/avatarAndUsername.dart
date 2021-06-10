import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/image.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class AvatarAndUsername extends StatelessWidget {
  final String path,name;

  const AvatarAndUsername({Key key, this.path, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageWidget(
            width: SizeConfig.screenWidth * 0.19,
            height: SizeConfig.size20 * 2,
            path:path,
            // ,
            type: 2,
            boxShape: BoxShape.circle),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                textAlign: TextAlign.center,
                maxLines: 2,
                textColor: Constants.whiteTextColor,
                text: 'Welcome back',
                fontSize: SizeConfig.size8,
                fontWeight: FontWeight.w300,
                letterSpacing: 1),
            SizedBox(height: SizeConfig.size8 * 0.3),
            TextWidget(
                textAlign: TextAlign.center,
                maxLines: 2,
                textColor: Constants.whiteTextColor,
                text: name,
                fontSize: SizeConfig.size10,
                fontWeight: FontWeight.w600,
                letterSpacing: 1),
          ],
        )
      ],
    );
  }
}
