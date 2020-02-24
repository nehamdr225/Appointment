import 'package:appointment/UI/Widget/molecules/SearchBar.dart';
// import 'package:appointment/core/atoms/FForms.dart';
import 'package:appointment/UI/Widget/molecules/GridList.dart';
import 'package:appointment/UI/core/atoms/AppBarW.dart';
import 'package:appointment/UI/core/const.dart';
import 'package:appointment/UI/core/theme.dart';
import 'package:appointment/state/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  HomeScreenBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = HomeScreenBloc();
  }

  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarW(
          logo: true,
          settings: true,
          color: textLight,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: size.height * 0.28,
            width: size.width,
            color: color.primaryVariant,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Welcome Neha!",
                    style: textStyle.body2
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 22.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top:5.0),
                  child: Text(
                    'What are you looking for today?',
                    style: textStyle.body2
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SearchBar(bloc: _bloc),
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
                    color: color.background),
              )),
          Container(
            height: size.height * 0.87,
            width: size.width,
            color: color.background,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/compass.png",
                        color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                        height: 35.0,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'Explore',
                        style: textStyle.body1.copyWith(
                            fontSize: 19.0,
                            fontWeight: FontWeight.w600,
                            color: textDark.withOpacity(0.7)),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(
                      left: 3.0,
                      top: 10.0,
                      right: 3.0,
                    ),
                    height: size.height * 0.86,
                    width: size.width,
                    child: GridList(
                      listViews: NearYou,
                      crossAxisCount: 2,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
