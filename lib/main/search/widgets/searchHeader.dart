import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sinau/main/search/widgets/backAndLabel.dart';
import 'package:sinau/main/search/widgets/shoppingCart.dart';

import 'package:sinau/util/mainUtil.dart';

class SearchHeader extends StatefulWidget {
  @override
  _SearchHeaderState createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
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
              BackAndLabel(
                function: () {
                  Navigator.of(context).pop();
                },
              ),
              ShoppingCart(
                function: () {
                  log('Do Some Stuff');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
