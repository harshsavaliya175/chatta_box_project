import 'package:flutter/material.dart';

import '../utils/color_res.dart';

Widget commonMaterialButton({
  // required String buttonName,
  required VoidCallback onPressed,
  double? buttonHeight,
  // double? buttonFontSize,
  required Widget materialButtonChild,
}) {
  return MaterialButton(
    height: buttonHeight,
    minWidth: double.infinity,
    color: ColorRes.themeColor,
    onPressed: () {
      onPressed();
    },
    child: materialButtonChild,
  );
}
