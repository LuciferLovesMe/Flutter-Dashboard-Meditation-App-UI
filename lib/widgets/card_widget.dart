import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CardWidget extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback press;
  const CardWidget({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(offset: Offset(0, 17), blurRadius: 17, spreadRadius: -23)
        ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Column(
              children: <Widget>[
                Spacer(),
                SvgPicture.asset(svgSrc),
                Spacer(),
                Text(title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 19))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
