import 'package:flutter/material.dart';

class RounddeIconButton extends StatelessWidget {
  const RounddeIconButton({
    Key? key,
    required this.icons,
    this.onPress,
  }) : super(key: key);
  final IconData icons;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icons),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
