// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawalModel _$WithdrawalModelFromJson(Map<String, dynamic> json) {
  return _WithdrawalModel.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  String? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalModelCopyWith<WithdrawalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalModelCopyWith<$Res> {
  factory $WithdrawalModelCopyWith(
          WithdrawalModel value, $Res Function(WithdrawalModel) then) =
      _$WithdrawalModelCopyWithImpl<$Res, WithdrawalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'created_by') String? createdBy});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$WithdrawalModelCopyWithImpl<$Res, $Val extends WithdrawalModel>
    implements $WithdrawalModelCopyWith<$Res> {
  _$WithdrawalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WithdrawalModelImplCopyWith<$Res>
    implements $WithdrawalModelCopyWith<$Res> {
  factory _$$WithdrawalModelImplCopyWith(_$WithdrawalModelImpl value,
          $Res Function(_$WithdrawalModelImpl) then) =
      __$$WithdrawalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'created_by') String? createdBy});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$WithdrawalModelImplCopyWithImpl<$Res>
    extends _$WithdrawalModelCopyWithImpl<$Res, _$WithdrawalModelImpl>
    implements _$$WithdrawalModelImplCopyWith<$Res> {
  __$$WithdrawalModelImplCopyWithImpl(
      _$WithdrawalModelImpl _value, $Res Function(_$WithdrawalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$WithdrawalModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalModelImpl implements _WithdrawalModel {
  const _$WithdrawalModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'created_by') this.createdBy});

  factory _$WithdrawalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
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
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'user')
  final UserModel? user;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;

  @override
  String toString() {
    return 'WithdrawalModel(id: $id, idUser: $idUser, price: $price, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idUser, price, status,
      createdAt, updatedAt, user, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalModelImplCopyWith<_$WithdrawalModelImpl> get copyWith =>
      __$$WithdrawalModelImplCopyWithImpl<_$WithdrawalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalModelImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalModel implements WithdrawalModel {
  const factory _WithdrawalModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'id_user') final String? idUser,
          @JsonKey(name: 'price') final String? price,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'user') final UserModel? user,
          @JsonKey(name: 'created_by') final String? createdBy}) =
      _$WithdrawalModelImpl;

  factory _WithdrawalModel.fromJson(Map<String, dynamic> json) =
      _$WithdrawalModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
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
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'user')
  UserModel? get user;
  @override
  @JsonKey(name: 'created_by')
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalModelImplCopyWith<_$WithdrawalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
