import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class BackAndLabel extends StatelessWidget {
  final Function function;

  const BackAndLabel({Key key, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(Icons.arrow_back_ios,
                color: Constants.backArrowColor, size: SizeConfig.size12),
            onPressed: function),
        TextWidget(
            textAlign: TextAlign.center,
            maxLines: 2,
            textColor: Constants.whiteTextColor,
            text: 'Explore',
            fontSize: SizeConfig.size8,
            fontWeight: FontWeight.w400,
            letterSpacing: 1),
      ],
    );
  }
}
