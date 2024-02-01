import 'dart:convert';
import 'dart:developer';

import 'package:chattabox_project/model/forgot_password_model/forgot_password_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import '../../services/api_services.dart';
import '../../utils/api_end_point.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(const ForgotPasswordState.initial()) {
    emailFocusNode.addListener(
      () {
        emit(state.copyWith(emailFocusBool: emailFocusNode.hasFocus));
      },
    );
  }

  FocusNode emailFocusNode = FocusNode();

  ForgotPasswordModel? forgotPasswordModel;

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Email";
    }
    return null;
  }

  Future<void> requestButton({
    required bool value,
    required String email,
  }) async {
    emit(state.copyWith(
      isLoaded: true,
      isForgotPasswordSuccess: null,
    ));
    forgotPasswordModel = null;
    if (value) {
      Map<String, dynamic> body = {
        'email': email,
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
        url: ApiEndPoint.forgotPasswordEndPoint,
        body: body,
        header: header,
      );

      if (response != null && response.statusCode == 200) {
        log('response body --> ${response.body}');
        forgotPasswordModel =
            ForgotPasswordModel.fromJson(jsonDecode(response.body));

        if (forgotPasswordModel != null && forgotPasswordModel!.status == 1) {
          emit(state.copyWith(isForgotPasswordSuccess: true));
        } else {
          emit(state.copyWith(isForgotPasswordSuccess: false));
        }
      } else {
        log('error');
      }
    } else {
      emit(state.copyWith(isValidate: value));
    }

    emit(state.copyWith(isLoaded: false));
  }
}
