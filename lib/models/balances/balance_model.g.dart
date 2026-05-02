// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceModelImpl _$$BalanceModelImplFromJson(Map<String, dynamic> json) =>
    _$BalanceModelImpl(
      saldo: (json['saldo'] as num?)?.toDouble(),
      totalDeposit: (json['total_deposit'] as num?)?.toDouble(),
      totalWithdrawal: (json['total_withdrawal'] as num?)?.toDouble(),
      totalSodako: (json['total_sodako'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BalanceModelImplToJson(_$BalanceModelImpl instance) =>
    <String, dynamic>{
      'saldo': instance.saldo,
      'total_deposit': instance.totalDeposit,
      'total_withdrawal': instance.totalWithdrawal,
      'total_sodako': instance.totalSodako,
    };
