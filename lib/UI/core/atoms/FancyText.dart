import 'package:appointment/UI/core/theme.dart';
import 'package:flutter/material.dart';

class FancyText extends StatelessWidget {
  final String text;
  final double size;
  final fontWeight;
  final Function onTap;
  final TextDecoration decoration;
  final Color color;
  final bool defaultStyle;
  final opacity;
  final fontfamily;
  final TextAlign textAlign;

  FancyText(
      {this.text,
      this.color,
      this.fontWeight,
      this.fontfamily: 'Montserrat',
      this.size,
      this.onTap,
      this.opacity: 0.6,
      this.defaultStyle: false,
      this.decoration,
      this.textAlign: TextAlign.center});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          textAlign: textAlign,
          style: defaultStyle == true
              ? Theme.of(context).textTheme.body1.copyWith(
                  fontSize: size,
                  fontWeight: fontWeight,
                  color: Theme.of(context)
                      .textTheme 
                      .body1
                      .color
                      .withOpacity(opacity))
              : TextStyle(
                  fontWeight: fontWeight,
                  fontFamily: fontfamily,
                  fontSize: size,
                  color: color,
                  decoration: decoration,
                  decorationColor: textDark),
        ),
      ),
    );
  }
}
