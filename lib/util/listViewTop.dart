import 'package:flutter/cupertino.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class SearchListViewTop extends StatelessWidget {
  final String title,description;

  const SearchListViewTop({Key key, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            textAlign: TextAlign.left,
            maxLines: 2,
            textColor: Constants.blackTextColor,
            text: title,
            fontSize: SizeConfig.size10,
            fontWeight: FontWeight.w400,
            letterSpacing: 1),
        SizedBox(height: SizeConfig.size8),
        TextWidget(
            textAlign: TextAlign.left,
            maxLines: 2,
            textColor: Constants.blackTextColor,
            text: description,
            fontSize: SizeConfig.size10,
            fontWeight: FontWeight.w600,
            letterSpacing: 1),
      ],
    );
  }
}
