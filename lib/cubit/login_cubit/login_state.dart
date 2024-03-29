part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(false) bool checkBoxValue,
    @Default(false) bool passwordVisibility,
    @Default(false) bool emailFocusBool,
    @Default(false) bool passwordFocusBool,
    @Default(false) bool isValidate,
    @Default(false) bool isLoaded,
    bool? isLoginSuccess,
  }) = _Initial;
}
