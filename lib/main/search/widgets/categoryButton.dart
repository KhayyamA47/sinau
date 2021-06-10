import 'package:flutter/material.dart';
import 'package:sinau/util/button.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';

class CategoryButton extends StatefulWidget {
  final String text;
  final Function function;

  const CategoryButton({Key key, this.text, this.function}) : super(key: key);
  @override
  _CategoryButtonState createState() => _CategoryButtonState(text,function);
}

class _CategoryButtonState extends State<CategoryButton> {
  String text;
  Function function;
  _CategoryButtonState(this.text,this.function);
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ButtonWidget(
            radius: SizeConfig.size25,
            buttonColor: Constants.categoryButtonColor,
            textColor: Constants.categoryButtonTextColor,
            text: text,
            function: function,
            textSize: SizeConfig.size10 * 0.7,
            buttonTextMaxLine: 1,
            buttonHeight: SizeConfig.size25));
  }
}
