import 'package:flutter/material.dart';
import 'package:sinau/main/home/home.dart';
import 'package:sinau/main/main.dart';
import 'package:sinau/util/button.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
            text: "Sign in",
            textColor: Constants.buttonTextColor,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            textSize: SizeConfig.size12,
            buttonColor: Constants.signInButtonColor,
            buttonHeight: SizeConfig.size18 * 2,
            buttonTextMaxLine: 1,
            radius: SizeConfig.size10),
        SizedBox(height: SizeConfig.size20),
        ButtonWidget(
            text: "Sign in with Google",
            textColor: Constants.buttonTextColor,
            function: () {},
            textSize: SizeConfig.size12,
            buttonColor: Constants.signInGoogleButtonColor,
            buttonHeight: SizeConfig.size18 * 2,
            buttonTextMaxLine: 1,
            radius: SizeConfig.size10),
      ],
    );
  }
}
