// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sodako_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SodakoEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, SodakoRequestModel request) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, SodakoRequestModel request)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, SodakoRequestModel request)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SodakoEventCopyWith<SodakoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SodakoEventCopyWith<$Res> {
  factory $SodakoEventCopyWith(
          SodakoEvent value, $Res Function(SodakoEvent) then) =
      _$SodakoEventCopyWithImpl<$Res, SodakoEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$SodakoEventCopyWithImpl<$Res, $Val extends SodakoEvent>
    implements $SodakoEventCopyWith<$Res> {
  _$SodakoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res>
    implements $SodakoEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? idUser, int? page});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$SodakoEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? idUser = freezed,
    Object? page = freezed,
  }) {
    return _then(_$FetchImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({required this.token, this.idUser, this.page});

  @override
  final String token;
  @override
  final String? idUser;
  @override
  final int? page;

  @override
  String toString() {
    return 'SodakoEvent.fetch(token: $token, idUser: $idUser, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, idUser, page);

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, SodakoRequestModel request) create,
  }) {
    return fetch(token, idUser, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, SodakoRequestModel request)? create,
  }) {
    return fetch?.call(token, idUser, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, SodakoRequestModel request)? create,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(token, idUser, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements SodakoEvent {
  const factory _Fetch(
      {required final String token,
      final String? idUser,
      final int? page}) = _$FetchImpl;

  @override
  String get token;
  String? get idUser;
  int? get page;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res>
    implements $SodakoEventCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, SodakoRequestModel request});

  $SodakoRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$SodakoEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? request = null,
  }) {
    return _then(_$CreateImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SodakoRequestModel,
    ));
  }

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SodakoRequestModelCopyWith<$Res> get request {
    return $SodakoRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl({required this.token, required this.request});

  @override
  final String token;
  @override
  final SodakoRequestModel request;

  @override
  String toString() {
    return 'SodakoEvent.create(token: $token, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, request);

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, SodakoRequestModel request) create,
  }) {
    return create(token, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, SodakoRequestModel request)? create,
  }) {
    return create?.call(token, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, SodakoRequestModel request)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(token, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements SodakoEvent {
  const factory _Create(
      {required final String token,
      required final SodakoRequestModel request}) = _$CreateImpl;

  @override
  String get token;
  SodakoRequestModel get request;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SodakoState {
  SodakoStateStatus get status => throw _privateConstructorUsedError;
  SodakoResponseModel? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SodakoStateCopyWith<SodakoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SodakoStateCopyWith<$Res> {
  factory $SodakoStateCopyWith(
          SodakoState value, $Res Function(SodakoState) then) =
      _$SodakoStateCopyWithImpl<$Res, SodakoState>;
  @useResult
  $Res call(
      {SodakoStateStatus status, SodakoResponseModel? data, String? error});

  $SodakoResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SodakoStateCopyWithImpl<$Res, $Val extends SodakoState>
    implements $SodakoStateCopyWith<$Res> {
  _$SodakoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SodakoStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SodakoResponseModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SodakoResponseModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SodakoResponseModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SodakoStateImplCopyWith<$Res>
    implements $SodakoStateCopyWith<$Res> {
  factory _$$SodakoStateImplCopyWith(
          _$SodakoStateImpl value, $Res Function(_$SodakoStateImpl) then) =
      __$$SodakoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SodakoStateStatus status, SodakoResponseModel? data, String? error});

  @override
  $SodakoResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SodakoStateImplCopyWithImpl<$Res>
    extends _$SodakoStateCopyWithImpl<$Res, _$SodakoStateImpl>
    implements _$$SodakoStateImplCopyWith<$Res> {
  __$$SodakoStateImplCopyWithImpl(
      _$SodakoStateImpl _value, $Res Function(_$SodakoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$SodakoStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SodakoStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SodakoResponseModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SodakoStateImpl implements _SodakoState {
  const _$SodakoStateImpl(
      {this.status = SodakoStateStatus.initial, this.data, this.error = ''});

  @override
  @JsonKey()
  final SodakoStateStatus status;
  @override
  final SodakoResponseModel? data;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'SodakoState(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SodakoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, error);

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SodakoStateImplCopyWith<_$SodakoStateImpl> get copyWith =>
      __$$SodakoStateImplCopyWithImpl<_$SodakoStateImpl>(this, _$identity);
}

abstract class _SodakoState implements SodakoState {
  const factory _SodakoState(
      {final SodakoStateStatus status,
      final SodakoResponseModel? data,
      final String? error}) = _$SodakoStateImpl;

  @override
  SodakoStateStatus get status;
  @override
  SodakoResponseModel? get data;
  @override
  String? get error;

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SodakoStateImplCopyWith<_$SodakoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
