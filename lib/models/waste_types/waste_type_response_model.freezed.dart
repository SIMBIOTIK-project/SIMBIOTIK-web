// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waste_type_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WasteTypeResponseModel _$WasteTypeResponseModelFromJson(
    Map<String, dynamic> json) {
  return _WasteTypeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WasteTypeResponseModel {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  WasteTypePageModel? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WasteTypeResponseModelCopyWith<WasteTypeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WasteTypeResponseModelCopyWith<$Res> {
  factory $WasteTypeResponseModelCopyWith(WasteTypeResponseModel value,
          $Res Function(WasteTypeResponseModel) then) =
      _$WasteTypeResponseModelCopyWithImpl<$Res, WasteTypeResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') WasteTypePageModel? result});

  $WasteTypePageModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$WasteTypeResponseModelCopyWithImpl<$Res,
        $Val extends WasteTypeResponseModel>
    implements $WasteTypeResponseModelCopyWith<$Res> {
  _$WasteTypeResponseModelCopyWithImpl(this._value, this._then);

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
              as WasteTypePageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WasteTypePageModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $WasteTypePageModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WasteTypeResponseModelImplCopyWith<$Res>
    implements $WasteTypeResponseModelCopyWith<$Res> {
  factory _$$WasteTypeResponseModelImplCopyWith(
          _$WasteTypeResponseModelImpl value,
          $Res Function(_$WasteTypeResponseModelImpl) then) =
      __$$WasteTypeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') WasteTypePageModel? result});

  @override
  $WasteTypePageModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$WasteTypeResponseModelImplCopyWithImpl<$Res>
    extends _$WasteTypeResponseModelCopyWithImpl<$Res,
        _$WasteTypeResponseModelImpl>
    implements _$$WasteTypeResponseModelImplCopyWith<$Res> {
  __$$WasteTypeResponseModelImplCopyWithImpl(
      _$WasteTypeResponseModelImpl _value,
      $Res Function(_$WasteTypeResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WasteTypeResponseModelImpl(
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
              as WasteTypePageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WasteTypeResponseModelImpl implements _WasteTypeResponseModel {
  const _$WasteTypeResponseModelImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result});

  factory _$WasteTypeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WasteTypeResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'result')
  final WasteTypePageModel? result;

  @override
  String toString() {
    return 'WasteTypeResponseModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WasteTypeResponseModelImpl &&
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
  _$$WasteTypeResponseModelImplCopyWith<_$WasteTypeResponseModelImpl>
      get copyWith => __$$WasteTypeResponseModelImplCopyWithImpl<
          _$WasteTypeResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WasteTypeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WasteTypeResponseModel implements WasteTypeResponseModel {
  const factory _WasteTypeResponseModel(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'result') final WasteTypePageModel? result}) =
      _$WasteTypeResponseModelImpl;

  factory _WasteTypeResponseModel.fromJson(Map<String, dynamic> json) =
      _$WasteTypeResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'result')
  WasteTypePageModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$WasteTypeResponseModelImplCopyWith<_$WasteTypeResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
