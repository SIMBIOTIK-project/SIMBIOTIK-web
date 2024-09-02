// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalModelImpl _$$WithdrawalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalModelImpl(
      id: (json['id'] as num?)?.toInt(),
      idUser: json['id_user'] as String?,
      price: json['price'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WithdrawalModelImplToJson(
        _$WithdrawalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'price': instance.price,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };
