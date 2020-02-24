//import 'package:appointment/state/src/theme.dart';
import 'package:appointment/state/state.dart';
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
      color: Colors.grey
  );
  final focusNode;
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
    this.borderColor: Colors.white,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Container(
      height: height,
      width: width,
      //color: borderColor,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: color.background),
      child: TextField(
        focusNode: focusNode,
        cursorColor: textDark_Yellow,
        keyboardType: type,
        autofocus: false,
        obscureText: obscure,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: color.primary,
          )),
          prefix: prefix,
          prefixIcon: icon, 
          hintText: labeltext == true ? text : '',
          enabled: true,
          labelStyle: style,
          labelText: text,
          enabledBorder: underline == false
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent))
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primaryVariant,
                )),
          focusedBorder: underline == false
              ? OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.transparent))
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primaryVariant,
                )),
        ),
      ),
    );
  }
}
