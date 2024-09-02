// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepositModel _$DepositModelFromJson(Map<String, dynamic> json) {
  return _DepositModel.fromJson(json);
}

/// @nodoc
mixin _$DepositModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  String? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_wastetype')
  String? get idWastetype => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'wastetype')
  WasteTypesModel? get wasteType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositModelCopyWith<DepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositModelCopyWith<$Res> {
  factory $DepositModelCopyWith(
          DepositModel value, $Res Function(DepositModel) then) =
      _$DepositModelCopyWithImpl<$Res, DepositModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'id_wastetype') String? idWastetype,
      @JsonKey(name: 'weight') String? weight,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'wastetype') WasteTypesModel? wasteType});

  $UserModelCopyWith<$Res>? get user;
  $WasteTypesModelCopyWith<$Res>? get wasteType;
}

/// @nodoc
class _$DepositModelCopyWithImpl<$Res, $Val extends DepositModel>
    implements $DepositModelCopyWith<$Res> {
  _$DepositModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? idWastetype = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? wasteType = freezed,
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
      idWastetype: freezed == idWastetype
          ? _value.idWastetype
          : idWastetype // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
      wasteType: freezed == wasteType
          ? _value.wasteType
          : wasteType // ignore: cast_nullable_to_non_nullable
              as WasteTypesModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $WasteTypesModelCopyWith<$Res>? get wasteType {
    if (_value.wasteType == null) {
      return null;
    }

    return $WasteTypesModelCopyWith<$Res>(_value.wasteType!, (value) {
      return _then(_value.copyWith(wasteType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepositModelImplCopyWith<$Res>
    implements $DepositModelCopyWith<$Res> {
  factory _$$DepositModelImplCopyWith(
          _$DepositModelImpl value, $Res Function(_$DepositModelImpl) then) =
      __$$DepositModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'id_wastetype') String? idWastetype,
      @JsonKey(name: 'weight') String? weight,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'wastetype') WasteTypesModel? wasteType});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $WasteTypesModelCopyWith<$Res>? get wasteType;
}

/// @nodoc
class __$$DepositModelImplCopyWithImpl<$Res>
    extends _$DepositModelCopyWithImpl<$Res, _$DepositModelImpl>
    implements _$$DepositModelImplCopyWith<$Res> {
  __$$DepositModelImplCopyWithImpl(
      _$DepositModelImpl _value, $Res Function(_$DepositModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? idWastetype = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? wasteType = freezed,
  }) {
    return _then(_$DepositModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      idWastetype: freezed == idWastetype
          ? _value.idWastetype
          : idWastetype // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
      wasteType: freezed == wasteType
          ? _value.wasteType
          : wasteType // ignore: cast_nullable_to_non_nullable
              as WasteTypesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepositModelImpl implements _DepositModel {
  const _$DepositModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'id_wastetype') this.idWastetype,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'wastetype') this.wasteType});

  factory _$DepositModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepositModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  @JsonKey(name: 'id_wastetype')
  final String? idWastetype;
  @override
  @JsonKey(name: 'weight')
  final String? weight;
  @override
  @JsonKey(name: 'price')
  final String? price;
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
  @JsonKey(name: 'wastetype')
  final WasteTypesModel? wasteType;

  @override
  String toString() {
    return 'DepositModel(id: $id, idUser: $idUser, idWastetype: $idWastetype, weight: $weight, price: $price, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, wasteType: $wasteType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.idWastetype, idWastetype) ||
                other.idWastetype == idWastetype) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.wasteType, wasteType) ||
                other.wasteType == wasteType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idUser, idWastetype, weight,
      price, createdAt, updatedAt, user, wasteType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositModelImplCopyWith<_$DepositModelImpl> get copyWith =>
      __$$DepositModelImplCopyWithImpl<_$DepositModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepositModelImplToJson(
      this,
    );
  }
}

abstract class _DepositModel implements DepositModel {
  const factory _DepositModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'id_user') final String? idUser,
          @JsonKey(name: 'id_wastetype') final String? idWastetype,
          @JsonKey(name: 'weight') final String? weight,
          @JsonKey(name: 'price') final String? price,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'user') final UserModel? user,
          @JsonKey(name: 'wastetype') final WasteTypesModel? wasteType}) =
      _$DepositModelImpl;

  factory _DepositModel.fromJson(Map<String, dynamic> json) =
      _$DepositModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'id_user')
  String? get idUser;
  @override
  @JsonKey(name: 'id_wastetype')
  String? get idWastetype;
  @override
  @JsonKey(name: 'weight')
  String? get weight;
  @override
  @JsonKey(name: 'price')
  String? get price;
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
  @JsonKey(name: 'wastetype')
  WasteTypesModel? get wasteType;
  @override
  @JsonKey(ignore: true)
  _$$DepositModelImplCopyWith<_$DepositModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
