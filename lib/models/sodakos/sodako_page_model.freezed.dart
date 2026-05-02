// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sodako_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SodakoPageModel _$SodakoPageModelFromJson(Map<String, dynamic> json) {
  return _SodakoPageModel.fromJson(json);
}

/// @nodoc
mixin _$SodakoPageModel {
  @JsonKey(name: 'total_data')
  int? get totalData => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<SodakoModel>? get data => throw _privateConstructorUsedError;

  /// Serializes this SodakoPageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SodakoPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SodakoPageModelCopyWith<SodakoPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SodakoPageModelCopyWith<$Res> {
  factory $SodakoPageModelCopyWith(
          SodakoPageModel value, $Res Function(SodakoPageModel) then) =
      _$SodakoPageModelCopyWithImpl<$Res, SodakoPageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'data') List<SodakoModel>? data});
}

/// @nodoc
class _$SodakoPageModelCopyWithImpl<$Res, $Val extends SodakoPageModel>
    implements $SodakoPageModelCopyWith<$Res> {
  _$SodakoPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SodakoPageModel
  /// with the given fields replaced by the non-null parameter values.
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
              as List<SodakoModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SodakoPageModelImplCopyWith<$Res>
    implements $SodakoPageModelCopyWith<$Res> {
  factory _$$SodakoPageModelImplCopyWith(_$SodakoPageModelImpl value,
          $Res Function(_$SodakoPageModelImpl) then) =
      __$$SodakoPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'data') List<SodakoModel>? data});
}

/// @nodoc
class __$$SodakoPageModelImplCopyWithImpl<$Res>
    extends _$SodakoPageModelCopyWithImpl<$Res, _$SodakoPageModelImpl>
    implements _$$SodakoPageModelImplCopyWith<$Res> {
  __$$SodakoPageModelImplCopyWithImpl(
      _$SodakoPageModelImpl _value, $Res Function(_$SodakoPageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SodakoPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalData = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SodakoPageModelImpl(
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
              as List<SodakoModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SodakoPageModelImpl implements _SodakoPageModel {
  const _$SodakoPageModelImpl(
      {@JsonKey(name: 'total_data') this.totalData,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'data') final List<SodakoModel>? data})
      : _data = data;

  factory _$SodakoPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SodakoPageModelImplFromJson(json);

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
  final List<SodakoModel>? _data;
  @override
  @JsonKey(name: 'data')
  List<SodakoModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SodakoPageModel(totalData: $totalData, currentPage: $currentPage, perPage: $perPage, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SodakoPageModelImpl &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalData, currentPage, perPage,
      totalPages, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SodakoPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SodakoPageModelImplCopyWith<_$SodakoPageModelImpl> get copyWith =>
      __$$SodakoPageModelImplCopyWithImpl<_$SodakoPageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SodakoPageModelImplToJson(
      this,
    );
  }
}

abstract class _SodakoPageModel implements SodakoPageModel {
  const factory _SodakoPageModel(
          {@JsonKey(name: 'total_data') final int? totalData,
          @JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'per_page') final int? perPage,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'data') final List<SodakoModel>? data}) =
      _$SodakoPageModelImpl;

  factory _SodakoPageModel.fromJson(Map<String, dynamic> json) =
      _$SodakoPageModelImpl.fromJson;

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
  List<SodakoModel>? get data;

  /// Create a copy of SodakoPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SodakoPageModelImplCopyWith<_$SodakoPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
