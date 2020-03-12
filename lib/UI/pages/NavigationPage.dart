import 'package:appointment/UI/pages/ProfilePage/ProfilePage.dart';
import 'package:appointment/UI/pages/SubsPage/SubsPage.dart';
import 'package:appointment/UI/pages/UserHomePage.dart';
import 'package:flutter/material.dart';
import 'package:appointment/state/bloc.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 1;
  final _pageOptions = [SubsPage(), UserHomePage(), ProfilePage()];
  @override
  void initState() {
    super.initState();
    _bloc = HomeScreenBloc();
  }
  
  HomeScreenBloc _bloc;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      body: _pageOptions[index],
      bottomNavigationBar: StreamBuilder<int>(
        stream: _bloc.index,
        initialData: 1,
        builder: (context, snapshot) {
          final index = snapshot.data;
          return Stack(
            children: <Widget>[
              IndexedStack(
                index: index,
                children: <Widget>[
                  SubsPage(),
                  UserHomePage(),
                  ProfilePage(),
                ],
              ),
              StreamBuilder<bool>(
                  stream: _bloc.searching,
                  initialData: false,
                  builder: (context, snapshot) {
                    final hideBottomBar = snapshot.data;
                    if (hideBottomBar) {
                      return Container(height: 0);
                    }
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 60,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        alignment: Alignment.center,
                        child: Stack(children: <Widget>[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.onBackground,//Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black
                                            .withOpacity(0.2),
                                        spreadRadius: 1.5,
                                        blurRadius: 10)
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left:25.0, right: 25.0),
                                      child: IconButton(
                                        onPressed: () {
                                          _bloc.onPageChange(page: 0);
                                        },
                                        icon: index == 0
                                            ? Icon(Icons.subscriptions,
                                                color: color.primaryVariant)
                                            : Icon(Icons.subscriptions,
                                                color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:25.0, right: 25.0),
                                      child: IconButton(
                                        onPressed: () {
                                          _bloc.onPageChange(page: 1);
                                        },
                                        icon: index == 1
                                            ? Icon(Icons.home,
                                                color: color.primaryVariant)
                                            : Icon(Icons.home,
                                                color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:25.0, right: 25.0),
                                      child: IconButton(
                                        onPressed: () {
                                          _bloc.onPageChange(page: 2);
                                        },
                                        icon: index == 2
                                            ? Icon(Icons.person,
                                                color: color.primaryVariant)
                                            : Icon(Icons.person_outline,
                                                color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    );
                  })
            ],
          );
        },
      ),
    );
  }
}
