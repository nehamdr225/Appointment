import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Container(
      color: color.onSurface,
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: (){},
            child: Container(),
          )
        ],
      ),
      
    );
  }
}