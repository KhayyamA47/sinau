import 'package:flutter/material.dart';
import 'package:sinau/main/home/widgets/infoCardBottom.dart';
import 'package:sinau/main/home/widgets/infoCardHeader.dart';
import 'package:sinau/util/mainUtil.dart';

class InfoCard extends StatelessWidget {
  final String pathHeader,title,description,label,path;
  final double value,progressPercentage;

  const InfoCard({Key key, this.pathHeader, this.title, this.description, this.label, this.path, this.value, this.progressPercentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.size12),
      margin: EdgeInsets.only(
          top: SizeConfig.screenHeight * 0.15,
          left: SizeConfig.size16,
          right: SizeConfig.size16),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.21,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          InfoCardHeader(path: pathHeader,title: title,description: description),
          SizedBox(height: SizeConfig.size18),
          InfoCardBottom(path: path,value: value,label: label,progressPercentage: progressPercentage)

        ],
      ),
    );
  }
}
