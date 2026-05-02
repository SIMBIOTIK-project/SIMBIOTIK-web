// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sodako_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SodakoResponseModelImpl _$$SodakoResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SodakoResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : SodakoPageModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SodakoResponseModelImplToJson(
        _$SodakoResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };
