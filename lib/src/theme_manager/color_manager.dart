import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex('#03091C');
  static Color secondaryColor = HexColor.fromHex('#262F4B');
  static Color whiteColor = HexColor.fromHex('#FFFFFF');
  static Color pinkColor = HexColor.fromHex('#EA887B');
  static Color purpleColor = HexColor.fromHex('#CE92E3');
  static Color black60Color = HexColor.fromHex('#737D9C');
  static Color black30Color = HexColor.fromHex('#8D93A8');
  static Color blackColor = HexColor.fromHex('#5B6279');
  static Color greyColor = HexColor.fromHex('#D9D9D9');
  static Color grey60Color = HexColor.fromHex('#A9A9AC');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
