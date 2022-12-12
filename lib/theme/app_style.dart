import 'package:flutter/material.dart';
import 'package:anton_s_application1/core/app_export.dart';

class AppStyle {
  static TextStyle txtOverpassRegular16 = TextStyle(
    color: ColorConstant.bluegray700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Overpass',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtPodkovaExtraBold30 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      30,
    ),
    fontFamily: 'Podkova',
    fontWeight: FontWeight.w800,
  );
}
