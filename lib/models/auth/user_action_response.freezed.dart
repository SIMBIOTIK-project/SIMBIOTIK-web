// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_action_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserActionResponse _$UserActionResponseFromJson(Map<String, dynamic> json) {
  return _UserActionResponse.fromJson(json);
}

/// @nodoc
mixin _$UserActionResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UserModel get user => throw _privateConstructorUsedError;

  /// Serializes this UserActionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserActionResponseCopyWith<UserActionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActionResponseCopyWith<$Res> {
  factory $UserActionResponseCopyWith(
          UserActionResponse value, $Res Function(UserActionResponse) then) =
      _$UserActionResponseCopyWithImpl<$Res, UserActionResponse>;
  @useResult
  $Res call(
      {bool success, String message, @JsonKey(name: 'data') UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserActionResponseCopyWithImpl<$Res, $Val extends UserActionResponse>
    implements $UserActionResponseCopyWith<$Res> {
  _$UserActionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserActionResponseImplCopyWith<$Res>
    implements $UserActionResponseCopyWith<$Res> {
  factory _$$UserActionResponseImplCopyWith(_$UserActionResponseImpl value,
          $Res Function(_$UserActionResponseImpl) then) =
      __$$UserActionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success, String message, @JsonKey(name: 'data') UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserActionResponseImplCopyWithImpl<$Res>
    extends _$UserActionResponseCopyWithImpl<$Res, _$UserActionResponseImpl>
    implements _$$UserActionResponseImplCopyWith<$Res> {
  __$$UserActionResponseImplCopyWithImpl(_$UserActionResponseImpl _value,
      $Res Function(_$UserActionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$UserActionResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserActionResponseImpl implements _UserActionResponse {
  const _$UserActionResponseImpl(
      {required this.success,
      required this.message,
      @JsonKey(name: 'data') required this.user});

  factory _$UserActionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserActionResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  @JsonKey(name: 'data')
  final UserModel user;

  @override
  String toString() {
    return 'UserActionResponse(success: $success, message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, user);

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActionResponseImplCopyWith<_$UserActionResponseImpl> get copyWith =>
      __$$UserActionResponseImplCopyWithImpl<_$UserActionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserActionResponseImplToJson(
      this,
    );
  }
}

abstract class _UserActionResponse implements UserActionResponse {
  const factory _UserActionResponse(
          {required final bool success,
          required final String message,
          @JsonKey(name: 'data') required final UserModel user}) =
      _$UserActionResponseImpl;

  factory _UserActionResponse.fromJson(Map<String, dynamic> json) =
      _$UserActionResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  UserModel get user;

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActionResponseImplCopyWith<_$UserActionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
