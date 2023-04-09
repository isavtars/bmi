import 'package:flutter/material.dart';

class ReusableWidgets extends StatelessWidget {
  const ReusableWidgets({
    Key? key,
    required this.color,
    required this.height,
    this.cardChild,
    this.onPress,
    required this.width,
  }) : super(key: key);
  final Color color;
  final double width, height;
  final Widget? cardChild;

  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.all(10.0),
        // padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
    );
  }
}
