import 'package:flutter/material.dart';

import '../constant.dart';

class CustomeIcon extends StatelessWidget {
  const CustomeIcon({super.key, required this.icons, required this.iconText});

  final IconData icons;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icons,
            color: Colors.white,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            iconText,
            style: klaabelTextstyle,
          ),
        ]);
  }
}
