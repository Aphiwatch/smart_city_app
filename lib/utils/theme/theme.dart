import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/text_theme.dart';

class SMCAppTheme {
  SMCAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Kanit',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SMCTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Kanit',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SMCTextTheme.darkTextTheme,
  );
}