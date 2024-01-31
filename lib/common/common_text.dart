import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utils/color_res.dart';

Widget commonText({
  required String text,
  FontWeight? fontWeight,
  double? fontSize,
  Color fontColor = ColorRes.blackColor,
  TextDecoration? textDecoration,
  Color? decorationColor,
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: fontColor,
      decoration: textDecoration,
      decorationColor: decorationColor,
    ),
  ).tr();
}
