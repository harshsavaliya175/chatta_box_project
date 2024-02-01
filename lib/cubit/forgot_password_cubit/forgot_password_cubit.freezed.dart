// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordState {
  bool get emailFocusBool => throw _privateConstructorUsedError;
  bool get isValidate => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool? get isForgotPasswordSuccess => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool emailFocusBool, bool isValidate,
            bool isLoaded, bool? isForgotPasswordSuccess)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool emailFocusBool, bool isValidate, bool isLoaded,
            bool? isForgotPasswordSuccess)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool emailFocusBool, bool isValidate, bool isLoaded,
            bool? isForgotPasswordSuccess)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {bool emailFocusBool,
      bool isValidate,
      bool isLoaded,
      bool? isForgotPasswordSuccess});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailFocusBool = null,
    Object? isValidate = null,
    Object? isLoaded = null,
    Object? isForgotPasswordSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailFocusBool: null == emailFocusBool
          ? _value.emailFocusBool
          : emailFocusBool // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidate: null == isValidate
          ? _value.isValidate
          : isValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isForgotPasswordSuccess: freezed == isForgotPasswordSuccess
          ? _value.isForgotPasswordSuccess
          : isForgotPasswordSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool emailFocusBool,
      bool isValidate,
      bool isLoaded,
      bool? isForgotPasswordSuccess});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailFocusBool = null,
    Object? isValidate = null,
    Object? isLoaded = null,
    Object? isForgotPasswordSuccess = freezed,
  }) {
    return _then(_$InitialImpl(
      emailFocusBool: null == emailFocusBool
          ? _value.emailFocusBool
          : emailFocusBool // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidate: null == isValidate
          ? _value.isValidate
          : isValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isForgotPasswordSuccess: freezed == isForgotPasswordSuccess
          ? _value.isForgotPasswordSuccess
          : isForgotPasswordSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.emailFocusBool = false,
      this.isValidate = false,
      this.isLoaded = false,
      this.isForgotPasswordSuccess});

  @override
  @JsonKey()
  final bool emailFocusBool;
  @override
  @JsonKey()
  final bool isValidate;
  @override
  @JsonKey()
  final bool isLoaded;
  @override
  final bool? isForgotPasswordSuccess;

  @override
  String toString() {
    return 'ForgotPasswordState.initial(emailFocusBool: $emailFocusBool, isValidate: $isValidate, isLoaded: $isLoaded, isForgotPasswordSuccess: $isForgotPasswordSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.emailFocusBool, emailFocusBool) ||
                other.emailFocusBool == emailFocusBool) &&
            (identical(other.isValidate, isValidate) ||
                other.isValidate == isValidate) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(
                    other.isForgotPasswordSuccess, isForgotPasswordSuccess) ||
                other.isForgotPasswordSuccess == isForgotPasswordSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailFocusBool, isValidate,
      isLoaded, isForgotPasswordSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool emailFocusBool, bool isValidate,
            bool isLoaded, bool? isForgotPasswordSuccess)
        initial,
  }) {
    return initial(
        emailFocusBool, isValidate, isLoaded, isForgotPasswordSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool emailFocusBool, bool isValidate, bool isLoaded,
            bool? isForgotPasswordSuccess)?
        initial,
  }) {
    return initial?.call(
        emailFocusBool, isValidate, isLoaded, isForgotPasswordSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool emailFocusBool, bool isValidate, bool isLoaded,
            bool? isForgotPasswordSuccess)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          emailFocusBool, isValidate, isLoaded, isForgotPasswordSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForgotPasswordState {
  const factory _Initial(
      {final bool emailFocusBool,
      final bool isValidate,
      final bool isLoaded,
      final bool? isForgotPasswordSuccess}) = _$InitialImpl;

  @override
  bool get emailFocusBool;
  @override
  bool get isValidate;
  @override
  bool get isLoaded;
  @override
  bool? get isForgotPasswordSuccess;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
