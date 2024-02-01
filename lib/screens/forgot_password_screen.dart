import 'dart:developer';

import 'package:chattabox_project/cubit/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/common_material_button.dart';
import '../common/common_text.dart';
import '../common/common_text_button.dart';
import '../common/common_text_filed.dart';
import '../common/height_size_box.dart';
import '../generated/locale_keys.g.dart';
import '../utils/color_res.dart';
import '../utils/image_res.dart';
import '../utils/routes_constants.dart';

class ForgotPassWordScreen extends StatelessWidget {
  ForgotPassWordScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    ForgotPasswordCubit forgotPasswordCubit =
        BlocProvider.of<ForgotPasswordCubit>(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: height * 0.021459),
          child: SingleChildScrollView(
            child: Form(
              key: forgotPasswordFormKey,
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
                    text: LocaleKeys.forgotPassword,
                    fontSize: height * 0.030042,
                    fontWeight: FontWeight.w600,
                  ),
                  heightSizeBox(height * 0.005),
                  commonText(
                    text: LocaleKeys.forgotScreenText1,
                    fontSize: height * 0.01716,
                    fontColor: ColorRes.grayColor,
                    fontWeight: FontWeight.w400,
                  ),
                  heightSizeBox(height * 0.04721),
                  BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
                    builder: (BuildContext context, ForgotPasswordState state) {
                      log('email');
                      return commonTextFiled(
                        textFiledName: LocaleKeys.emailAddress,
                        focusNode: forgotPasswordCubit.emailFocusNode,
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
                        validator: (String? value) =>
                            forgotPasswordCubit.emailValidation(value),
                      );
                    },
                    buildWhen: (ForgotPasswordState previous,
                        ForgotPasswordState current) {
                      return previous != current &&
                              previous.emailFocusBool !=
                                  current.emailFocusBool ||
                          (previous.isValidate != current.isValidate);
                    },
                  ),
                  heightSizeBox(height * 0.05579),
                  BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
                    listener:
                        (BuildContext context, ForgotPasswordState state) {
                      if (state.isForgotPasswordSuccess ?? false) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteNames.loginScreen,
                          (Route<dynamic> route) {
                            return false;
                          },
                        );
                      }
                      if (forgotPasswordCubit.forgotPasswordModel != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                forgotPasswordCubit.forgotPasswordModel!.msg!),
                            backgroundColor:
                                state.isForgotPasswordSuccess != null &&
                                        state.isForgotPasswordSuccess!
                                    ? Colors.green
                                    : Colors.red,
                          ),
                        );
                      }
                    },
                    listenWhen: (ForgotPasswordState previous,
                        ForgotPasswordState current) {
                      return previous != current &&
                          previous.isForgotPasswordSuccess !=
                              current.isForgotPasswordSuccess;
                    },
                    builder: (BuildContext context, ForgotPasswordState state) {
                      return commonMaterialButton(
                        materialButtonChild: state.isLoaded
                            ? const CircularProgressIndicator()
                            : commonText(
                                text: LocaleKeys.request,
                                fontColor: ColorRes.whiteColor,
                                fontSize: height * 0.02145,
                              ),
                        buttonHeight: height * 0.06437,
                        onPressed: () {
                          forgotPasswordCubit.requestButton(
                            value:
                                forgotPasswordFormKey.currentState!.validate(),
                            email: emailController.text.trim(),
                          );
                        },
                      );
                    },
                    buildWhen: (ForgotPasswordState previous,
                        ForgotPasswordState current) {
                      return previous != current &&
                          previous.isLoaded != current.isLoaded;
                    },
                  ),
                  heightSizeBox(height * 0.02575),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      commonText(
                        text: LocaleKeys.forgotScreenText2,
                        fontColor: ColorRes.grayColor,
                        fontSize: height * 0.01716,
                      ),
                      commonTextButton(
                        buttonName: LocaleKeys.login,
                        onTap: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteNames.loginScreen,
                            (Route<dynamic> route) {
                              return false;
                            },
                          );
                        },
                        fontSize: height * 0.01716,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
