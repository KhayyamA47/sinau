import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sinau/main/home/widgets/progress.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';

class InfoCardBottom extends StatelessWidget {
  final String label,path;
  final double value,progressPercentage;

  const InfoCardBottom({Key key, this.label, this.path, this.value, this.progressPercentage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Progress(path:path,value: value,label:label),
            Progress(path:path,value: value,label:label),
          ],
        ),
        SizedBox(height: SizeConfig.size8),
        LinearPercentIndicator(
          lineHeight: SizeConfig.size10,
          percent:progressPercentage,
          linearStrokeCap: LinearStrokeCap.roundAll,
          backgroundColor: Constants.progressIndicatorBackgroundColor,
          progressColor: Constants.progressIndicatorColor,
        )
      ],
    );
  }
}
