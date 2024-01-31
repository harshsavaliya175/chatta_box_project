// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "welcomeBack": "Welcome Back!",
  "loginScreenText1": "Log in now to continue exploring",
  "rememberMe": "Remember me",
  "forgotPassword": "Forgot Password",
  "forgotPassword2": "Forgot Password? ",
  "loginScreenText2": "Don’t have an account? ",
  "helloThere": "Hello! There",
  "registerScreenText1": "Let’s make your account",
  "fullName": "Full Name",
  "enterFullName": "Enter Your Name",
  "confirmPassword": "Confirm Password",
  "registerScreenText2": "Already have an account? ",
  "request": "Request",
  "forgotScreenText1": "Enter your email & reset Password",
  "forgotScreenText2": "Remember Password? ",
  "emailAddress": "Email Address",
  "enterEmailAddress": "Enter Your Email",
  "password": "Password",
  "enterPassword": "Enter Your Password",
  "login": "Log In",
  "register": "Register"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en};
}
