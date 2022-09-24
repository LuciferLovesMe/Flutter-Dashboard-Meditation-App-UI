import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavbarItem extends StatelessWidget {
  final String title;
  final String svgSrc;
  final VoidCallback press;
  final bool isActive;

  const BottomNavbarItem(
      {Key? key,
      required this.svgSrc,
      required this.title,
      required this.press,
      this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgSrc),
          Text(
            title,
            style: TextStyle(color: (isActive) ? kActiveIconcolor : kTextColor),
          )
        ],
      ),
    );
  }
}

