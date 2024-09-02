// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waste_type_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WasteTypeResponseModelImpl _$$WasteTypeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WasteTypeResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : WasteTypePageModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WasteTypeResponseModelImplToJson(
        _$WasteTypeResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };
