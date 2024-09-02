// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawalPageModel _$WithdrawalPageModelFromJson(Map<String, dynamic> json) {
  return _WithdrawalPageModel.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalPageModel {
  @JsonKey(name: 'total_data')
  int? get totalData => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<WithdrawalModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalPageModelCopyWith<WithdrawalPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalPageModelCopyWith<$Res> {
  factory $WithdrawalPageModelCopyWith(
          WithdrawalPageModel value, $Res Function(WithdrawalPageModel) then) =
      _$WithdrawalPageModelCopyWithImpl<$Res, WithdrawalPageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'data') List<WithdrawalModel>? data});
}

/// @nodoc
class _$WithdrawalPageModelCopyWithImpl<$Res, $Val extends WithdrawalPageModel>
    implements $WithdrawalPageModelCopyWith<$Res> {
  _$WithdrawalPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalData = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawalPageModelImplCopyWith<$Res>
    implements $WithdrawalPageModelCopyWith<$Res> {
  factory _$$WithdrawalPageModelImplCopyWith(_$WithdrawalPageModelImpl value,
          $Res Function(_$WithdrawalPageModelImpl) then) =
      __$$WithdrawalPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'data') List<WithdrawalModel>? data});
}

/// @nodoc
class __$$WithdrawalPageModelImplCopyWithImpl<$Res>
    extends _$WithdrawalPageModelCopyWithImpl<$Res, _$WithdrawalPageModelImpl>
    implements _$$WithdrawalPageModelImplCopyWith<$Res> {
  __$$WithdrawalPageModelImplCopyWithImpl(_$WithdrawalPageModelImpl _value,
      $Res Function(_$WithdrawalPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalData = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WithdrawalPageModelImpl(
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalPageModelImpl implements _WithdrawalPageModel {
  const _$WithdrawalPageModelImpl(
      {@JsonKey(name: 'total_data') this.totalData,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'data') final List<WithdrawalModel>? data})
      : _data = data;

  factory _$WithdrawalPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalPageModelImplFromJson(json);

  @override
  @JsonKey(name: 'total_data')
  final int? totalData;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final List<WithdrawalModel>? _data;
  @override
  @JsonKey(name: 'data')
  List<WithdrawalModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WithdrawalPageModel(totalData: $totalData, currentPage: $currentPage, perPage: $perPage, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalPageModelImpl &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalData, currentPage, perPage,
      totalPages, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalPageModelImplCopyWith<_$WithdrawalPageModelImpl> get copyWith =>
      __$$WithdrawalPageModelImplCopyWithImpl<_$WithdrawalPageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalPageModelImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalPageModel implements WithdrawalPageModel {
  const factory _WithdrawalPageModel(
          {@JsonKey(name: 'total_data') final int? totalData,
          @JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'per_page') final int? perPage,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'data') final List<WithdrawalModel>? data}) =
      _$WithdrawalPageModelImpl;

  factory _WithdrawalPageModel.fromJson(Map<String, dynamic> json) =
      _$WithdrawalPageModelImpl.fromJson;

  @override
  @JsonKey(name: 'total_data')
  int? get totalData;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'data')
  List<WithdrawalModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalPageModelImplCopyWith<_$WithdrawalPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
