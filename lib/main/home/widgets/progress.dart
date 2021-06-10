import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/image.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class Progress extends StatelessWidget {
  final String label,path;
  final double value;

  const Progress({Key key, this.label, this.path, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * 0.4,
      child: Row(
        children: [
          CustomImageWidget(
              width: SizeConfig.size10 * 3,
              height: SizeConfig.size10 * 3,
              path: path,
              boxFit: BoxFit.fill,
              type: 1,
              boxShape: BoxShape.rectangle),
          SizedBox(width: SizeConfig.size8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  textColor: Constants.greyTextColor,
                  text: label,
                  fontSize: SizeConfig.size8,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1),
              SizedBox(height: SizeConfig.size8 * 0.3),
              TextWidget(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  textColor: Constants.blackTextColor,
                  text: '$value%',
                  fontSize: SizeConfig.size10,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ],
          )
        ],
      ),
    );
  }
}
