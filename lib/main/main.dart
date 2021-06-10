import 'package:flutter/material.dart';
import 'package:sinau/main/home/home.dart';
import 'package:sinau/main/search/search.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  int selectedTabIndex = 0;

  List _pages = [HomePage(), SearchPage()];

  changeIndex(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.ovalViewColor,
      body: Center(child: _pages[selectedTabIndex]),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(SizeConfig.size25),
                topLeft: Radius.circular(SizeConfig.size25)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 0),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(SizeConfig.size25),
              topRight: Radius.circular(SizeConfig.size25),
            ),
            child: BottomNavigationBar(
              currentIndex: selectedTabIndex,
              onTap: changeIndex,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: SizeConfig.size8,
              selectedItemColor: Constants.selectedAppBarItem,
              unselectedItemColor: Constants.unselectedAppBarItem,
              showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Explore'),
              ],
            ),
          )),
    );
  }


}
