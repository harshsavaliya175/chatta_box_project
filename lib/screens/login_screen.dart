import 'package:chattabox_project/common/common_text.dart';
import 'package:chattabox_project/common/common_text_filed.dart';
import 'package:chattabox_project/common/height_size_box.dart';
import 'package:chattabox_project/utils/color_res.dart';
import 'package:chattabox_project/utils/image_res.dart';
import 'package:chattabox_project/utils/string_res.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: height * 0.021459),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSizeBox(height * 0.096566),
            Row(
              children: [
                const Spacer(),
                Image.asset(
                  ImageRes.chattaBoxLogo,
                  height: height * 0.0870,
                  width: height * 0.0870,
                ),
                const Spacer(),
              ],
            ),
            heightSizeBox(height * 0.042918),
            commonText(
              text: StringRes.welcomeBack,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
            heightSizeBox(height * 0.00500),
            commonText(
              text: StringRes.loginScreenText1,
              fontSize: 15,
              fontColor: ColorRes.grayColor,
              fontWeight: FontWeight.w400,
            ),
            heightSizeBox(height * 0.05),
            commonTextFiled(
              textFiledName: StringRes.emailAddress,
              controller: emailController,
              prefixIcon: Image.asset(ImageRes.mailIcon),
              hintText: StringRes.enterEmailAddress,
            ),
            heightSizeBox(height * 0.03),
            commonTextFiled(
              textFiledName: StringRes.password,
              controller: passwordController,
              prefixIcon: Image.asset(ImageRes.lockIcon),
              hintText: StringRes.enterPassword,
              suffixIcon: Image.asset(ImageRes.openEyeIcon),
            ),
            //  heightSizeBox(height * 0.02),
            Row(
              children: [
                Checkbox(
                  value: false,
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                commonText(
                  text: StringRes.rememberMe,
                ),
                const Spacer(),
                commonText(
                  text: '${StringRes.forgotPassword}?',
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
