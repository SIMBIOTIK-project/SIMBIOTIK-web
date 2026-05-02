// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BalanceResponseModel _$BalanceResponseModelFromJson(Map<String, dynamic> json) {
  return _BalanceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BalanceResponseModel {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  BalanceModel? get result => throw _privateConstructorUsedError;

  /// Serializes this BalanceResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BalanceResponseModelCopyWith<BalanceResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceResponseModelCopyWith<$Res> {
  factory $BalanceResponseModelCopyWith(BalanceResponseModel value,
          $Res Function(BalanceResponseModel) then) =
      _$BalanceResponseModelCopyWithImpl<$Res, BalanceResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') BalanceModel? result});

  $BalanceModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$BalanceResponseModelCopyWithImpl<$Res,
        $Val extends BalanceResponseModel>
    implements $BalanceResponseModelCopyWith<$Res> {
  _$BalanceResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
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
              as BalanceModel?,
    ) as $Val);
  }

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BalanceModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $BalanceModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BalanceResponseModelImplCopyWith<$Res>
    implements $BalanceResponseModelCopyWith<$Res> {
  factory _$$BalanceResponseModelImplCopyWith(_$BalanceResponseModelImpl value,
          $Res Function(_$BalanceResponseModelImpl) then) =
      __$$BalanceResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') BalanceModel? result});

  @override
  $BalanceModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$BalanceResponseModelImplCopyWithImpl<$Res>
    extends _$BalanceResponseModelCopyWithImpl<$Res, _$BalanceResponseModelImpl>
    implements _$$BalanceResponseModelImplCopyWith<$Res> {
  __$$BalanceResponseModelImplCopyWithImpl(_$BalanceResponseModelImpl _value,
      $Res Function(_$BalanceResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$BalanceResponseModelImpl(
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
              as BalanceModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceResponseModelImpl implements _BalanceResponseModel {
  const _$BalanceResponseModelImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.result});

  factory _$BalanceResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final BalanceModel? result;

  @override
  String toString() {
    return 'BalanceResponseModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceResponseModelImplCopyWith<_$BalanceResponseModelImpl>
      get copyWith =>
          __$$BalanceResponseModelImplCopyWithImpl<_$BalanceResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BalanceResponseModel implements BalanceResponseModel {
  const factory _BalanceResponseModel(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final BalanceModel? result}) =
      _$BalanceResponseModelImpl;

  factory _BalanceResponseModel.fromJson(Map<String, dynamic> json) =
      _$BalanceResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  BalanceModel? get result;

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BalanceResponseModelImplCopyWith<_$BalanceResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
