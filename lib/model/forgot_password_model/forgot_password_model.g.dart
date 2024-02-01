// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordModelImpl _$$ForgotPasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordModelImpl(
      isEmailSent: json['isEmailSent'] as int?,
      status: json['status'] as int?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$ForgotPasswordModelImplToJson(
        _$ForgotPasswordModelImpl instance) =>
    <String, dynamic>{
      'isEmailSent': instance.isEmailSent,
      'status': instance.status,
      'msg': instance.msg,
    };
