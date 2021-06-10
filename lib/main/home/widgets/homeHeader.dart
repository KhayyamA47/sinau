import 'package:flutter/material.dart';
import 'package:sinau/main/home/widgets/avatarAndUsername.dart';
import 'package:sinau/main/home/widgets/notification.dart';

import 'package:sinau/util/mainUtil.dart';

class HomeHeader extends StatefulWidget {
  final String path, name;
  final Function function;

  const HomeHeader({Key key, this.path, this.name, this.function}) : super(key: key);

  @override
  _HomeHeaderState createState() => _HomeHeaderState(path,name,function);
}

class _HomeHeaderState extends State<HomeHeader> {
  String path, name;
  Function function;
  _HomeHeaderState(this.path, this.name,this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(
          SizeConfig.size8, SizeConfig.size8, SizeConfig.size8, 0),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarAndUsername(
                path: path,
                name: name,
              ),
              NotificationWidget(
                function: function
              )
            ],
          )
        ],
      ),
    );
  }
}
