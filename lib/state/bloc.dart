import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/subjects.dart';

class HomeScreenBloc{
  final _bottomBarController = BehaviorSubject<bool>();
  final _pageController = BehaviorSubject<int>();

  Stream<bool> get searching => _bottomBarController.stream;
  Stream<int> get index => _pageController.stream;

  void onSearchOpen(){
    _bottomBarController.sink.add(true);
  }
  void onSearchClose(){
    _bottomBarController.sink.add(false);
  }
  void onPageChange({@required int page}) {
    _pageController.sink.add(page);
  }
  void dispose(){
    _bottomBarController.close();
    _pageController.close();
  }
}
