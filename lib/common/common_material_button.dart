import 'package:flutter/material.dart';

import '../utils/color_res.dart';
import 'common_text.dart';

Widget commonMaterialButton({
  required String buttonName,
  required VoidCallback onPressed,
  double? buttonHeight,
  double? buttonFontSize,
}) {
  return MaterialButton(
    height: buttonHeight,
    minWidth: double.infinity,
    color: ColorRes.themeColor,
    onPressed: () {
      onPressed();
    },
    child: commonText(
      text: buttonName,
      fontColor: ColorRes.whiteColor,
      fontSize: buttonFontSize,
    ),
  );
}
