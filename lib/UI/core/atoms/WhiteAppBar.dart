import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteAppBar extends StatelessWidget {
  final elevation;
  final color;
  final bool logo;
  final bool settings;
  final String title;
  final tabbar;
  final controller;
  final List<Widget> tabs;
  WhiteAppBar(
      {this.elevation: 0.0,
      this.logo,
      this.settings,
      this.tabbar : false,
      this.tabs,    
      this.controller,
      this.title: "",
      this.color: Colors.white});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      elevation: 0.0,
      primary: true,
      iconTheme: theme.iconTheme.copyWith(color: color),
      backgroundColor: Theme.of(context).colorScheme.background,
      centerTitle: true,
      bottom: tabbar == true
      ? TabBar(
        indicatorColor: theme.colorScheme.secondary,
        unselectedLabelColor: theme.unselectedWidgetColor,
        labelColor: theme.colorScheme.primaryVariant,
        tabs: tabs,
        controller: controller,
        
      )
      : null ,
      title: Text(title, style: theme.textTheme.body2),
      leading: logo == true
          ? Padding(
              padding: EdgeInsets.only(top: 16.0, left: 8.0),
              child: Text(
                'LOGO',
                style: theme.textTheme.body2.copyWith(
                    fontWeight: FontWeight.w900, color:theme.colorScheme.primaryVariant),
              ))
          : IconButton(
              icon: Icon(CupertinoIcons.back, color: Theme.of(context).colorScheme.primary,),
              onPressed: () {},
            ),
      actions: <Widget>[
        settings == true
            ? IconButton(
                icon: Icon(Icons.settings, color: Theme.of(context).colorScheme.primary,),
                onPressed: () {},
              )
            : Text(''),
      ],
    );
  }
}
