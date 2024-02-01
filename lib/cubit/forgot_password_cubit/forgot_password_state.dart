part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial({
    @Default(false) bool emailFocusBool,
    @Default(false) bool isValidate,
    @Default(false) bool isLoaded,
    bool? isForgotPasswordSuccess,
  }) = _Initial;
}
