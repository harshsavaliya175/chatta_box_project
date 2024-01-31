part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial({
    @Default(false) bool emailFocusBool,
  }) = _Initial;
}
