// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sodako_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SodakoModelImpl _$$SodakoModelImplFromJson(Map<String, dynamic> json) =>
    _$SodakoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      idUser: json['id_user'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SodakoModelImplToJson(_$SodakoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'price': instance.price,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
