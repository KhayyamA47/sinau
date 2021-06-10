import 'package:flutter/material.dart';
import 'package:sinau/main/search/widgets/searchHeader.dart';
import 'package:sinau/main/search/widgets/searchPanelHeader.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/listAndHeader.dart';
import 'package:sinau/util/mainUtil.dart';


class SearchPage extends StatefulWidget {
  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  Widget ovalView() {
    return Container(
      decoration: BoxDecoration(
          color: Constants.ovalViewColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(SizeConfig.size20),
              topRight: Radius.circular(SizeConfig.size20))),
      padding: EdgeInsets.only(
          left: SizeConfig.size16,
          right: SizeConfig.size16,
          top: SizeConfig.size16),
      width: SizeConfig.screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchPanelHeader(controller: searchController),
          SizedBox(height: SizeConfig.size12),
          ListAndHeader(title: 'Recommended Courses')
        ],
      ),
    );
  }

  Widget body() {
    return SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Stack(
          children: [
            Column(
              children: [
                SearchHeader(),
                Expanded(child: ovalView()),
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(backgroundColor: Constants.backgroundColor, body: body());
  }
}
