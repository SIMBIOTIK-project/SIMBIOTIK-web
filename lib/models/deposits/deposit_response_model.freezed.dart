// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepositResponseModel _$DepositResponseModelFromJson(Map<String, dynamic> json) {
  return _DepositResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DepositResponseModel {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  DepositPageModel? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositResponseModelCopyWith<DepositResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositResponseModelCopyWith<$Res> {
  factory $DepositResponseModelCopyWith(DepositResponseModel value,
          $Res Function(DepositResponseModel) then) =
      _$DepositResponseModelCopyWithImpl<$Res, DepositResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') DepositPageModel? result});

  $DepositPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$DepositResponseModelCopyWithImpl<$Res,
        $Val extends DepositResponseModel>
    implements $DepositResponseModelCopyWith<$Res> {
  _$DepositResponseModelCopyWithImpl(this._value, this._then);

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
              as DepositPageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepositPageModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $DepositPageModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepositResponseModelImplCopyWith<$Res>
    implements $DepositResponseModelCopyWith<$Res> {
  factory _$$DepositResponseModelImplCopyWith(_$DepositResponseModelImpl value,
          $Res Function(_$DepositResponseModelImpl) then) =
      __$$DepositResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') DepositPageModel? result});

  @override
  $DepositPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$DepositResponseModelImplCopyWithImpl<$Res>
    extends _$DepositResponseModelCopyWithImpl<$Res, _$DepositResponseModelImpl>
    implements _$$DepositResponseModelImplCopyWith<$Res> {
  __$$DepositResponseModelImplCopyWithImpl(_$DepositResponseModelImpl _value,
      $Res Function(_$DepositResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DepositResponseModelImpl(
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
              as DepositPageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepositResponseModelImpl implements _DepositResponseModel {
  const _$DepositResponseModelImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result});

  factory _$DepositResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepositResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'result')
  final DepositPageModel? result;

  @override
  String toString() {
    return 'DepositResponseModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositResponseModelImpl &&
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
  _$$DepositResponseModelImplCopyWith<_$DepositResponseModelImpl>
      get copyWith =>
          __$$DepositResponseModelImplCopyWithImpl<_$DepositResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepositResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DepositResponseModel implements DepositResponseModel {
  const factory _DepositResponseModel(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'result') final DepositPageModel? result}) =
      _$DepositResponseModelImpl;

  factory _DepositResponseModel.fromJson(Map<String, dynamic> json) =
      _$DepositResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'result')
  DepositPageModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$DepositResponseModelImplCopyWith<_$DepositResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
