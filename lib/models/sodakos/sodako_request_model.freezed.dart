// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sodako_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SodakoRequestModel _$SodakoRequestModelFromJson(Map<String, dynamic> json) {
  return _SodakoRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SodakoRequestModel {
  @JsonKey(name: 'id_user')
  String? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;

  /// Serializes this SodakoRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SodakoRequestModelCopyWith<SodakoRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SodakoRequestModelCopyWith<$Res> {
  factory $SodakoRequestModelCopyWith(
          SodakoRequestModel value, $Res Function(SodakoRequestModel) then) =
      _$SodakoRequestModelCopyWithImpl<$Res, SodakoRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class _$SodakoRequestModelCopyWithImpl<$Res, $Val extends SodakoRequestModel>
    implements $SodakoRequestModelCopyWith<$Res> {
  _$SodakoRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SodakoRequestModelImplCopyWith<$Res>
    implements $SodakoRequestModelCopyWith<$Res> {
  factory _$$SodakoRequestModelImplCopyWith(_$SodakoRequestModelImpl value,
          $Res Function(_$SodakoRequestModelImpl) then) =
      __$$SodakoRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class __$$SodakoRequestModelImplCopyWithImpl<$Res>
    extends _$SodakoRequestModelCopyWithImpl<$Res, _$SodakoRequestModelImpl>
    implements _$$SodakoRequestModelImplCopyWith<$Res> {
  __$$SodakoRequestModelImplCopyWithImpl(_$SodakoRequestModelImpl _value,
      $Res Function(_$SodakoRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? price = freezed,
  }) {
    return _then(_$SodakoRequestModelImpl(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SodakoRequestModelImpl implements _SodakoRequestModel {
  const _$SodakoRequestModelImpl(
      {@JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'price') this.price});

  factory _$SodakoRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SodakoRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  @JsonKey(name: 'price')
  final double? price;

  @override
  String toString() {
    return 'SodakoRequestModel(idUser: $idUser, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SodakoRequestModelImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idUser, price);

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SodakoRequestModelImplCopyWith<_$SodakoRequestModelImpl> get copyWith =>
      __$$SodakoRequestModelImplCopyWithImpl<_$SodakoRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SodakoRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SodakoRequestModel implements SodakoRequestModel {
  const factory _SodakoRequestModel(
      {@JsonKey(name: 'id_user') final String? idUser,
      @JsonKey(name: 'price') final double? price}) = _$SodakoRequestModelImpl;

  factory _SodakoRequestModel.fromJson(Map<String, dynamic> json) =
      _$SodakoRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_user')
  String? get idUser;
  @override
  @JsonKey(name: 'price')
  double? get price;

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SodakoRequestModelImplCopyWith<_$SodakoRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
