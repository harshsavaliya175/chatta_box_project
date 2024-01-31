import 'dart:developer';

import 'package:chattabox_project/common/common_text_button.dart';
import 'package:chattabox_project/common/width_size_box.dart';
import 'package:chattabox_project/utils/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/common_material_button.dart';
import '../common/common_text.dart';
import '../common/common_text_filed.dart';
import '../common/height_size_box.dart';
import '../cubit/login_cubit/login_cubit.dart';
import '../generated/locale_keys.g.dart';
import '../utils/color_res.dart';
import '../utils/image_res.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log('call build');
    LoginCubit loginCubit = BlocProvider.of<LoginCubit>(context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: height * 0.021459),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSizeBox(height * 0.096566),
                Row(
                  children: [
                    const Spacer(),
                    Image.asset(
                      ImageRes.chattaBoxLogo,
                      height: height * 0.08690,
                      width: height * 0.08690,
                    ),
                    const Spacer(),
                  ],
                ),
                heightSizeBox(height * 0.042918),
                commonText(
                  text: LocaleKeys.welcomeBack,
                  fontSize: height * 0.030042,
                  fontWeight: FontWeight.w600,
                ),
                heightSizeBox(height * 0.005),
                commonText(
                  text: LocaleKeys.loginScreenText1,
                  fontSize: height * 0.01716,
                  fontColor: ColorRes.grayColor,
                  fontWeight: FontWeight.w400,
                ),
                heightSizeBox(height * 0.04721),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (BuildContext context, LoginState state) {
                    log('email');
                    return commonTextFiled(
                      focusNode: loginCubit.emailFocusNode,
                      textFiledName: LocaleKeys.emailAddress,
                      controller: emailController,
                      prefixIcon: Image.asset(
                        ImageRes.mailIcon,
                        width: height * 0.02575,
                        height: height * 0.02575,
                        color: state.emailFocusBool
                            ? ColorRes.themeColor
                            : ColorRes.grayColor,
                      ),
                      hintText: LocaleKeys.enterEmailAddress,
                      keyboardType: TextInputType.emailAddress,
                    );
                  },
                  buildWhen: (LoginState previous, LoginState current) {
                    return previous != current &&
                        previous.emailFocusBool != current.emailFocusBool;
                  },
                ),
                heightSizeBox(height * 0.02575),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (BuildContext context, LoginState state) {
                    log('password');
                    return commonTextFiled(
                      focusNode: loginCubit.passwordFocusNode,
                      textFiledName: LocaleKeys.password,
                      controller: passwordController,
                      prefixIcon: Image.asset(
                        ImageRes.lockIcon,
                        width: height * 0.02575,
                        height: height * 0.02575,
                        color: state.passwordFocusBool
                            ? ColorRes.themeColor
                            : ColorRes.grayColor,
                      ),
                      hintText: LocaleKeys.enterPassword,
                      suffixIcon: InkWell(
                        onTap: () {
                          loginCubit.passwordVisibilityOnTap(
                              state.passwordVisibility);
                        },
                        child: SizedBox(
                          width: height * 0.02575,
                          height: height * 0.02575,
                          child: state.passwordVisibility
                              ? Image.asset(
                                  ImageRes.openEyeIcon,
                                  color: state.passwordFocusBool
                                      ? ColorRes.themeColor
                                      : ColorRes.grayColor,
                                )
                              : Image.asset(
                                  ImageRes.closeEyeIcon,
                                  color: state.passwordFocusBool
                                      ? ColorRes.themeColor
                                      : ColorRes.grayColor,
                                ),
                        ),
                      ),
                      obscureText: !(state.passwordVisibility),
                    );
                  },
                  buildWhen: (LoginState previous, LoginState current) {
                    return previous != current &&
                            previous.passwordVisibility !=
                                current.passwordVisibility ||
                        (previous.passwordFocusBool !=
                            current.passwordFocusBool);
                  },
                ),
                heightSizeBox(height * 0.03004),
                Row(
                  children: [
                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (BuildContext context, LoginState state) {
                        log('checkBox');
                        return SizedBox(
                          height: height * 0.02145,
                          width: height * 0.02145,
                          child: Checkbox(
                            value: state.checkBoxValue,
                            shape: const ContinuousRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            side: const BorderSide(
                                color: ColorRes.themeColor, width: 1),
                            onChanged: (value) {
                              loginCubit.checkBoxOnTap(value);
                            },
                          ),
                        );
                      },
                      buildWhen: (LoginState previous, LoginState current) {
                        return previous != current &&
                            previous.checkBoxValue != current.checkBoxValue;
                      },
                    ),
                    widthSizeBox(width * 0.025),
                    commonText(
                      text: LocaleKeys.rememberMe,
                      fontSize: height * 0.01716,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteNames.forgotPasswordScreen);
                      },
                      child: commonText(
                        text: LocaleKeys.forgotPassword2,
                        fontWeight: FontWeight.w500,
                        fontSize: height * 0.01716,
                      ),
                    ),
                  ],
                ),
                heightSizeBox(height * 0.05579),
                commonMaterialButton(
                  buttonName: LocaleKeys.login,
                  buttonHeight: height * 0.06437,
                  buttonFontSize: height * 0.02145,
                  onPressed: () {
                    loginCubit.loginButton();
                  },
                ),
                heightSizeBox(height * 0.02575),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    commonText(
                      text: LocaleKeys.loginScreenText2,
                      fontColor: ColorRes.grayColor,
                      fontSize: height * 0.01716,
                    ),
                    commonTextButton(
                      buttonName: LocaleKeys.register,
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteNames.registrationScreen);
                      },
                      fontSize: height * 0.01716,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
