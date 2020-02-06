import 'package:flutter/material.dart';

class FIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function onPressed;
  final Alignment alignment;
  FIcons({this.icon, this.color, this.onPressed, this.alignment});
  Widget build(BuildContext context) {
    return IconButton(
      alignment: alignment,
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: onPressed,
    );
  }
}
