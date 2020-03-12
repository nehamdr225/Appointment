import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const textDark = Color(0xff171817); // black text
const textLight_Blue = Color(0xff1d2d44); // blueish for light mode
const textLight = Color(0xfff4f4fc); // white text
const textDark_Yellow = Color(0xffFFD366); // yellow text for dark mode

class STheme with ChangeNotifier {
  ThemeData serviceDarkTheme = ThemeData(
    iconTheme: IconThemeData(
      color: Color(0xfff5f5f5),
    ),
    colorScheme: ColorScheme(
      primary: Color(0xffFFBA08),
      primaryVariant:Color(0xffDD9E00),
      onPrimary: Color(0xff0c090d),
      secondary: Color(0xff6BD425),
      secondaryVariant: Color(0xff80ff2b),
      onSecondary: Color(0xff0c090d),
      background: Color(0xff191B24),
      onBackground: Color(0xff232633),      //Color(0xff404e60),
      onError: Color(0xffc5032b),
      error: Color(0xffc5032b),
      surface: Color(0xffffffff),
      onSurface: Color(0xff232633),
      brightness: Brightness.dark,
    ),
    canvasColor: Colors.white,
    fontFamily: 'Montserrat',
    textSelectionColor: Colors.black38,
    textTheme: TextTheme( 
        headline: TextStyle(fontSize: 24.0, color: textLight, fontWeight: FontWeight.w500),
        title: TextStyle(fontSize: 18.0, color: textLight),
        body2: TextStyle(fontSize: 16.0, color: textDark ),
        body1: TextStyle(fontSize: 14.0, color: textLight),
        overline: TextStyle(fontSize: 10.0, color: textLight), 
        caption: TextStyle(fontSize: 12.0, color: textLight),
    ),
  );
  ThemeData serviceLightTheme = ThemeData( 
    iconTheme: IconThemeData(
      color: Color(0xff1D2D44),
    ),
    colorScheme: ColorScheme(
      primary: Color(0xffFFBA08),
      primaryVariant:Color(0xffDD9E00),  
      onPrimary: Color(0xff0c090d),
      secondary: Color(0xff6BD425),
      secondaryVariant: Color(0xff80ff2b),
      onSecondary: Color(0xff0c090d),
      background: Color(0xfff5f5f5),
      onBackground: Color(0xffffffff),      
      onError: Color(0xffc5032b),
      error: Color(0xffc5032b),
      onSurface: Color(0xff191B24),
      brightness: Brightness.light,
      surface: Color(0xffEEEEEE),
    ),
    canvasColor: Colors.white,
    fontFamily: 'Montserrat',
    textSelectionColor: Colors.black38,
    unselectedWidgetColor: Colors.grey[500],
    textTheme: TextTheme( 
        headline: TextStyle(fontSize: 24.0, color: textDark, fontWeight: FontWeight.w500),
        title: TextStyle(fontSize: 18.0, color: textDark),
        body2: TextStyle(fontSize: 16.0, color: textLight ),
        body1: TextStyle(fontSize: 14.0, color: textDark),
        overline: TextStyle(fontSize: 10.0, color: textDark),
        caption: TextStyle(fontSize: 12.0, color: textDark),
    ),
  );

  ThemeData _themeData;
  bool isDark = false;

  STheme() {
    _themeData = serviceDarkTheme;
  }

  ThemeData getTheme() => _themeData;

  setTheme() {
    if (!isDark) {
      _themeData = serviceDarkTheme;
    } else {
      _themeData = serviceLightTheme;
    }

    isDark = !isDark;
    notifyListeners();
  }
  // void _darktheme(){
  //   setTheme() => serviceDarkTheme;
  // }
}

