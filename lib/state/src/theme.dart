import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const textLightMode = Color(0xff0c090d); // black text
const textLight_Blue = Color(0xff1d2d44); // blueish for light mode
const textDarkMode = Color(0xfff4f4fc); // white text
const textDark_Yellow = Color(0xffFFD366); // yellow text for dark mode

class STheme with ChangeNotifier {
  ThemeData serviceDarkTheme = ThemeData(
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
      background: Color(0xff191B24),
      onBackground: Color(0xff232633),      
      onError: Color(0xffc5032b),
      error: Color(0xffc5032b),
      surface: Color(0xff191B24),
      onSurface: Color(0xff232633),
      brightness: Brightness.dark,
    ),
    canvasColor: Colors.white,
    fontFamily: 'Montserrat',
    textSelectionColor: Colors.black38,
    textTheme: TextTheme( 
        headline: TextStyle(fontSize: 20.0, color: textDarkMode, fontWeight: FontWeight.w500),
        title: TextStyle(fontSize: 18.0, color: textDarkMode),
        body2: TextStyle(fontSize: 16.0, color: textDark_Yellow ),
        body1: TextStyle(fontSize: 14.0, color: textDarkMode),
        overline: TextStyle(fontSize: 10.0, color: textDarkMode), 
        caption: TextStyle(fontSize: 12.0, color: textDarkMode),
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
      background: Color(0xfff7f7ff),
      onBackground: Color(0xfff4f4fc),      
      onError: Color(0xffc5032b),
      error: Color(0xffc5032b),
      onSurface: Color(0xfff7f7ff),
      brightness: Brightness.light,
      surface: Color(0xffEEEEEE),
    ),
    canvasColor: Colors.white,
    fontFamily: 'Montserrat',
    textSelectionColor: Colors.black38,
    textTheme: TextTheme( 
        headline: TextStyle(fontSize: 20.0, color: textLightMode, fontWeight: FontWeight.w500),
        title: TextStyle(fontSize: 18.0, color: textLightMode),
        body2: TextStyle(fontSize: 16.0, color: textLight_Blue ),
        body1: TextStyle(fontSize: 14.0, color: textLightMode),
        overline: TextStyle(fontSize: 10.0, color: textLightMode),
        caption: TextStyle(fontSize: 12.0, color: textLightMode),
    ),
  );

  ThemeData _themeData;
  bool isDark = false;

  STheme() {
    _themeData = serviceLightTheme;
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
}
