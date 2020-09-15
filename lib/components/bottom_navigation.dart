import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../constants.dart';
import '../size_config.dart';

class AppNavigation extends StatefulWidget {
  AppNavigation({this.screens});

  final List<Widget> screens;
  @override
  State<StatefulWidget> createState() {
    return _AppNavigationState();
  }
}

class _AppNavigationState extends State<AppNavigation> {
  int _currentIndex = 0;
  Widget currentScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          IndexedStack(
            index: _currentIndex,
            children: widget.screens,
          ),
          CurvedNavigationBar(
            items: <Widget>[
              Icon(
                Icons.movie_filter,
                size: 20,
                color: kPrimaryColor,
              ),
              Icon(
                Icons.live_tv,
                size: 20,
                color: kPrimaryColor,
              ),
              Icon(
                Icons.search,
                size: 20,
                color: kPrimaryColor,
              ),
              Icon(
                Icons.favorite_border,
                size: 20,
                color: kPrimaryColor,
              ),
            ],
            color: kSecondaryColor,
            buttonBackgroundColor: kSecondaryColor,
            backgroundColor: Colors.transparent,
            height: getProportionateScreenHeight(55.0),
            animationCurve: Curves.bounceInOut,
            animationDuration: kAnimationDuration,
            onTap: _onTabTapped,
            index: _currentIndex,
          ),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
