// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String? status, String? name, int? page)
        fetch,
    required TResult Function(String token, String? status, String? name)
        fetchAll,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)
        edit,
    required TResult Function(String id, String token) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult? Function(String token, String? status, String? name)? fetchAll,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult? Function(String id, String token)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult Function(String token, String? status, String? name)? fetchAll,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchImplCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? status, String? name, int? page});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? status = freezed,
    Object? name = freezed,
    Object? page = freezed,
  }) {
    return _then(_$FetchImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  const _$FetchImpl({required this.token, this.status, this.name, this.page});

  @override
  final String token;
  @override
  final String? status;
  @override
  final String? name;
  @override
  final int? page;

  @override
  String toString() {
    return 'UserEvent.fetch(token: $token, status: $status, name: $name, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, status, name, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String? status, String? name, int? page)
        fetch,
    required TResult Function(String token, String? status, String? name)
        fetchAll,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return fetch(token, status, name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult? Function(String token, String? status, String? name)? fetchAll,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return fetch?.call(token, status, name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult Function(String token, String? status, String? name)? fetchAll,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(token, status, name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements UserEvent {
  const factory _Fetch(
      {required final String token,
      final String? status,
      final String? name,
      final int? page}) = _$FetchImpl;

  @override
  String get token;
  String? get status;
  String? get name;
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllImplCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$FetchAllImplCopyWith(
          _$FetchAllImpl value, $Res Function(_$FetchAllImpl) then) =
      __$$FetchAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? status, String? name});
}

/// @nodoc
class __$$FetchAllImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FetchAllImpl>
    implements _$$FetchAllImplCopyWith<$Res> {
  __$$FetchAllImplCopyWithImpl(
      _$FetchAllImpl _value, $Res Function(_$FetchAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? status = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FetchAllImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchAllImpl implements _FetchAll {
  const _$FetchAllImpl({required this.token, this.status, this.name});

  @override
  final String token;
  @override
  final String? status;
  @override
  final String? name;

  @override
  String toString() {
    return 'UserEvent.fetchAll(token: $token, status: $status, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, status, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllImplCopyWith<_$FetchAllImpl> get copyWith =>
      __$$FetchAllImplCopyWithImpl<_$FetchAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String? status, String? name, int? page)
        fetch,
    required TResult Function(String token, String? status, String? name)
        fetchAll,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return fetchAll(token, status, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult? Function(String token, String? status, String? name)? fetchAll,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return fetchAll?.call(token, status, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult Function(String token, String? status, String? name)? fetchAll,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(token, status, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class _FetchAll implements UserEvent {
  const factory _FetchAll(
      {required final String token,
      final String? status,
      final String? name}) = _$FetchAllImpl;

  @override
  String get token;
  String? get status;
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$FetchAllImplCopyWith<_$FetchAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchIdImplCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$FetchIdImplCopyWith(
          _$FetchIdImpl value, $Res Function(_$FetchIdImpl) then) =
      __$$FetchIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? id});
}

/// @nodoc
class __$$FetchIdImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FetchIdImpl>
    implements _$$FetchIdImplCopyWith<$Res> {
  __$$FetchIdImplCopyWithImpl(
      _$FetchIdImpl _value, $Res Function(_$FetchIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? id = freezed,
  }) {
    return _then(_$FetchIdImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchIdImpl implements _FetchId {
  const _$FetchIdImpl({required this.token, this.id});

  @override
  final String token;
  @override
  final String? id;

  @override
  String toString() {
    return 'UserEvent.fetchId(token: $token, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchIdImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchIdImplCopyWith<_$FetchIdImpl> get copyWith =>
      __$$FetchIdImplCopyWithImpl<_$FetchIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String? status, String? name, int? page)
        fetch,
    required TResult Function(String token, String? status, String? name)
        fetchAll,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return fetchId(token, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult? Function(String token, String? status, String? name)? fetchAll,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return fetchId?.call(token, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult Function(String token, String? status, String? name)? fetchAll,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (fetchId != null) {
      return fetchId(token, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return fetchId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetchId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetchId != null) {
      return fetchId(this);
    }
    return orElse();
  }
}

abstract class _FetchId implements UserEvent {
  const factory _FetchId({required final String token, final String? id}) =
      _$FetchIdImpl;

  @override
  String get token;
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$FetchIdImplCopyWith<_$FetchIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$$EditImplCopyWith(
          _$EditImpl value, $Res Function(_$EditImpl) then) =
      __$$EditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String id,
      String name,
      String email,
      String password,
      String passwordConfirmation,
      String nik,
      String phoneNumber,
      String address,
      String status});
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? nik = null,
    Object? phoneNumber = null,
    Object? address = null,
    Object? status = null,
  }) {
    return _then(_$EditImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditImpl implements _Edit {
  const _$EditImpl(
      {required this.token,
      required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.passwordConfirmation,
      required this.nik,
      required this.phoneNumber,
      required this.address,
      required this.status});

  @override
  final String token;
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordConfirmation;
  @override
  final String nik;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  final String status;

  @override
  String toString() {
    return 'UserEvent.edit(token: $token, id: $id, name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, nik: $nik, phoneNumber: $phoneNumber, address: $address, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, id, name, email, password,
      passwordConfirmation, nik, phoneNumber, address, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      __$$EditImplCopyWithImpl<_$EditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String? status, String? name, int? page)
        fetch,
    required TResult Function(String token, String? status, String? name)
        fetchAll,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return edit(token, id, name, email, password, passwordConfirmation, nik,
        phoneNumber, address, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult? Function(String token, String? status, String? name)? fetchAll,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return edit?.call(token, id, name, email, password, passwordConfirmation,
        nik, phoneNumber, address, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult Function(String token, String? status, String? name)? fetchAll,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(token, id, name, email, password, passwordConfirmation, nik,
          phoneNumber, address, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements UserEvent {
  const factory _Edit(
      {required final String token,
      required final String id,
      required final String name,
      required final String email,
      required final String password,
      required final String passwordConfirmation,
      required final String nik,
      required final String phoneNumber,
      required final String address,
      required final String status}) = _$EditImpl;

  @override
  String get token;
  String get id;
  String get name;
  String get email;
  String get password;
  String get passwordConfirmation;
  String get nik;
  String get phoneNumber;
  String get address;
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String token});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = null,
  }) {
    return _then(_$DeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl({required this.id, required this.token});

  @override
  final String id;
  @override
  final String token;

  @override
  String toString() {
    return 'UserEvent.delete(id: $id, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String? status, String? name, int? page)
        fetch,
    required TResult Function(String token, String? status, String? name)
        fetchAll,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return delete(id, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult? Function(String token, String? status, String? name)? fetchAll,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return delete?.call(id, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? status, String? name, int? page)?
        fetch,
    TResult Function(String token, String? status, String? name)? fetchAll,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(
            String token,
            String id,
            String name,
            String email,
            String password,
            String passwordConfirmation,
            String nik,
            String phoneNumber,
            String address,
            String status)?
        edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements UserEvent {
  const factory _Delete(
      {required final String id, required final String token}) = _$DeleteImpl;

  String get id;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  UserStateStatus get status => throw _privateConstructorUsedError;
  UserResponseModel? get data => throw _privateConstructorUsedError;
  List<UserModel>? get allData => throw _privateConstructorUsedError;
  UserModel? get dataId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {UserStateStatus status,
      UserResponseModel? data,
      List<UserModel>? allData,
      UserModel? dataId,
      String? error});

  $UserResponseModelCopyWith<$Res>? get data;
  $UserModelCopyWith<$Res>? get dataId;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

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
    Object? dataId = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserResponseModel?,
      allData: freezed == allData
          ? _value.allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserResponseModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get dataId {
    if (_value.dataId == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.dataId!, (value) {
      return _then(_value.copyWith(dataId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserStateStatus status,
      UserResponseModel? data,
      List<UserModel>? allData,
      UserModel? dataId,
      String? error});

  @override
  $UserResponseModelCopyWith<$Res>? get data;
  @override
  $UserModelCopyWith<$Res>? get dataId;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? allData = freezed,
    Object? dataId = freezed,
    Object? error = freezed,
  }) {
    return _then(_$UserStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserResponseModel?,
      allData: freezed == allData
          ? _value._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.status = UserStateStatus.initial,
      this.data,
      final List<UserModel>? allData,
      this.dataId,
      this.error = ''})
      : _allData = allData;

  @override
  @JsonKey()
  final UserStateStatus status;
  @override
  final UserResponseModel? data;
  final List<UserModel>? _allData;
  @override
  List<UserModel>? get allData {
    final value = _allData;
    if (value == null) return null;
    if (_allData is EqualUnmodifiableListView) return _allData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserModel? dataId;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'UserState(status: $status, data: $data, allData: $allData, dataId: $dataId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._allData, _allData) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data,
      const DeepCollectionEquality().hash(_allData), dataId, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final UserStateStatus status,
      final UserResponseModel? data,
      final List<UserModel>? allData,
      final UserModel? dataId,
      final String? error}) = _$UserStateImpl;

  @override
  UserStateStatus get status;
  @override
  UserResponseModel? get data;
  @override
  List<UserModel>? get allData;
  @override
  UserModel? get dataId;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
