// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalResponseModelImpl _$$WithdrawalResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : WithdrawalPageModel.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WithdrawalResponseModelImplToJson(
        _$WithdrawalResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };
