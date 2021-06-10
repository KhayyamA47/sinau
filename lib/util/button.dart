import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function function;
  final Color buttonColor, textColor;
  final double radius, buttonHeight, textSize;
  final int buttonTextMaxLine;

  const ButtonWidget(
      {Key key,
      this.text,
      this.function,
      this.buttonColor,
      this.textColor,
      this.radius,
      this.buttonHeight,
      this.textSize,
      this.buttonTextMaxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)),
        ),
        onPressed: () {
          function();
        },
        child: Text(text,
            maxLines: buttonTextMaxLine,
            style: TextStyle(
                color: textColor,
                fontSize: textSize,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.2),
            textScaleFactor: 1.0,
            textAlign: TextAlign.center),
      ),
    );
  }
}
