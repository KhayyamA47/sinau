import 'package:flutter/material.dart';
import 'package:sinau/main/search/widgets/browserCategory.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';
import 'package:sinau/util/textField.dart';

class SearchPanelHeader extends StatefulWidget {
  final TextEditingController controller;

  const SearchPanelHeader({Key key, this.controller}) : super(key: key);
  @override
  _SearchPanelHeaderState createState() => _SearchPanelHeaderState(controller);
}

class _SearchPanelHeaderState extends State<SearchPanelHeader> {
  TextEditingController controller;
  _SearchPanelHeaderState(this.controller);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldWidget(
          fillColor: Constants.textFieldColor,
          hint: "Form placeholder",
          suffix: Icon(Icons.search, color: Constants.textFiledPrefixColor),
          isEnabled: true,
          obscureText: false,
          hintColor: Constants.hintColor,
          textInputType: TextInputType.emailAddress,
          textEditingController: controller,
        ),
        SizedBox(height: SizeConfig.size16),
        BrowserCategory()
      ],
    );
  }
}
