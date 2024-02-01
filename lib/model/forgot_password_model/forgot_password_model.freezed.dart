// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordModel _$ForgotPasswordModelFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordModel {
  int? get isEmailSent => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordModelCopyWith<ForgotPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordModelCopyWith<$Res> {
  factory $ForgotPasswordModelCopyWith(
          ForgotPasswordModel value, $Res Function(ForgotPasswordModel) then) =
      _$ForgotPasswordModelCopyWithImpl<$Res, ForgotPasswordModel>;
  @useResult
  $Res call({int? isEmailSent, int? status, String? msg});
}

/// @nodoc
class _$ForgotPasswordModelCopyWithImpl<$Res, $Val extends ForgotPasswordModel>
    implements $ForgotPasswordModelCopyWith<$Res> {
  _$ForgotPasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailSent = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailSent: freezed == isEmailSent
          ? _value.isEmailSent
          : isEmailSent // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordModelImplCopyWith<$Res>
    implements $ForgotPasswordModelCopyWith<$Res> {
  factory _$$ForgotPasswordModelImplCopyWith(_$ForgotPasswordModelImpl value,
          $Res Function(_$ForgotPasswordModelImpl) then) =
      __$$ForgotPasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? isEmailSent, int? status, String? msg});
}

/// @nodoc
class __$$ForgotPasswordModelImplCopyWithImpl<$Res>
    extends _$ForgotPasswordModelCopyWithImpl<$Res, _$ForgotPasswordModelImpl>
    implements _$$ForgotPasswordModelImplCopyWith<$Res> {
  __$$ForgotPasswordModelImplCopyWithImpl(_$ForgotPasswordModelImpl _value,
      $Res Function(_$ForgotPasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailSent = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$ForgotPasswordModelImpl(
      isEmailSent: freezed == isEmailSent
          ? _value.isEmailSent
          : isEmailSent // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordModelImpl implements _ForgotPasswordModel {
  const _$ForgotPasswordModelImpl({this.isEmailSent, this.status, this.msg});

  factory _$ForgotPasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordModelImplFromJson(json);

  @override
  final int? isEmailSent;
  @override
  final int? status;
  @override
  final String? msg;

  @override
  String toString() {
    return 'ForgotPasswordModel(isEmailSent: $isEmailSent, status: $status, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordModelImpl &&
            (identical(other.isEmailSent, isEmailSent) ||
                other.isEmailSent == isEmailSent) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEmailSent, status, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordModelImplCopyWith<_$ForgotPasswordModelImpl> get copyWith =>
      __$$ForgotPasswordModelImplCopyWithImpl<_$ForgotPasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordModelImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordModel implements ForgotPasswordModel {
  const factory _ForgotPasswordModel(
      {final int? isEmailSent,
      final int? status,
      final String? msg}) = _$ForgotPasswordModelImpl;

  factory _ForgotPasswordModel.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordModelImpl.fromJson;

  @override
  int? get isEmailSent;
  @override
  int? get status;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordModelImplCopyWith<_$ForgotPasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
