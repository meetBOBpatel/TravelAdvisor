import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_advisor/HomePage.dart';
import 'package:travel_advisor/MapPage.dart';
import 'package:travel_advisor/SavePage.dart';
import 'package:travel_advisor/ScenicPages.dart';
import 'package:travel_advisor/SettingsPage.dart';

class NavigatorTab extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  const NavigatorTab({Key key, this.navigatorKey, this.tabItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (tabItem == "page1") {
      child = HomePage();
    } else if (tabItem == "page2") {
      child = MapPage();
    } else if (tabItem == "page3") {
      child = SavePage();
    } else if (tabItem == "page4") {
      child = ScenicPages();
    } else if (tabItem == "page5") {
      child = SettingsPage();
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (RouteSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
