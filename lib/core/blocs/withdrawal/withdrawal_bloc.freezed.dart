// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WithdrawalEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WithdrawalsRequestModel request, String token)
        postWithdrawal,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, String? idUser)? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostWithdrawal value) postWithdrawal,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostWithdrawal value)? postWithdrawal,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostWithdrawal value)? postWithdrawal,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawalEventCopyWith<WithdrawalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalEventCopyWith<$Res> {
  factory $WithdrawalEventCopyWith(
          WithdrawalEvent value, $Res Function(WithdrawalEvent) then) =
      _$WithdrawalEventCopyWithImpl<$Res, WithdrawalEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$WithdrawalEventCopyWithImpl<$Res, $Val extends WithdrawalEvent>
    implements $WithdrawalEventCopyWith<$Res> {
  _$WithdrawalEventCopyWithImpl(this._value, this._then);

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
abstract class _$$PostWithdrawalImplCopyWith<$Res>
    implements $WithdrawalEventCopyWith<$Res> {
  factory _$$PostWithdrawalImplCopyWith(_$PostWithdrawalImpl value,
          $Res Function(_$PostWithdrawalImpl) then) =
      __$$PostWithdrawalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WithdrawalsRequestModel request, String token});

  $WithdrawalsRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$PostWithdrawalImplCopyWithImpl<$Res>
    extends _$WithdrawalEventCopyWithImpl<$Res, _$PostWithdrawalImpl>
    implements _$$PostWithdrawalImplCopyWith<$Res> {
  __$$PostWithdrawalImplCopyWithImpl(
      _$PostWithdrawalImpl _value, $Res Function(_$PostWithdrawalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? token = null,
  }) {
    return _then(_$PostWithdrawalImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as WithdrawalsRequestModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WithdrawalsRequestModelCopyWith<$Res> get request {
    return $WithdrawalsRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$PostWithdrawalImpl implements _PostWithdrawal {
  const _$PostWithdrawalImpl({required this.request, required this.token});

  @override
  final WithdrawalsRequestModel request;
  @override
  final String token;

  @override
  String toString() {
    return 'WithdrawalEvent.postWithdrawal(request: $request, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostWithdrawalImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostWithdrawalImplCopyWith<_$PostWithdrawalImpl> get copyWith =>
      __$$PostWithdrawalImplCopyWithImpl<_$PostWithdrawalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WithdrawalsRequestModel request, String token)
        postWithdrawal,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) {
    return postWithdrawal(request, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) {
    return postWithdrawal?.call(request, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
    TResult Function(String token, String? idUser, int? page)? fetch,
    TResult Function(String token, String? idUser)? fetchAll,
    required TResult orElse(),
  }) {
    if (postWithdrawal != null) {
      return postWithdrawal(request, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostWithdrawal value) postWithdrawal,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    return postWithdrawal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostWithdrawal value)? postWithdrawal,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    return postWithdrawal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostWithdrawal value)? postWithdrawal,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) {
    if (postWithdrawal != null) {
      return postWithdrawal(this);
    }
    return orElse();
  }
}

abstract class _PostWithdrawal implements WithdrawalEvent {
  const factory _PostWithdrawal(
      {required final WithdrawalsRequestModel request,
      required final String token}) = _$PostWithdrawalImpl;

  WithdrawalsRequestModel get request;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$PostWithdrawalImplCopyWith<_$PostWithdrawalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res>
    implements $WithdrawalEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? idUser, int? page});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$WithdrawalEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'WithdrawalEvent.fetch(token: $token, idUser: $idUser, page: $page)';
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
    required TResult Function(WithdrawalsRequestModel request, String token)
        postWithdrawal,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) {
    return fetch(token, idUser, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) {
    return fetch?.call(token, idUser, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
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
    required TResult Function(_PostWithdrawal value) postWithdrawal,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostWithdrawal value)? postWithdrawal,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostWithdrawal value)? postWithdrawal,
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

abstract class _Fetch implements WithdrawalEvent {
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
    implements $WithdrawalEventCopyWith<$Res> {
  factory _$$FetchAllImplCopyWith(
          _$FetchAllImpl value, $Res Function(_$FetchAllImpl) then) =
      __$$FetchAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? idUser});
}

/// @nodoc
class __$$FetchAllImplCopyWithImpl<$Res>
    extends _$WithdrawalEventCopyWithImpl<$Res, _$FetchAllImpl>
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
    return 'WithdrawalEvent.fetchAll(token: $token, idUser: $idUser)';
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
    required TResult Function(WithdrawalsRequestModel request, String token)
        postWithdrawal,
    required TResult Function(String token, String? idUser, int? page) fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) {
    return fetchAll(token, idUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
    TResult? Function(String token, String? idUser, int? page)? fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) {
    return fetchAll?.call(token, idUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WithdrawalsRequestModel request, String token)?
        postWithdrawal,
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
    required TResult Function(_PostWithdrawal value) postWithdrawal,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostWithdrawal value)? postWithdrawal,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostWithdrawal value)? postWithdrawal,
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

abstract class _FetchAll implements WithdrawalEvent {
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
mixin _$WithdrawalState {
  WithdrawalStateStatus get status => throw _privateConstructorUsedError;
  WithdrawalResponseModel? get data => throw _privateConstructorUsedError;
  List<WithdrawalModel>? get allData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawalStateCopyWith<WithdrawalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalStateCopyWith<$Res> {
  factory $WithdrawalStateCopyWith(
          WithdrawalState value, $Res Function(WithdrawalState) then) =
      _$WithdrawalStateCopyWithImpl<$Res, WithdrawalState>;
  @useResult
  $Res call(
      {WithdrawalStateStatus status,
      WithdrawalResponseModel? data,
      List<WithdrawalModel>? allData,
      String? error});

  $WithdrawalResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$WithdrawalStateCopyWithImpl<$Res, $Val extends WithdrawalState>
    implements $WithdrawalStateCopyWith<$Res> {
  _$WithdrawalStateCopyWithImpl(this._value, this._then);

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
              as WithdrawalStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalResponseModel?,
      allData: freezed == allData
          ? _value.allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WithdrawalResponseModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WithdrawalResponseModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WithdrawalStateImplCopyWith<$Res>
    implements $WithdrawalStateCopyWith<$Res> {
  factory _$$WithdrawalStateImplCopyWith(_$WithdrawalStateImpl value,
          $Res Function(_$WithdrawalStateImpl) then) =
      __$$WithdrawalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WithdrawalStateStatus status,
      WithdrawalResponseModel? data,
      List<WithdrawalModel>? allData,
      String? error});

  @override
  $WithdrawalResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WithdrawalStateImplCopyWithImpl<$Res>
    extends _$WithdrawalStateCopyWithImpl<$Res, _$WithdrawalStateImpl>
    implements _$$WithdrawalStateImplCopyWith<$Res> {
  __$$WithdrawalStateImplCopyWithImpl(
      _$WithdrawalStateImpl _value, $Res Function(_$WithdrawalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? allData = freezed,
    Object? error = freezed,
  }) {
    return _then(_$WithdrawalStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WithdrawalStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalResponseModel?,
      allData: freezed == allData
          ? _value._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WithdrawalStateImpl implements _WithdrawalState {
  const _$WithdrawalStateImpl(
      {this.status = WithdrawalStateStatus.initial,
      this.data,
      final List<WithdrawalModel>? allData,
      this.error = ''})
      : _allData = allData;

  @override
  @JsonKey()
  final WithdrawalStateStatus status;
  @override
  final WithdrawalResponseModel? data;
  final List<WithdrawalModel>? _allData;
  @override
  List<WithdrawalModel>? get allData {
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
    return 'WithdrawalState(status: $status, data: $data, allData: $allData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalStateImpl &&
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
  _$$WithdrawalStateImplCopyWith<_$WithdrawalStateImpl> get copyWith =>
      __$$WithdrawalStateImplCopyWithImpl<_$WithdrawalStateImpl>(
          this, _$identity);
}

abstract class _WithdrawalState implements WithdrawalState {
  const factory _WithdrawalState(
      {final WithdrawalStateStatus status,
      final WithdrawalResponseModel? data,
      final List<WithdrawalModel>? allData,
      final String? error}) = _$WithdrawalStateImpl;

  @override
  WithdrawalStateStatus get status;
  @override
  WithdrawalResponseModel? get data;
  @override
  List<WithdrawalModel>? get allData;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalStateImplCopyWith<_$WithdrawalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
