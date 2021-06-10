import 'package:flutter/material.dart';
import 'package:sinau/util/image.dart';
import 'package:sinau/util/listViewBottom.dart';
import 'package:sinau/util/listViewTop.dart';
import 'package:sinau/util/mainUtil.dart';

class ListViewItem extends StatelessWidget {
  final double point;
  final String name,level,title,description;

  const ListViewItem({Key key, this.point, this.name, this.level, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.size12),
      padding: EdgeInsets.all(SizeConfig.size12),
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: SizeConfig.screenWidth * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchListViewTop(title: title,description: description),
                    SizedBox(height: SizeConfig.size8 * 0.5),
                    ListViewBottom(point:point,level: level,name:name)
                  ],
                ),
              ),
              CustomImageWidget(
                  width: SizeConfig.screenWidth * 0.2,
                  height: SizeConfig.size25 * 2,
                  path: 'assets/images/logo3.png',
                  type: 1,
                  boxShape: BoxShape.rectangle),
            ],
          ),
        ],
      ),
    );
  }
}
