import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  void requestButton() {}
}
