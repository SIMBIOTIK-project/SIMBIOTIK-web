// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sodako_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SodakoRequestModelImpl _$$SodakoRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SodakoRequestModelImpl(
      idUser: json['id_user'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SodakoRequestModelImplToJson(
        _$SodakoRequestModelImpl instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'price': instance.price,
    };
