// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceResponseModelImpl _$$BalanceResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BalanceResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['data'] == null
          ? null
          : BalanceModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BalanceResponseModelImplToJson(
        _$BalanceResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.result,
    };
