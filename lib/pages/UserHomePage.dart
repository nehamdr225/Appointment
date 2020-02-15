import 'package:appointment/Widget/molecules/SearchBar.dart';
// import 'package:appointment/core/atoms/FForms.dart';
import 'package:appointment/Widget/molecules/GridList.dart';
import 'package:appointment/core/const.dart';
import 'package:appointment/state/bloc.dart';

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
                  style:
                      textStyle.headline.copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ),
                StreamBuilder<int>(
                  stream: _bloc.index,
                  initialData: 0,
                  builder: (context, snapshot) {
                    final index = snapshot.data;
                    return Stack(
                      children: <Widget>[
                        IndexedStack(
                          index: index,
                          children: <Widget>[
                            SearchBar(bloc: _bloc),
                          ],
                        )
                      ],
                    );
                  },
                ),
                // StreamBuilder<bool>(
                //   stream: _bloc.searching,
                //   initialData: false,
                //   builder: (context, snapshot){
                //     final hideBottomBar = snapshot.data;
                //     if(hideBottomBar){
                //       return Container(height: 0,);
                //     }
                //     return Align(
                //       alignment: Alignment.bottomCenter,
                //       child: Container(
                //         height: 60,
                //         margin: EdgeInsets.symmetric(),

                //       ),
                //     );
                //   },
                // ),
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
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Near You',
                    style: textStyle.headline.copyWith(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      top: 10.0,
                      right: 12.0,
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
