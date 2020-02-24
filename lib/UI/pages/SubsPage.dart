import 'package:appointment/UI/core/atoms/AppBarW.dart';
import 'package:flutter/material.dart';

class SubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarW(
          logo: true,
          settings: false,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 20.0,
              color: color.primaryVariant,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0)),
                    color: color.onSurface),
              )),
        ],
      ),
      
    );
  }
}