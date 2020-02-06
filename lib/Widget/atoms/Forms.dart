import 'package:appointment/state/src/theme.dart';
import 'package:flutter/material.dart';

class FForms extends StatelessWidget {
  final bool obscure;
  final String text;
  final bool labeltext;
  final icon;
  final prefix;
  final TextInputType type;
  final Function onChanged;
  final height;
  final width;
  final underline;
  final borderColor;
  final style = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.grey[400]);
  FForms({
    this.text,
    this.height,
    this.labeltext: true,
    this.width,
    this.type,
    this.obscure: false,
    this.onChanged,
    this.icon,
    this.prefix,
    this.underline: false,
    this.borderColor : Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: borderColor,
      child: TextField(
        keyboardType: type,
        autofocus: false,
        obscureText: obscure,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: textLightMode
          )),
          prefix: prefix,
          prefixIcon: icon,
          hintText: labeltext == true ? text : '',
          enabled: true,
          labelStyle: style,
          labelText: text,
          enabledBorder: underline == false
              ? OutlineInputBorder(
                  borderSide:
                      BorderSide(color: textDark_Yellow))
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primaryVariant,
                )),
          focusedBorder: underline == false
              ? OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary))
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primaryVariant,
                )),
        ),
      ),
    );
  }
}