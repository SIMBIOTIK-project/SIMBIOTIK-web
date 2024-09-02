// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawals_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalsRequestModelImpl _$$WithdrawalsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalsRequestModelImpl(
      idUser: json['id_user'] as String?,
      price: json['price'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$WithdrawalsRequestModelImplToJson(
        _$WithdrawalsRequestModelImpl instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'price': instance.price,
      'status': instance.status,
    };
