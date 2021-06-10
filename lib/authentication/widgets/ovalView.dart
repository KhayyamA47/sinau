import 'package:flutter/material.dart';
import 'package:sinau/authentication/widgets/buttons.dart';
import 'package:sinau/authentication/widgets/inputs.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class OvalView extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const OvalView({Key key, this.emailController, this.passwordController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Constants.ovalViewColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(SizeConfig.size20),
              topRight: Radius.circular(SizeConfig.size20))),
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.size16),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Inputs(emailController: emailController,passwordController: passwordController),
          SizedBox(height: SizeConfig.size20),
          Buttons(),
          SizedBox(height: SizeConfig.size20 * 2),
          TextWidget(
              textAlign: TextAlign.center,
              maxLines: 2,
              textColor: Constants.copyRightTextColor,
              text: 'Feel free tro use this UI Ki \n © Harum Shidiqi',
              fontSize: SizeConfig.size10,
              fontWeight: FontWeight.w400,
              letterSpacing: 1),
        ],
      ),
    );
  }
}
