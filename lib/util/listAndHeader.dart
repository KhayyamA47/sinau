import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/listViewItem.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/text.dart';

class ListAndHeader extends StatelessWidget {
  final String title;

  const ListAndHeader({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            textAlign: TextAlign.center,
            maxLines: 2,
            textColor: Constants.blackTextColor,
            text: title,
            fontSize: SizeConfig.size12,
            fontWeight: FontWeight.w600,
            letterSpacing: 1),
        SizedBox(height: SizeConfig.size12),
        MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 11,
                  itemBuilder: (BuildContext c, int index) {
                    return ListViewItem(
                        title: 'Declarative interfaces for any Apple Devices',
                        description: 'IDR 850.000',
                        point: 4.5,
                        level: 'All Level',
                        name: 'Sarah William');
                  }),
            ))
      ],
    ));
  }
}
