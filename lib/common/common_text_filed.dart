import 'package:chattabox_project/common/height_size_box.dart';
import 'package:flutter/material.dart';

Widget commonTextFiled({
  required String textFiledName,
  String? Function(String?)? validator,
  required TextEditingController controller,
  required Widget? prefixIcon,
  required String hintText,
  bool obscureText = false,
  TextInputType? keyboardType,
  Widget? suffixIcon,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(textFiledName),
      heightSizeBox(5),
      TextFormField(
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: prefixIcon,
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
      ),
    ],
  );
}
