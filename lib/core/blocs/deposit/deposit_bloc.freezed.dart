// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepositEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepositRequestModel request, String token)
        postDeposit,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepositRequestModel request, String token)? postDeposit,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepositRequestModel request, String token)? postDeposit,
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, String? idUser)? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostDeposit value) postDeposit,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostDeposit value)? postDeposit,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostDeposit value)? postDeposit,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepositEventCopyWith<DepositEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositEventCopyWith<$Res> {
  factory $DepositEventCopyWith(
          DepositEvent value, $Res Function(DepositEvent) then) =
      _$DepositEventCopyWithImpl<$Res, DepositEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$DepositEventCopyWithImpl<$Res, $Val extends DepositEvent>
    implements $DepositEventCopyWith<$Res> {
  _$DepositEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$PostDepositImplCopyWith<$Res>
    implements $DepositEventCopyWith<$Res> {
  factory _$$PostDepositImplCopyWith(
          _$PostDepositImpl value, $Res Function(_$PostDepositImpl) then) =
      __$$PostDepositImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DepositRequestModel request, String token});

  $DepositRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$PostDepositImplCopyWithImpl<$Res>
    extends _$DepositEventCopyWithImpl<$Res, _$PostDepositImpl>
    implements _$$PostDepositImplCopyWith<$Res> {
  __$$PostDepositImplCopyWithImpl(
      _$PostDepositImpl _value, $Res Function(_$PostDepositImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? token = null,
  }) {
    return _then(_$PostDepositImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as DepositRequestModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DepositRequestModelCopyWith<$Res> get request {
    return $DepositRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$PostDepositImpl implements _PostDeposit {
  const _$PostDepositImpl({required this.request, required this.token});

  @override
  final DepositRequestModel request;
  @override
  final String token;

  @override
  String toString() {
    return 'DepositEvent.postDeposit(request: $request, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDepositImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDepositImplCopyWith<_$PostDepositImpl> get copyWith =>
      __$$PostDepositImplCopyWithImpl<_$PostDepositImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepositRequestModel request, String token)
        postDeposit,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) {
    return postDeposit(request, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepositRequestModel request, String token)? postDeposit,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) {
    return postDeposit?.call(request, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepositRequestModel request, String token)? postDeposit,
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, String? idUser)? fetchAll,
    required TResult orElse(),
  }) {
    if (postDeposit != null) {
      return postDeposit(request, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostDeposit value) postDeposit,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    return postDeposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostDeposit value)? postDeposit,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    return postDeposit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostDeposit value)? postDeposit,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) {
    if (postDeposit != null) {
      return postDeposit(this);
    }
    return orElse();
  }
}

abstract class _PostDeposit implements DepositEvent {
  const factory _PostDeposit(
      {required final DepositRequestModel request,
      required final String token}) = _$PostDepositImpl;

  DepositRequestModel get request;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$PostDepositImplCopyWith<_$PostDepositImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res>
    implements $DepositEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? idUser, int? page});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$DepositEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

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
    return 'DepositEvent.fetch(token: $token, idUser: $idUser, page: $page)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepositRequestModel request, String token)
        postDeposit,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) {
    return fetch(token, idUser, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepositRequestModel request, String token)? postDeposit,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) {
    return fetch?.call(token, idUser, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepositRequestModel request, String token)? postDeposit,
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, String? idUser)? fetchAll,
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
    required TResult Function(_PostDeposit value) postDeposit,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostDeposit value)? postDeposit,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostDeposit value)? postDeposit,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements DepositEvent {
  const factory _Fetch(
      {required final String token,
      final String? idUser,
      final int? page}) = _$FetchImpl;

  @override
  String get token;
  String? get idUser;
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllImplCopyWith<$Res>
    implements $DepositEventCopyWith<$Res> {
  factory _$$FetchAllImplCopyWith(
          _$FetchAllImpl value, $Res Function(_$FetchAllImpl) then) =
      __$$FetchAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? idUser});
}

