import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color,
) {
  return GoogleFonts.poppins().copyWith(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getWhiteTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    fontWeight,
    ColorManager.whiteColor,
  );
}

TextStyle getBlack60TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    fontWeight,
    ColorManager.black60Color,
  );
}

TextStyle getBlack30TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    fontWeight,
    ColorManager.black30Color,
  );
}
