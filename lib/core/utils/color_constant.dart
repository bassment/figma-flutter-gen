import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9003f = fromHex('#3f000000');

  static Color gray2003f = fromHex('#3fe8e8e8');

  static Color teal300 = fromHex('#4ca6a8');

  static Color greenA700 = fromHex('#00d258');

  static Color greenA701 = fromHex('#00d259');

  static Color yellowA400 = fromHex('#f7ee00');

  static Color teal700 = fromHex('#007274');

  static Color deepOrangeA700 = fromHex('#e72f00');

  static Color redA701 = fromHex('#f00000');

  static Color redA700 = fromHex('#ff0000');

  static Color tealA700 = fromHex('#04d79a');

  static Color gray600 = fromHex('#7b7b7b');

  static Color gray400 = fromHex('#bcbcbc');

  static Color gray800 = fromHex('#4b4b4b');

  static Color redA200 = fromHex('#ff4b55');

  static Color gray7007e = fromHex('#7e616471');

  static Color gray200 = fromHex('#eeeeee');

  static Color gray201 = fromHex('#f2eaea');

  static Color lime50 = fromHex('#fdf9ea');

  static Color whiteA700 = fromHex('#ffffff');

  static Color red900 = fromHex('#bb0831');

  static Color red51 = fromHex('#fdeaeb');

  static Color gray50 = fromHex('#f8f8f8');

  static Color red50 = fromHex('#fdeeea');

  static Color black900 = fromHex('#000000');

  static Color purpleA700 = fromHex('#8b00f7');

  static Color pink600 = fromHex('#d81441');

  static Color purple50 = fromHex('#fdeafc');

  static Color gray700 = fromHex('#616471');

  static Color gray103 = fromHex('#f5f5f5');

  static Color gray500 = fromHex('#a8a8aa');

  static Color bluegray60014 = fromHex('#14545e7a');

  static Color gray901 = fromHex('#121111');

  static Color indigo50 = fromHex('#ebeafd');

  static Color amber600 = fromHex('#ffb905');

  static Color gray900 = fromHex('#071232');

  static Color bluegray100 = fromHex('#d0d1d6');

  static Color teal50 = fromHex('#e4f3f4');

  static Color gray101 = fromHex('#f4f4f4');

  static Color gray102 = fromHex('#f3f3f3');

  static Color gray300 = fromHex('#e3e3e1');

  static Color gray100 = fromHex('#f3f4ef');

  static Color tealA400 = fromHex('#00f7bd');

  static Color bluegray900 = fromHex('#363636');

  static Color bluegray701 = fromHex('#4a505f');

  static Color bluegray700 = fromHex('#4b5060');

  static Color gray900B2 = fromHex('#b21b1b1b');

  static Color bluegray102 = fromHex('#d0d2d7');

  static Color bluegray101 = fromHex('#caccd2');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
