import 'package:flutter/material.dart';
import 'package:eventhub/core/constants/app_fonts.dart';
class TextStyles {
  static TextStyle _style({
    required double fontSize,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: AppFonts.poppins,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // SIZE 10
  static TextStyle styleSize10Regular({Color? color}) =>
      _style(fontSize: 10, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize10Medium({Color? color}) =>
      _style(fontSize: 10, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize10SemiBold({Color? color}) =>
      _style(fontSize: 10, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize10Bold({Color? color}) =>
      _style(fontSize: 10, fontWeight: FontWeight.w700, color: color);

  // SIZE 12
  static TextStyle styleSize12Regular({Color? color}) =>
      _style(fontSize: 12, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize12Medium({Color? color}) =>
      _style(fontSize: 12, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize12SemiBold({Color? color}) =>
      _style(fontSize: 12, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize12Bold({Color? color}) =>
      _style(fontSize: 12, fontWeight: FontWeight.w700, color: color);

  // SIZE 14
  static TextStyle styleSize14Regular({Color? color}) =>
      _style(fontSize: 14, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize14Medium({Color? color}) =>
      _style(fontSize: 14, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize14SemiBold({Color? color}) =>
      _style(fontSize: 14, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize14Bold({Color? color}) =>
      _style(fontSize: 14, fontWeight: FontWeight.w700, color: color);

  // SIZE 16
  static TextStyle styleSize16Regular({Color? color}) =>
      _style(fontSize: 16, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize16Medium({Color? color}) =>
      _style(fontSize: 16, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize16SemiBold({Color? color}) =>
      _style(fontSize: 16, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize16Bold({Color? color}) =>
      _style(fontSize: 16, fontWeight: FontWeight.w700, color: color);

  // SIZE 18
  static TextStyle styleSize18Regular({Color? color}) =>
      _style(fontSize: 18, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize18Medium({Color? color}) =>
      _style(fontSize: 18, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize18SemiBold({Color? color}) =>
      _style(fontSize: 18, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize18Bold({Color? color}) =>
      _style(fontSize: 18, fontWeight: FontWeight.w700, color: color);

  // SIZE 20
  static TextStyle styleSize20Regular({Color? color}) =>
      _style(fontSize: 20, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize20Medium({Color? color}) =>
      _style(fontSize: 20, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize20SemiBold({Color? color}) =>
      _style(fontSize: 20, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize20Bold({Color? color}) =>
      _style(fontSize: 20, fontWeight: FontWeight.w700, color: color);

  // SIZE 22
  static TextStyle styleSize22Regular({Color? color}) =>
      _style(fontSize: 22, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize22Medium({Color? color}) =>
      _style(fontSize: 22, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize22SemiBold({Color? color}) =>
      _style(fontSize: 22, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize22Bold({Color? color}) =>
      _style(fontSize: 22, fontWeight: FontWeight.w700, color: color);

  // SIZE 24
  static TextStyle styleSize24Regular({Color? color}) =>
      _style(fontSize: 24, fontWeight: FontWeight.w400, color: color);

  static TextStyle styleSize24Medium({Color? color}) =>
      _style(fontSize: 24, fontWeight: FontWeight.w500, color: color);

  static TextStyle styleSize24SemiBold({Color? color}) =>
      _style(fontSize: 24, fontWeight: FontWeight.w600, color: color);

  static TextStyle styleSize24Bold({Color? color}) =>
      _style(fontSize: 24, fontWeight: FontWeight.w700, color: color);
}
