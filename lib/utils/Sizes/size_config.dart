import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData?.size.width;
    screenHeight = mediaQueryData?.size.height;
    orientation = mediaQueryData?.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;
    debugPrint('this is the default size $defaultSize');
    debugPrint('this is the screenHeight  $screenHeight');
    debugPrint('this is the screenWidth $screenWidth');
  }
}
