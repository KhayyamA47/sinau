import 'package:flutter/material.dart';
import 'package:sinau/main/home/widgets/homeHeader.dart';
import 'package:sinau/main/home/widgets/infoCard.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/listAndHeader.dart';
import 'package:sinau/util/mainUtil.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  Widget notification() {
    return IconButton(
        icon: Icon(
          Icons.zoom_out_rounded,
          color: Constants.notificationButtonColor,
        ),
        onPressed: () {});
  }

  Widget header() {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.size8, vertical: SizeConfig.size20),
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight * 0.25,
        child: Column(
          children: [
            HomeHeader(
              path:
                  'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
              name: 'Poetri Lazuardi',
              function: () {},
            ),
          ],
        ));
  }

  Widget ovalView() {
    return Container(
        decoration: BoxDecoration(
            color: Constants.ovalViewColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(SizeConfig.size20),
                topRight: Radius.circular(SizeConfig.size20))),
        padding: EdgeInsets.only(
            left: SizeConfig.size16,
            right: SizeConfig.size16,
            top: SizeConfig.screenHeight * 0.13),
        width: SizeConfig.screenWidth,
        child: ListAndHeader(title: 'Recommended Courses'));
  }

  Widget body() {
    return SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Stack(
          children: [
            Column(
              children: [
                header(),
                Expanded(child: ovalView()),
              ],
            ),
            InfoCard(
              progressPercentage: 0.1,
              label: 'Current Progress',
              value: 50,
              pathHeader: 'assets/images/logo1.png',
              path: 'assets/images/logo2.png',
              description: 'IDR 850.000',
              title: 'Declarative interfaces for any Apple Devices',
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(backgroundColor: Constants.backgroundColor, body: body());
  }
}
