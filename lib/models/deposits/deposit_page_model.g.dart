// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepositPageModelImpl _$$DepositPageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DepositPageModelImpl(
      totalData: (json['total_data'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DepositModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DepositPageModelImplToJson(
        _$DepositPageModelImpl instance) =>
    <String, dynamic>{
      'total_data': instance.totalData,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total_pages': instance.totalPages,
      'data': instance.data,
    };
