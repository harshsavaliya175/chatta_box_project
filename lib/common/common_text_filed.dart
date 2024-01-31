import 'package:chattabox_project/common/height_size_box.dart';
import 'package:chattabox_project/utils/color_res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget commonTextFiled({
  required String textFiledName,
  String? Function(String?)? validator,
  required TextEditingController controller,
  required Widget? prefixIcon,
  required String hintText,
  bool obscureText = false,
  TextInputType? keyboardType,
  Widget? suffixIcon,
  List<TextInputFormatter>? inputFormatters,
  FocusNode? focusNode,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(textFiledName).tr(),
      heightSizeBox(5),
      TextFormField(
        focusNode: focusNode,
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          isDense: true,
          prefixIcon: prefixIcon,
          hintText: tr(hintText),
          hintStyle: const TextStyle(
            color: Color(0xff8C9DAB),
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: suffixIcon,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(color: ColorRes.themeColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(color: Color(0xffC7D1DA)),
          ),
        ),
      ),
    ],
  );
}
