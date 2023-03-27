import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/color_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
      scaffoldBackgroundColor: ColorManager.primaryColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: ColorManager.primaryColor,
      ));
}
