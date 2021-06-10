import 'package:flutter/material.dart';
import 'package:sinau/main/search/widgets/categoryButton.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class BrowserCategory extends StatefulWidget {
  @override
  _BrowserCategoryState createState() => _BrowserCategoryState();
}

class _BrowserCategoryState extends State<BrowserCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
              textAlign: TextAlign.center,
              maxLines: 2,
              textColor: Constants.blackTextColor,
              text: 'Browser Category',
              fontSize: SizeConfig.size12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1),

        SizedBox(height: SizeConfig.size12),
        Column(
          children: [
            Row(
              children: <Widget>[
                CategoryButton(
                  text: 'Technology',
                  function: () {},
                ),
                SizedBox(width: SizeConfig.size8),
                CategoryButton(
                  text: 'Business',
                  function: () {},
                ),
                SizedBox(width: SizeConfig.size8),
                CategoryButton(
                  text: 'Finance',
                  function: () {},
                ),
                SizedBox(width: SizeConfig.size8),
                CategoryButton(
                  text: 'Python',
                  function: () {},
                ),
              ],
            ),
            SizedBox(height: SizeConfig.size10),
            Row(
              children: <Widget>[
                CategoryButton(
                  text: 'Programming',
                  function: () {},
                ),
                SizedBox(width: SizeConfig.size8),
                CategoryButton(
                  text: 'Swift',
                  function: () {},
                ),
                SizedBox(width: SizeConfig.size8),
                CategoryButton(
                  text: 'React Native',
                  function: () {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
