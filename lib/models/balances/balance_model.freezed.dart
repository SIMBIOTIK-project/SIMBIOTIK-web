// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BalanceModel _$BalanceModelFromJson(Map<String, dynamic> json) {
  return _BalanceModel.fromJson(json);
}

/// @nodoc
mixin _$BalanceModel {
  @JsonKey(name: 'saldo')
  double? get saldo => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_deposit')
  double? get totalDeposit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_withdrawal')
  double? get totalWithdrawal => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_sodako')
  double? get totalSodako => throw _privateConstructorUsedError;

  /// Serializes this BalanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BalanceModelCopyWith<BalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceModelCopyWith<$Res> {
  factory $BalanceModelCopyWith(
          BalanceModel value, $Res Function(BalanceModel) then) =
      _$BalanceModelCopyWithImpl<$Res, BalanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'saldo') double? saldo,
      @JsonKey(name: 'total_deposit') double? totalDeposit,
      @JsonKey(name: 'total_withdrawal') double? totalWithdrawal,
      @JsonKey(name: 'total_sodako') double? totalSodako});
}

/// @nodoc
class _$BalanceModelCopyWithImpl<$Res, $Val extends BalanceModel>
    implements $BalanceModelCopyWith<$Res> {
  _$BalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saldo = freezed,
    Object? totalDeposit = freezed,
    Object? totalWithdrawal = freezed,
    Object? totalSodako = freezed,
  }) {
    return _then(_value.copyWith(
      saldo: freezed == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDeposit: freezed == totalDeposit
          ? _value.totalDeposit
          : totalDeposit // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithdrawal: freezed == totalWithdrawal
          ? _value.totalWithdrawal
          : totalWithdrawal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSodako: freezed == totalSodako
          ? _value.totalSodako
          : totalSodako // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceModelImplCopyWith<$Res>
    implements $BalanceModelCopyWith<$Res> {
  factory _$$BalanceModelImplCopyWith(
          _$BalanceModelImpl value, $Res Function(_$BalanceModelImpl) then) =
      __$$BalanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'saldo') double? saldo,
      @JsonKey(name: 'total_deposit') double? totalDeposit,
      @JsonKey(name: 'total_withdrawal') double? totalWithdrawal,
      @JsonKey(name: 'total_sodako') double? totalSodako});
}

/// @nodoc
class __$$BalanceModelImplCopyWithImpl<$Res>
    extends _$BalanceModelCopyWithImpl<$Res, _$BalanceModelImpl>
    implements _$$BalanceModelImplCopyWith<$Res> {
  __$$BalanceModelImplCopyWithImpl(
      _$BalanceModelImpl _value, $Res Function(_$BalanceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saldo = freezed,
    Object? totalDeposit = freezed,
    Object? totalWithdrawal = freezed,
    Object? totalSodako = freezed,
  }) {
    return _then(_$BalanceModelImpl(
      saldo: freezed == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDeposit: freezed == totalDeposit
          ? _value.totalDeposit
          : totalDeposit // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithdrawal: freezed == totalWithdrawal
          ? _value.totalWithdrawal
          : totalWithdrawal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSodako: freezed == totalSodako
          ? _value.totalSodako
          : totalSodako // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceModelImpl implements _BalanceModel {
  const _$BalanceModelImpl(
      {@JsonKey(name: 'saldo') this.saldo,
      @JsonKey(name: 'total_deposit') this.totalDeposit,
      @JsonKey(name: 'total_withdrawal') this.totalWithdrawal,
      @JsonKey(name: 'total_sodako') this.totalSodako});

  factory _$BalanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'saldo')
  final double? saldo;
  @override
  @JsonKey(name: 'total_deposit')
  final double? totalDeposit;
  @override
  @JsonKey(name: 'total_withdrawal')
  final double? totalWithdrawal;
  @override
  @JsonKey(name: 'total_sodako')
  final double? totalSodako;

  @override
  String toString() {
    return 'BalanceModel(saldo: $saldo, totalDeposit: $totalDeposit, totalWithdrawal: $totalWithdrawal, totalSodako: $totalSodako)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceModelImpl &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.totalDeposit, totalDeposit) ||
                other.totalDeposit == totalDeposit) &&
            (identical(other.totalWithdrawal, totalWithdrawal) ||
                other.totalWithdrawal == totalWithdrawal) &&
            (identical(other.totalSodako, totalSodako) ||
                other.totalSodako == totalSodako));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, saldo, totalDeposit, totalWithdrawal, totalSodako);

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceModelImplCopyWith<_$BalanceModelImpl> get copyWith =>
      __$$BalanceModelImplCopyWithImpl<_$BalanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceModelImplToJson(
      this,
    );
  }
}

abstract class _BalanceModel implements BalanceModel {
  const factory _BalanceModel(
          {@JsonKey(name: 'saldo') final double? saldo,
          @JsonKey(name: 'total_deposit') final double? totalDeposit,
          @JsonKey(name: 'total_withdrawal') final double? totalWithdrawal,
          @JsonKey(name: 'total_sodako') final double? totalSodako}) =
      _$BalanceModelImpl;

  factory _BalanceModel.fromJson(Map<String, dynamic> json) =
      _$BalanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'saldo')
  double? get saldo;
  @override
  @JsonKey(name: 'total_deposit')
  double? get totalDeposit;
  @override
  @JsonKey(name: 'total_withdrawal')
  double? get totalWithdrawal;
  @override
  @JsonKey(name: 'total_sodako')
  double? get totalSodako;

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BalanceModelImplCopyWith<_$BalanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
