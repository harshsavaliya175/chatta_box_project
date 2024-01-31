import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  void checkBoxOnTap(bool? value) {
    emit(state.copyWith(checkBoxValue: value!));
  }

  void passwordVisibilityOnTap(bool value) {
    emit(state.copyWith(passwordVisibility: !value));
  }

  void loginButton() {}
}
