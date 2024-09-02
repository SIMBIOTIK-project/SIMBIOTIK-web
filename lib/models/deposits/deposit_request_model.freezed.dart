// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepositRequestModel _$DepositRequestModelFromJson(Map<String, dynamic> json) {
  return _DepositRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DepositRequestModel {
  @JsonKey(name: 'id_user')
  String? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_wastetype')
  String? get idWasteType => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositRequestModelCopyWith<DepositRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositRequestModelCopyWith<$Res> {
  factory $DepositRequestModelCopyWith(
          DepositRequestModel value, $Res Function(DepositRequestModel) then) =
      _$DepositRequestModelCopyWithImpl<$Res, DepositRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'id_wastetype') String? idWasteType,
      @JsonKey(name: 'weight') String? weight,
      @JsonKey(name: 'price') String? price});
}

/// @nodoc
class _$DepositRequestModelCopyWithImpl<$Res, $Val extends DepositRequestModel>
    implements $DepositRequestModelCopyWith<$Res> {
  _$DepositRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? idWasteType = freezed,
    Object? weight = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      idWasteType: freezed == idWasteType
          ? _value.idWasteType
          : idWasteType // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepositRequestModelImplCopyWith<$Res>
    implements $DepositRequestModelCopyWith<$Res> {
  factory _$$DepositRequestModelImplCopyWith(_$DepositRequestModelImpl value,
          $Res Function(_$DepositRequestModelImpl) then) =
      __$$DepositRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'id_wastetype') String? idWasteType,
      @JsonKey(name: 'weight') String? weight,
      @JsonKey(name: 'price') String? price});
}

/// @nodoc
class __$$DepositRequestModelImplCopyWithImpl<$Res>
    extends _$DepositRequestModelCopyWithImpl<$Res, _$DepositRequestModelImpl>
    implements _$$DepositRequestModelImplCopyWith<$Res> {
  __$$DepositRequestModelImplCopyWithImpl(_$DepositRequestModelImpl _value,
      $Res Function(_$DepositRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? idWasteType = freezed,
    Object? weight = freezed,
    Object? price = freezed,
  }) {
    return _then(_$DepositRequestModelImpl(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      idWasteType: freezed == idWasteType
          ? _value.idWasteType
          : idWasteType // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepositRequestModelImpl implements _DepositRequestModel {
  const _$DepositRequestModelImpl(
      {@JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'id_wastetype') this.idWasteType,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'price') this.price});

  factory _$DepositRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepositRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  @JsonKey(name: 'id_wastetype')
  final String? idWasteType;
  @override
  @JsonKey(name: 'weight')
  final String? weight;
  @override
  @JsonKey(name: 'price')
  final String? price;

  @override
  String toString() {
    return 'DepositRequestModel(idUser: $idUser, idWasteType: $idWasteType, weight: $weight, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositRequestModelImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.idWasteType, idWasteType) ||
                other.idWasteType == idWasteType) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idUser, idWasteType, weight, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositRequestModelImplCopyWith<_$DepositRequestModelImpl> get copyWith =>
      __$$DepositRequestModelImplCopyWithImpl<_$DepositRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepositRequestModelImplToJson(
      this,
    );
  }
}

abstract class _DepositRequestModel implements DepositRequestModel {
  const factory _DepositRequestModel(
      {@JsonKey(name: 'id_user') final String? idUser,
      @JsonKey(name: 'id_wastetype') final String? idWasteType,
      @JsonKey(name: 'weight') final String? weight,
      @JsonKey(name: 'price') final String? price}) = _$DepositRequestModelImpl;

  factory _DepositRequestModel.fromJson(Map<String, dynamic> json) =
      _$DepositRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_user')
  String? get idUser;
  @override
  @JsonKey(name: 'id_wastetype')
  String? get idWasteType;
  @override
  @JsonKey(name: 'weight')
  String? get weight;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(ignore: true)
  _$$DepositRequestModelImplCopyWith<_$DepositRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
