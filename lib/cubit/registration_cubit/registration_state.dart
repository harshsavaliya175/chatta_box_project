part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial({
    @Default(false) passwordVisibility,
    @Default(false) confirmPasswordVisibility,
    @Default(false) bool nameFocusBool,
    @Default(false) bool emailFocusBool,
    @Default(false) bool passwordFocusBool,
    @Default(false) bool confirmPasswordFocusBool,
    @Default(false) bool isValidate,
    @Default(false) bool isLoaded,
    bool? isRegisterSuccess,
  }) = _Initial;
}
