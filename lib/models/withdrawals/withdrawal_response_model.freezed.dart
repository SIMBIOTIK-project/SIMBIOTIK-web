// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawalResponseModel _$WithdrawalResponseModelFromJson(
    Map<String, dynamic> json) {
  return _WithdrawalResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalResponseModel {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  WithdrawalPageModel? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalResponseModelCopyWith<WithdrawalResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalResponseModelCopyWith<$Res> {
  factory $WithdrawalResponseModelCopyWith(WithdrawalResponseModel value,
          $Res Function(WithdrawalResponseModel) then) =
      _$WithdrawalResponseModelCopyWithImpl<$Res, WithdrawalResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') WithdrawalPageModel? result});

  $WithdrawalPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$WithdrawalResponseModelCopyWithImpl<$Res,
        $Val extends WithdrawalResponseModel>
    implements $WithdrawalResponseModelCopyWith<$Res> {
  _$WithdrawalResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as WithdrawalPageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WithdrawalPageModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $WithdrawalPageModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WithdrawalResponseModelImplCopyWith<$Res>
    implements $WithdrawalResponseModelCopyWith<$Res> {
  factory _$$WithdrawalResponseModelImplCopyWith(
          _$WithdrawalResponseModelImpl value,
          $Res Function(_$WithdrawalResponseModelImpl) then) =
      __$$WithdrawalResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') WithdrawalPageModel? result});

  @override
  $WithdrawalPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$WithdrawalResponseModelImplCopyWithImpl<$Res>
    extends _$WithdrawalResponseModelCopyWithImpl<$Res,
        _$WithdrawalResponseModelImpl>
    implements _$$WithdrawalResponseModelImplCopyWith<$Res> {
  __$$WithdrawalResponseModelImplCopyWithImpl(
      _$WithdrawalResponseModelImpl _value,
      $Res Function(_$WithdrawalResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WithdrawalResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as WithdrawalPageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalResponseModelImpl implements _WithdrawalResponseModel {
  const _$WithdrawalResponseModelImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result});

  factory _$WithdrawalResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'result')
  final WithdrawalPageModel? result;

  @override
  String toString() {
    return 'WithdrawalResponseModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalResponseModelImplCopyWith<_$WithdrawalResponseModelImpl>
      get copyWith => __$$WithdrawalResponseModelImplCopyWithImpl<
          _$WithdrawalResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalResponseModel implements WithdrawalResponseModel {
  const factory _WithdrawalResponseModel(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'result') final WithdrawalPageModel? result}) =
      _$WithdrawalResponseModelImpl;

  factory _WithdrawalResponseModel.fromJson(Map<String, dynamic> json) =
      _$WithdrawalResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'result')
  WithdrawalPageModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalResponseModelImplCopyWith<_$WithdrawalResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
