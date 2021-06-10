import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/image.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class InfoCardHeader extends StatelessWidget {
  final String path,title,description;

  const InfoCardHeader({Key key, this.path, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: SizeConfig.size25 * 2,
          width: SizeConfig.screenWidth * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  textColor: Constants.blackTextColor,
                  text: title,
                  fontSize: SizeConfig.size10,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1),
              SizedBox(height: SizeConfig.size8),
              TextWidget(
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  textColor: Constants.blackTextColor,
                  text: description,
                  fontSize: SizeConfig.size10,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ],
          ),
        ),
        CustomImageWidget(
            width: SizeConfig.screenWidth * 0.2,
            height: SizeConfig.size25 * 2,
            path: path,
            type: 1,
            boxShape: BoxShape.rectangle),
      ],
    );
  }
}
