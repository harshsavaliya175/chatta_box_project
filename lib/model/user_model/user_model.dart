import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    Data? data,
    String? msg,
    int? status,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? userId,
    String? userToken,
    String? authToken,
    String? userName,
    String? email,
    String? userProfilePhoto,
    String? about,
    String? devicePushToken,
    String? deviceType,
    String? verifyForgotCode,
    int? isLoggedOut,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
