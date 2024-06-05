import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    primarySwatch: primaryWhite,
    scaffoldBackgroundColor: primaryWhite,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: TextStyle(
      color: k3DColor,
      fontSize: size16,
    ),
    centerTitle: true,
    elevation: 0,
  );
}