/// @nodoc
class __$$FetchAllImplCopyWithImpl<$Res>
    extends _$DepositEventCopyWithImpl<$Res, _$FetchAllImpl>
    implements _$$FetchAllImplCopyWith<$Res> {
  __$$FetchAllImplCopyWithImpl(
      _$FetchAllImpl _value, $Res Function(_$FetchAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? idUser = freezed,
  }) {
    return _then(_$FetchAllImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchAllImpl implements _FetchAll {
  const _$FetchAllImpl({required this.token, this.idUser});

  @override
  final String token;
  @override
  final String? idUser;

  @override
  String toString() {
    return 'DepositEvent.fetchAll(token: $token, idUser: $idUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, idUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllImplCopyWith<_$FetchAllImpl> get copyWith =>
      __$$FetchAllImplCopyWithImpl<_$FetchAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepositRequestModel request, String token)
        postDeposit,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) {
    return fetchAll(token, idUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepositRequestModel request, String token)? postDeposit,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) {
    return fetchAll?.call(token, idUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepositRequestModel request, String token)? postDeposit,
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, String? idUser)? fetchAll,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(token, idUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostDeposit value) postDeposit,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostDeposit value)? postDeposit,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostDeposit value)? postDeposit,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class _FetchAll implements DepositEvent {
  const factory _FetchAll({required final String token, final String? idUser}) =
      _$FetchAllImpl;

  @override
  String get token;
  String? get idUser;
  @override
  @JsonKey(ignore: true)
  _$$FetchAllImplCopyWith<_$FetchAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepositState {
  DepositStateStatus get status => throw _privateConstructorUsedError;
  DepositResponseModel? get data => throw _privateConstructorUsedError;
  List<DepositModel>? get allData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepositStateCopyWith<DepositState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositStateCopyWith<$Res> {
  factory $DepositStateCopyWith(
          DepositState value, $Res Function(DepositState) then) =
      _$DepositStateCopyWithImpl<$Res, DepositState>;
  @useResult
  $Res call(
      {DepositStateStatus status,
      DepositResponseModel? data,
      List<DepositModel>? allData,
      String? error});

  $DepositResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$DepositStateCopyWithImpl<$Res, $Val extends DepositState>
    implements $DepositStateCopyWith<$Res> {
  _$DepositStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? allData = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DepositStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DepositResponseModel?,
      allData: freezed == allData
          ? _value.allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<DepositModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepositResponseModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DepositResponseModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepositStateImplCopyWith<$Res>
    implements $DepositStateCopyWith<$Res> {
  factory _$$DepositStateImplCopyWith(
          _$DepositStateImpl value, $Res Function(_$DepositStateImpl) then) =
      __$$DepositStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DepositStateStatus status,
      DepositResponseModel? data,
      List<DepositModel>? allData,
      String? error});

  @override
  $DepositResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DepositStateImplCopyWithImpl<$Res>
    extends _$DepositStateCopyWithImpl<$Res, _$DepositStateImpl>
    implements _$$DepositStateImplCopyWith<$Res> {
  __$$DepositStateImplCopyWithImpl(
      _$DepositStateImpl _value, $Res Function(_$DepositStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? allData = freezed,
    Object? error = freezed,
  }) {
    return _then(_$DepositStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DepositStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DepositResponseModel?,
      allData: freezed == allData
          ? _value._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<DepositModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DepositStateImpl implements _DepositState {
  const _$DepositStateImpl(
      {this.status = DepositStateStatus.initial,
      this.data,
      final List<DepositModel>? allData,
      this.error = ''})
      : _allData = allData;

  @override
  @JsonKey()
  final DepositStateStatus status;
  @override
  final DepositResponseModel? data;
  final List<DepositModel>? _allData;
  @override
  List<DepositModel>? get allData {
    final value = _allData;
    if (value == null) return null;
    if (_allData is EqualUnmodifiableListView) return _allData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'DepositState(status: $status, data: $data, allData: $allData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._allData, _allData) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data,
      const DeepCollectionEquality().hash(_allData), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositStateImplCopyWith<_$DepositStateImpl> get copyWith =>
      __$$DepositStateImplCopyWithImpl<_$DepositStateImpl>(this, _$identity);
}

abstract class _DepositState implements DepositState {
  const factory _DepositState(
      {final DepositStateStatus status,
      final DepositResponseModel? data,
      final List<DepositModel>? allData,
      final String? error}) = _$DepositStateImpl;

  @override
  DepositStateStatus get status;
  @override
  DepositResponseModel? get data;
  @override
  List<DepositModel>? get allData;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$DepositStateImplCopyWith<_$DepositStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
