import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hint;
  final Color hintColor, textColor, fillColor;
  final FontWeight fontWeight;
  final double fontSize, letterSpacing;
  final TextInputType textInputType;
  @required
  final bool obscureText;
  @required
  final isEnabled;
  final Widget prefix,suffix;

  const TextFieldWidget(
      {Key key,
      this.hint,
      this.hintColor,
      this.fontWeight,
      this.fontSize,
      this.letterSpacing,
      this.textColor,
      this.fillColor,
      this.textInputType,
      this.obscureText,
      this.textEditingController,
      this.isEnabled, this.prefix, this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
        ),

        ///For disabling  size changing according user device font size,
        child: SizedBox(
          width: SizeConfig.screenWidth,
          child: TextFormField(

            readOnly: isEnabled ? false : true,
            enabled: isEnabled,
            controller: textEditingController,
            obscureText: obscureText,
            keyboardType: textInputType,
            style: TextStyle(
                color: textColor,
                letterSpacing: letterSpacing,
                fontSize: fontSize,
                fontWeight: fontWeight),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              prefixIcon: prefix,
                suffixIcon: suffix,
                hintStyle: TextStyle(
                    color: hintColor,
                    letterSpacing: letterSpacing,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
                hintText: hint,
                enabledBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(SizeConfig.size10),
                    ),
                    borderSide: BorderSide(color: Constants.textFiledBorderColor, width: 2)),
                disabledBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(SizeConfig.size10),
                    ),
                    borderSide: BorderSide(color: Constants.textFiledBorderColor, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.all(
                      Radius.circular(SizeConfig.size10),
                    ),
                    borderSide: BorderSide(color: Constants.textFiledBorderColor, width: 2)),
                fillColor: fillColor,
                filled: true),
          ),
        ));
  }
}
