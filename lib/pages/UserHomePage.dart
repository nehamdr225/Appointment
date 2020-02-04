import 'package:appointment/Widget/molecules/FForms.dart';
import 'package:appointment/state/state.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: size.height * 0.35,
            width: size.width,
            color: color.primaryVariant,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'What are you looking for today, Neha?',
                  style: textStyle.headline.copyWith(
                    color: textDarkMode,
                    fontSize: 24.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ),
                FForms(
                  width: size.width * 0.70,
                  height: size.height * 0.06,
                  icon: Icon(Icons.search, color: Colors.grey[500],),
                  text: "Search",
                  labeltext: false,
                )
              ],
            ),
          ),
          Container(
            color: color.primaryVariant,
            height: 10.0,
          ),
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
          Container(
            height: size.height * 0.86,
            width: size.width,
            color: color.onSurface,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Near You',
                    style: textStyle.headline.copyWith(
                      color: textLight_Blue,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
