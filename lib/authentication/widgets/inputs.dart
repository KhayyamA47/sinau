import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/textField.dart';

class Inputs extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const Inputs({Key key, this.emailController, this.passwordController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          fillColor: Constants.textFieldColor,
          hint: "Email",
          prefix:
              Icon(Icons.mail_outline, color: Constants.textFiledPrefixColor),
          isEnabled: true,
          obscureText: false,
          hintColor: Constants.hintColor,
          textInputType: TextInputType.emailAddress,
          textEditingController: emailController,
        ),
        SizedBox(height: SizeConfig.size20),
        TextFieldWidget(
          fillColor: Constants.textFieldColor,
          hint: "Password",
          hintColor: Constants.hintColor,
          prefix:
              Icon(Icons.lock_outlined, color: Constants.textFiledPrefixColor),
          isEnabled: true,
          obscureText: false,
          textInputType: TextInputType.text,
          textEditingController: passwordController,
        ),
      ],
    );
  }
}
