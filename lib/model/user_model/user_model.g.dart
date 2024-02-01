// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      userId: json['userId'] as int?,
      userToken: json['userToken'] as String?,
      authToken: json['authToken'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      userProfilePhoto: json['userProfilePhoto'] as String?,
      about: json['about'] as String?,
      devicePushToken: json['devicePushToken'] as String?,
      deviceType: json['deviceType'] as String?,
      verifyForgotCode: json['verifyForgotCode'] as String?,
      isLoggedOut: json['isLoggedOut'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userToken': instance.userToken,
      'authToken': instance.authToken,
      'userName': instance.userName,
      'email': instance.email,
      'userProfilePhoto': instance.userProfilePhoto,
      'about': instance.about,
      'devicePushToken': instance.devicePushToken,
      'deviceType': instance.deviceType,
      'verifyForgotCode': instance.verifyForgotCode,
      'isLoggedOut': instance.isLoggedOut,
    };
