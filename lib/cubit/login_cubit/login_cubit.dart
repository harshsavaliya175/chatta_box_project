import 'dart:convert';
import 'dart:developer';

import 'package:chattabox_project/model/user_model/user_model.dart';
import 'package:chattabox_project/services/api_services.dart';
import 'package:chattabox_project/utils/api_end_point.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial()) {
    emailFocusNode.addListener(
      () {
        emit(state.copyWith(emailFocusBool: emailFocusNode.hasFocus));
      },
    );
    passwordFocusNode.addListener(() {
      emit(state.copyWith(passwordFocusBool: passwordFocusNode.hasFocus));
    });
  }

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  UserModel? userModel;

  void checkBoxOnTap(bool? value) {
    emit(state.copyWith(checkBoxValue: value!));
  }

  void passwordVisibilityOnTap(bool value) {
    emit(state.copyWith(passwordVisibility: !value));
  }

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Email";
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Password";
    }
    return null;
  }

  Future<void> loginButton({
    required bool value,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(
      isLoaded: true,
      isLoginSuccess: null,
    ));
    userModel = null;
    if (value && state.checkBoxValue) {
      Map<String, dynamic> body = {
        'email': email,
        'password': password,
      };

      Map<String, String> headers = {
        'Content-type': 'application/json',
        'App-Track-Version': "v1",
        "App-Device-Type": "iOS",
        "App-Store-Version": "1.1",
        "App-Device-Model": "iPhone 8",
        "App-Os-Version": "iOS 11",
        "App-Store-Build-Number": "1.1",
        'App-Secret': 'CHATTABOX@NV7803#',
      };

      http.Response? response = await HttpServices.postApi(
        url: ApiEndPoint.loginEndPoint,
        body: body,
        header: headers,
      );

      if (response != null && response.statusCode == 200) {
        log('response body --> ${response.body}');

        userModel = UserModel.fromJson(
          jsonDecode(response.body),
        );

        if (userModel != null && userModel!.status == 1) {
          emit(state.copyWith(isLoginSuccess: true));
        } else {
          emit(state.copyWith(isLoginSuccess: false));
        }
      } else {
        log('login error');
      }
    } else {
      emit(state.copyWith(isValidate: value));
    }
    emit(state.copyWith(isLoaded: false));
  }
}
