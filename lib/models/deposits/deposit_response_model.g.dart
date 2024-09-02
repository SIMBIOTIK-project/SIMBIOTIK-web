// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepositResponseModelImpl _$$DepositResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DepositResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : DepositPageModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DepositResponseModelImplToJson(
        _$DepositResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };
