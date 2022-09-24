import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search",
            border: InputBorder.none),
      ),
    );
  }
}