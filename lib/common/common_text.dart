import 'package:chattabox_project/utils/color_res.dart';
import 'package:flutter/material.dart';

Widget commonText({
  required String text,
  FontWeight? fontWeight,
  double? fontSize,
  Color fontColor = ColorRes.blackColor,
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: fontColor,
    ),
  );
}
