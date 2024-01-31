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

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                    );
                  },
                  buildWhen:
                      (RegistrationState previous, RegistrationState current) {
                    return previous != current &&
                        previous.nameFocusBool != current.nameFocusBool;
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
                    );
                  },
                  buildWhen:
                      (RegistrationState previous, RegistrationState current) {
                    return previous != current &&
                        previous.emailFocusBool != current.emailFocusBool;
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
                    );
                  },
                  buildWhen:
                      (RegistrationState previous, RegistrationState current) {
                    return previous != current &&
                            previous.passwordVisibility !=
                                current.passwordVisibility ||
                        (previous.passwordFocusBool !=
                            current.passwordFocusBool);
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
                    );
                  },
                  buildWhen:
                      (RegistrationState previous, RegistrationState current) {
                    return previous != current &&
                            previous.passwordVisibility !=
                                current.passwordVisibility ||
                        (previous.confirmPasswordFocusBool !=
                            current.confirmPasswordFocusBool);
                  },
                ),
                heightSizeBox(height * 0.05579),
                commonMaterialButton(
                  buttonName: LocaleKeys.register,
                  buttonHeight: height * 0.06437,
                  buttonFontSize: height * 0.02145,
                  onPressed: () {
                    registrationCubit.registerButton();
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
    );
  }
}
