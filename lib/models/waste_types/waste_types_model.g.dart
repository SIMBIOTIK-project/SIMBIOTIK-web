// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waste_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WasteTypesModelImpl _$$WasteTypesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WasteTypesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      price: json['price'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$WasteTypesModelImplToJson(
        _$WasteTypesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'price': instance.price,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
