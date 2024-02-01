import 'dart:convert';
import 'dart:developer';

import 'package:chattabox_project/services/api_services.dart';
import 'package:chattabox_project/utils/api_end_point.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import '../../model/user_model/user_model.dart';

part 'registration_cubit.freezed.dart';
part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(const RegistrationState.initial()) {
    nameFocusNode.addListener(() {
      emit(state.copyWith(nameFocusBool: nameFocusNode.hasFocus));
    });

    emailFocusNode.addListener(() {
      emit(state.copyWith(emailFocusBool: emailFocusNode.hasFocus));
    });

    passwordFocusNode.addListener(() {
      emit(state.copyWith(passwordFocusBool: passwordFocusNode.hasFocus));
    });

    confirmPasswordFocusNode.addListener(() {
      emit(state.copyWith(
          confirmPasswordFocusBool: confirmPasswordFocusNode.hasFocus));
    });
  }

  FocusNode nameFocusNode = FocusNode();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  FocusNode confirmPasswordFocusNode = FocusNode();

  UserModel? userModel;

  void passwordVisibilityOnTap(bool value) {
    emit(state.copyWith(passwordVisibility: !value));
  }

  void confirmPasswordVisibilityOnTap(bool value) {
    emit(state.copyWith(confirmPasswordVisibility: !value));
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

  String? nameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Name";
    }
    return null;
  }

  String? confirmPasswordValidation(String? confirmPassword, String password) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "Please Enter Password";
    } else if (confirmPassword != password) {
      return "Confirm Password And Password Must Be Same";
    }
    return null;
  }

  Future<void> registerButton({
    required bool value,
    required String userName,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(
      isLoaded: true,
      isRegisterSuccess: null,
    ));
    userModel = null;
    if (value) {
      Map<String, dynamic> body = {
        'user_name': userName,
        'email': email,
        'password': password,
      };

      Map<String, String> header = {
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
        url: ApiEndPoint.registerEndPoint,
        body: body,
        header: header,
      );

      if (response != null && response.statusCode == 200) {
        log('response body --> ${response.body}');
        userModel = UserModel.fromJson(
          jsonDecode(response.body),
        );
        if (userModel != null && userModel!.status == 1) {
          emit(state.copyWith(isRegisterSuccess: true));
        } else {
          emit(state.copyWith(isRegisterSuccess: false));
        }
      } else {
        log('register error');
      }
    } else {
      emit(state.copyWith(isValidate: value));
    }

    emit(state.copyWith(isLoaded: false));
  }
}
