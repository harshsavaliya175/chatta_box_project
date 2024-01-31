import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_cubit.freezed.dart';
part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(const RegistrationState.initial()) {
    nameFocusNode.addListener(
      () {
        emit(state.copyWith(nameFocusBool: nameFocusNode.hasFocus));
      },
    );

    emailFocusNode.addListener(
      () {
        emit(state.copyWith(emailFocusBool: emailFocusNode.hasFocus));
      },
    );

    passwordFocusNode.addListener(
      () {
        emit(state.copyWith(passwordFocusBool: passwordFocusNode.hasFocus));
      },
    );

    confirmPasswordFocusNode.addListener(
      () {
        emit(state.copyWith(
            confirmPasswordFocusBool: confirmPasswordFocusNode.hasFocus));
      },
    );
  }

  FocusNode nameFocusNode = FocusNode();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  FocusNode confirmPasswordFocusNode = FocusNode();

  void passwordVisibilityOnTap(bool value) {
    emit(state.copyWith(passwordVisibility: !value));
  }

  void confirmPasswordVisibilityOnTap(bool value) {
    emit(state.copyWith(confirmPasswordVisibility: !value));
  }

  void registerButton() {}
}
