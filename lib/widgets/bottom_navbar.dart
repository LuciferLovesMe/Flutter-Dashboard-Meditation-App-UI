import 'package:flutter/material.dart';

import 'navbar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavbarItem(
            title: "Today",
            svgSrc: "assets/icons/calendar.svg",
            press: () {},
            isActive: false,
          ),
          BottomNavbarItem(
            title: "All Excercises",
            svgSrc: "assets/icons/gym.svg",
            press: () {},
            isActive: true,
          ),
          BottomNavbarItem(
            title: "Settings",
            svgSrc: "assets/icons/Settings.svg",
            press: () {},
            isActive: false,
          )
        ],
      ),
    );
  }
}