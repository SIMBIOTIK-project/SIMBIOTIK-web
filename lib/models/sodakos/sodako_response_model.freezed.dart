// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sodako_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SodakoResponseModel _$SodakoResponseModelFromJson(Map<String, dynamic> json) {
  return _SodakoResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SodakoResponseModel {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  SodakoPageModel? get result => throw _privateConstructorUsedError;

  /// Serializes this SodakoResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SodakoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SodakoResponseModelCopyWith<SodakoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SodakoResponseModelCopyWith<$Res> {
  factory $SodakoResponseModelCopyWith(
          SodakoResponseModel value, $Res Function(SodakoResponseModel) then) =
      _$SodakoResponseModelCopyWithImpl<$Res, SodakoResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') SodakoPageModel? result});

  $SodakoPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$SodakoResponseModelCopyWithImpl<$Res, $Val extends SodakoResponseModel>
    implements $SodakoResponseModelCopyWith<$Res> {
  _$SodakoResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SodakoResponseModel
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
              as SodakoPageModel?,
    ) as $Val);
  }

  /// Create a copy of SodakoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SodakoPageModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $SodakoPageModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SodakoResponseModelImplCopyWith<$Res>
    implements $SodakoResponseModelCopyWith<$Res> {
  factory _$$SodakoResponseModelImplCopyWith(_$SodakoResponseModelImpl value,
          $Res Function(_$SodakoResponseModelImpl) then) =
      __$$SodakoResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') SodakoPageModel? result});

  @override
  $SodakoPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SodakoResponseModelImplCopyWithImpl<$Res>
    extends _$SodakoResponseModelCopyWithImpl<$Res, _$SodakoResponseModelImpl>
    implements _$$SodakoResponseModelImplCopyWith<$Res> {
  __$$SodakoResponseModelImplCopyWithImpl(_$SodakoResponseModelImpl _value,
      $Res Function(_$SodakoResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SodakoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SodakoResponseModelImpl(
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
              as SodakoPageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SodakoResponseModelImpl implements _SodakoResponseModel {
  const _$SodakoResponseModelImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result});

  factory _$SodakoResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SodakoResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'result')
  final SodakoPageModel? result;

  @override
  String toString() {
    return 'SodakoResponseModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SodakoResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of SodakoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SodakoResponseModelImplCopyWith<_$SodakoResponseModelImpl> get copyWith =>
      __$$SodakoResponseModelImplCopyWithImpl<_$SodakoResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SodakoResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SodakoResponseModel implements SodakoResponseModel {
  const factory _SodakoResponseModel(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'result') final SodakoPageModel? result}) =
      _$SodakoResponseModelImpl;

  factory _SodakoResponseModel.fromJson(Map<String, dynamic> json) =
      _$SodakoResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'result')
  SodakoPageModel? get result;

  /// Create a copy of SodakoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SodakoResponseModelImplCopyWith<_$SodakoResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
