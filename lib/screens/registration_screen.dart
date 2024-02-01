import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/common_material_button.dart';
import '../common/common_text.dart';
import '../common/common_text_button.dart';
import '../common/common_text_filed.dart';
import '../common/height_size_box.dart';
import '../cubit/registration_cubit/registration_cubit.dart';
import '../generated/locale_keys.g.dart';
import '../utils/color_res.dart';
import '../utils/image_res.dart';
import '../utils/routes_constants.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    RegistrationCubit registrationCubit =
        BlocProvider.of<RegistrationCubit>(context);
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: height * 0.021459),
          child: SingleChildScrollView(
            child: Form(
              key: registerFormKey,
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
                    text: LocaleKeys.helloThere,
                    fontSize: height * 0.030042,
                    fontWeight: FontWeight.w600,
                  ),
                  heightSizeBox(height * 0.005),
                  commonText(
                    text: LocaleKeys.registerScreenText1,
                    fontSize: height * 0.01716,
                    fontColor: ColorRes.grayColor,
                    fontWeight: FontWeight.w400,
                  ),
                  heightSizeBox(height * 0.04721),
                  BlocBuilder<RegistrationCubit, RegistrationState>(
                    builder: (BuildContext context, RegistrationState state) {
                      return commonTextFiled(
                        textFiledName: LocaleKeys.fullName,
                        controller: fullNameController,
                        focusNode: registrationCubit.nameFocusNode,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp("[a-zA-Z ]"),
                          ),
                        ],
                        prefixIcon: Image.asset(
                          ImageRes.userIcon,
                          width: height * 0.02575,
                          height: height * 0.02575,
                          color: state.nameFocusBool
                              ? ColorRes.themeColor
                              : ColorRes.grayColor,
                        ),
                        hintText: LocaleKeys.enterFullName,
                        keyboardType: TextInputType.name,
                        validator: (String? value) =>
                            registrationCubit.nameValidation(value),
                      );
                    },
                    buildWhen: (RegistrationState previous,
                        RegistrationState current) {
                      return previous != current &&
                              previous.nameFocusBool != current.nameFocusBool ||
                          (previous.isValidate != current.isValidate);
                    },
                  ),
                  heightSizeBox(height * 0.02575),
                  BlocBuilder<RegistrationCubit, RegistrationState>(
                    builder: (BuildContext context, RegistrationState state) {
                      return commonTextFiled(
                        textFiledName: LocaleKeys.emailAddress,
                        controller: emailController,
                        focusNode: registrationCubit.emailFocusNode,
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
                            registrationCubit.emailValidation(value),
                      );
                    },
                    buildWhen: (RegistrationState previous,
                        RegistrationState current) {
                      return previous != current &&
                              previous.emailFocusBool !=
                                  current.emailFocusBool ||
                          (previous.isValidate != current.isValidate);
                    },
                  ),
                  heightSizeBox(height * 0.02575),
                  BlocBuilder<RegistrationCubit, RegistrationState>(
                    builder: (BuildContext context, RegistrationState state) {
                      return commonTextFiled(
                        textFiledName: LocaleKeys.password,
                        controller: passwordController,
                        obscureText: !(state.passwordVisibility),
                        focusNode: registrationCubit.passwordFocusNode,
                        prefixIcon: Image.asset(
                          ImageRes.lockIcon,
                          color: state.passwordFocusBool
                              ? ColorRes.themeColor
                              : ColorRes.grayColor,
                        ),
                        hintText: LocaleKeys.enterPassword,
                        suffixIcon: InkWell(
                          onTap: () {
                            registrationCubit.passwordVisibilityOnTap(
                                state.passwordVisibility);
                          },
                          child: SizedBox(
                            width: height * 0.02575,
                            height: height * 0.02575,
                            child: Image.asset(
                              state.passwordVisibility
                                  ? ImageRes.openEyeIcon
                                  : ImageRes.closeEyeIcon,
                              color: state.passwordFocusBool
                                  ? ColorRes.themeColor
                                  : ColorRes.grayColor,
                            ),
                          ),
                        ),
                        validator: (String? value) =>
                            registrationCubit.passwordValidation(value),
                      );
                    },
                    buildWhen: (RegistrationState previous,
                        RegistrationState current) {
                      return previous != current &&
                              previous.passwordVisibility !=
                                  current.passwordVisibility ||
                          (previous.passwordFocusBool !=
                              current.passwordFocusBool) ||
                          (previous.isValidate != current.isValidate);
                    },
                  ),
                  heightSizeBox(height * 0.02575),
                  BlocBuilder<RegistrationCubit, RegistrationState>(
                    builder: (BuildContext context, RegistrationState state) {
                      return commonTextFiled(
                        textFiledName: LocaleKeys.confirmPassword,
                        controller: confirmPasswordController,
                        obscureText: !(state.confirmPasswordVisibility),
                        focusNode: registrationCubit.confirmPasswordFocusNode,
                        prefixIcon: Image.asset(
                          ImageRes.lockIcon,
                          color: state.confirmPasswordFocusBool
                              ? ColorRes.themeColor
                              : ColorRes.grayColor,
                        ),
                        hintText: LocaleKeys.enterPassword,
                        suffixIcon: InkWell(
                          onTap: () {
                            registrationCubit.confirmPasswordVisibilityOnTap(
                                state.confirmPasswordVisibility);
                          },
                          child: SizedBox(
                            width: height * 0.02575,
                            height: height * 0.02575,
                            child: Image.asset(
                              state.confirmPasswordVisibility
                                  ? ImageRes.openEyeIcon
                                  : ImageRes.closeEyeIcon,
                              color: state.confirmPasswordFocusBool
                                  ? ColorRes.themeColor
                                  : ColorRes.grayColor,
                            ),
                          ),
                        ),
                        validator: (String? value) =>
                            registrationCubit.confirmPasswordValidation(
                                value, passwordController.text.trim()),
                      );
                    },
                    buildWhen: (RegistrationState previous,
                        RegistrationState current) {
                      return previous != current &&
                              previous.confirmPasswordVisibility !=
                                  current.confirmPasswordVisibility ||
                          (previous.confirmPasswordFocusBool !=
                              current.confirmPasswordFocusBool) ||
                          (previous.isValidate != current.isValidate);
                    },
                  ),
                  heightSizeBox(height * 0.05579),
                  BlocConsumer<RegistrationCubit, RegistrationState>(
                    listener: (BuildContext context, RegistrationState state) {
                      if (state.isRegisterSuccess ?? false) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteNames.loginScreen,
                          (Route<dynamic> route) {
                            return false;
                          },
                        );
                      }

                      if (registrationCubit.userModel != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              registrationCubit.userModel!.msg!,
                            ),
                            backgroundColor: state.isRegisterSuccess != null &&
                                    state.isRegisterSuccess!
                                ? Colors.green
                                : Colors.red,
                          ),
                        );
                      }
                    },
                    listenWhen: (previous, current) {
                      return previous != current &&
                          previous.isRegisterSuccess !=
                              current.isRegisterSuccess;
                    },
                    builder: (BuildContext context, RegistrationState state) {
                      return commonMaterialButton(
                        materialButtonChild: state.isLoaded
                            ? const CircularProgressIndicator()
                            : commonText(
                                text: LocaleKeys.register,
                                fontColor: ColorRes.whiteColor,
                                fontSize: height * 0.02145,
                              ),
                        buttonHeight: height * 0.06437,
                        onPressed: () {
                          registrationCubit.registerButton(
                            value: registerFormKey.currentState!.validate(),
                            userName: fullNameController.text.trim(),
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                        },
                      );
                    },
                    buildWhen: (RegistrationState previous,
                        RegistrationState current) {
                      return previous != current &&
                          previous.isLoaded != current.isLoaded;
                    },
                  ),
                  heightSizeBox(height * 0.02575),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      commonText(
                        text: LocaleKeys.registerScreenText2,
                        fontColor: ColorRes.grayColor,
                        fontSize: height * 0.01716,
                      ),
                      commonTextButton(
                        buttonName: LocaleKeys.login,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        fontSize: height * 0.01716,
                      ),
                    ],
                  ),
                  heightSizeBox(height * 0.02575),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
