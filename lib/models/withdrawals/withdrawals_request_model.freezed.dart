// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawals_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawalsRequestModel _$WithdrawalsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _WithdrawalsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalsRequestModel {
  @JsonKey(name: 'id_user')
  String? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalsRequestModelCopyWith<WithdrawalsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalsRequestModelCopyWith<$Res> {
  factory $WithdrawalsRequestModelCopyWith(WithdrawalsRequestModel value,
          $Res Function(WithdrawalsRequestModel) then) =
      _$WithdrawalsRequestModelCopyWithImpl<$Res, WithdrawalsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$WithdrawalsRequestModelCopyWithImpl<$Res,
        $Val extends WithdrawalsRequestModel>
    implements $WithdrawalsRequestModelCopyWith<$Res> {
  _$WithdrawalsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawalsRequestModelImplCopyWith<$Res>
    implements $WithdrawalsRequestModelCopyWith<$Res> {
  factory _$$WithdrawalsRequestModelImplCopyWith(
          _$WithdrawalsRequestModelImpl value,
          $Res Function(_$WithdrawalsRequestModelImpl) then) =
      __$$WithdrawalsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$WithdrawalsRequestModelImplCopyWithImpl<$Res>
    extends _$WithdrawalsRequestModelCopyWithImpl<$Res,
        _$WithdrawalsRequestModelImpl>
    implements _$$WithdrawalsRequestModelImplCopyWith<$Res> {
  __$$WithdrawalsRequestModelImplCopyWithImpl(
      _$WithdrawalsRequestModelImpl _value,
      $Res Function(_$WithdrawalsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_$WithdrawalsRequestModelImpl(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalsRequestModelImpl implements _WithdrawalsRequestModel {
  const _$WithdrawalsRequestModelImpl(
      {@JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'status') this.status});

  factory _$WithdrawalsRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'WithdrawalsRequestModel(idUser: $idUser, price: $price, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalsRequestModelImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUser, price, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalsRequestModelImplCopyWith<_$WithdrawalsRequestModelImpl>
      get copyWith => __$$WithdrawalsRequestModelImplCopyWithImpl<
          _$WithdrawalsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalsRequestModel implements WithdrawalsRequestModel {
  const factory _WithdrawalsRequestModel(
          {@JsonKey(name: 'id_user') final String? idUser,
          @JsonKey(name: 'price') final String? price,
          @JsonKey(name: 'status') final String? status}) =
      _$WithdrawalsRequestModelImpl;

  factory _WithdrawalsRequestModel.fromJson(Map<String, dynamic> json) =
      _$WithdrawalsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_user')
  String? get idUser;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalsRequestModelImplCopyWith<_$WithdrawalsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
