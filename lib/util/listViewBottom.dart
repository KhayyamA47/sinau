import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/image.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class ListViewBottom extends StatelessWidget {
  final double point;
  final String name, level;

  const ListViewBottom({Key key, this.point, this.name, this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * 0.52,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.star,
                color: Constants.rateStarColor, size: SizeConfig.size10),
            TextWidget(
                textAlign: TextAlign.left,
                maxLines: 2,
                textColor: Constants.blackTextColor,
                text: point.toString(),
                fontSize: SizeConfig.size8,
                fontWeight: FontWeight.w400,
                letterSpacing: 1),
            CustomImageWidget(
                width: SizeConfig.size10 * 0.3,
                height: SizeConfig.size12,
                path: 'assets/images/dot.png',
                type: 1,
                boxShape: BoxShape.rectangle),
            TextWidget(
                textAlign: TextAlign.left,
                maxLines: 2,
                textColor: Constants.greyTextColor,
                text: 'By $name',
                fontSize: SizeConfig.size8,
                fontWeight: FontWeight.w400,
                letterSpacing: 1),
            CustomImageWidget(
                width: SizeConfig.size10 * 0.3,
                height: SizeConfig.size12,
                path: 'assets/images/dot.png',
                type: 1,
                boxShape: BoxShape.rectangle),
            TextWidget(
                textAlign: TextAlign.left,
                maxLines: 2,
                textColor: Constants.greyTextColor,
                text: level,
                fontSize: SizeConfig.size8,
                fontWeight: FontWeight.w400,
                letterSpacing: 1),
          ],
        ),
      ),
    );
  }
}
