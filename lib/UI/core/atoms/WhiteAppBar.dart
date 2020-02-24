import 'package:appointment/UI/core/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteAppBar extends StatelessWidget {
  final elevation;
  final color;
  final bool logo;
  final bool settings;
  final String title;
  WhiteAppBar(
      {this.elevation: 0.0,
      this.logo,
      this.settings,
      this.title: "",
      this.color: Colors.white});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      elevation: 0.0,
      primary: false,
      iconTheme: theme.iconTheme.copyWith(color: color),
      backgroundColor: Theme.of(context).colorScheme.background,
      centerTitle: true,
      title: Text(title, style: theme.textTheme.body2),
      leading: logo == true
          ? Padding(
              padding: EdgeInsets.only(top: 16.0, left: 8.0),
              child: Text(
                'LOGO',
                style: theme.textTheme.body2.copyWith(
                    fontWeight: FontWeight.w900, color: textDark_Yellow),
              ))
          : IconButton(
              icon: Icon(CupertinoIcons.back),
              onPressed: () {},
            ),
      actions: <Widget>[
        settings == true
            ? IconButton(
                icon: Icon(Icons.settings, color: textDark_Yellow,),
                onPressed: () {},
              )
            : Text(''),
      ],
    );
  }
}
