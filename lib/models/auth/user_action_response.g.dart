// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_action_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserActionResponseImpl _$$UserActionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserActionResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      user: UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserActionResponseImplToJson(
        _$UserActionResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.user,
    };
