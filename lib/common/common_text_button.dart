import 'package:chattabox_project/utils/color_res.dart';
import 'package:flutter/material.dart';

import 'common_text.dart';

Widget commonTextButton({
  required String buttonName,
  required VoidCallback onTap,
  required double fontSize,
}) {
  return InkWell(
    child: commonText(
      text: buttonName,
      fontColor: ColorRes.themeColor,
      textDecoration: TextDecoration.underline,
      fontSize: fontSize,
      decorationColor: ColorRes.themeColor,
    ),
    onTap: () {
      onTap();
    },
  );
}
