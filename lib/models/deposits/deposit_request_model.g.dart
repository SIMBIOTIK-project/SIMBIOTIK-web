// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepositRequestModelImpl _$$DepositRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DepositRequestModelImpl(
      idUser: json['id_user'] as String?,
      idWasteType: json['id_wastetype'] as String?,
      weight: json['weight'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$DepositRequestModelImplToJson(
        _$DepositRequestModelImpl instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'id_wastetype': instance.idWasteType,
      'weight': instance.weight,
      'price': instance.price,
    };
