// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waste_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WasteTypeEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int? page) fetch,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(String token) fetchAll,
    required TResult Function(String token, String type, String price) add,
    required TResult Function(
            String token, String id, String type, String price)
        edit,
    required TResult Function(String id, String token) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int? page)? fetch,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(String token)? fetchAll,
    TResult? Function(String token, String type, String price)? add,
    TResult? Function(String token, String id, String type, String price)? edit,
    TResult? Function(String id, String token)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int? page)? fetch,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(String token)? fetchAll,
    TResult Function(String token, String type, String price)? add,
    TResult Function(String token, String id, String type, String price)? edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WasteTypeEventCopyWith<WasteTypeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WasteTypeEventCopyWith<$Res> {
  factory $WasteTypeEventCopyWith(
          WasteTypeEvent value, $Res Function(WasteTypeEvent) then) =
      _$WasteTypeEventCopyWithImpl<$Res, WasteTypeEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$WasteTypeEventCopyWithImpl<$Res, $Val extends WasteTypeEvent>
    implements $WasteTypeEventCopyWith<$Res> {
  _$WasteTypeEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchImplCopyWith<$Res>
    implements $WasteTypeEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, int? page});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$WasteTypeEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? page = freezed,
  }) {
    return _then(_$FetchImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({required this.token, this.page});

  @override
  final String token;
  @override
  final int? page;

  @override
  String toString() {
    return 'WasteTypeEvent.fetch(token: $token, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int? page) fetch,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(String token) fetchAll,
    required TResult Function(String token, String type, String price) add,
    required TResult Function(
            String token, String id, String type, String price)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return fetch(token, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int? page)? fetch,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(String token)? fetchAll,
    TResult? Function(String token, String type, String price)? add,
    TResult? Function(String token, String id, String type, String price)? edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return fetch?.call(token, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int? page)? fetch,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(String token)? fetchAll,
    TResult Function(String token, String type, String price)? add,
    TResult Function(String token, String id, String type, String price)? edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(token, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
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

abstract class _Fetch implements WasteTypeEvent {
  const factory _Fetch({required final String token, final int? page}) =
      _$FetchImpl;

  @override
  String get token;
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchIdImplCopyWith<$Res>
    implements $WasteTypeEventCopyWith<$Res> {
  factory _$$FetchIdImplCopyWith(
          _$FetchIdImpl value, $Res Function(_$FetchIdImpl) then) =
      __$$FetchIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? id});
}

/// @nodoc
class __$$FetchIdImplCopyWithImpl<$Res>
    extends _$WasteTypeEventCopyWithImpl<$Res, _$FetchIdImpl>
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
    return 'WasteTypeEvent.fetchId(token: $token, id: $id)';
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
    required TResult Function(String token, int? page) fetch,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(String token) fetchAll,
    required TResult Function(String token, String type, String price) add,
    required TResult Function(
            String token, String id, String type, String price)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return fetchId(token, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int? page)? fetch,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(String token)? fetchAll,
    TResult? Function(String token, String type, String price)? add,
    TResult? Function(String token, String id, String type, String price)? edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return fetchId?.call(token, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int? page)? fetch,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(String token)? fetchAll,
    TResult Function(String token, String type, String price)? add,
    TResult Function(String token, String id, String type, String price)? edit,
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
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return fetchId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetchId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
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

abstract class _FetchId implements WasteTypeEvent {
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
abstract class _$$FetchAllImplCopyWith<$Res>
    implements $WasteTypeEventCopyWith<$Res> {
  factory _$$FetchAllImplCopyWith(
          _$FetchAllImpl value, $Res Function(_$FetchAllImpl) then) =
      __$$FetchAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$FetchAllImplCopyWithImpl<$Res>
    extends _$WasteTypeEventCopyWithImpl<$Res, _$FetchAllImpl>
    implements _$$FetchAllImplCopyWith<$Res> {
  __$$FetchAllImplCopyWithImpl(
      _$FetchAllImpl _value, $Res Function(_$FetchAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$FetchAllImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAllImpl implements _FetchAll {
  const _$FetchAllImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'WasteTypeEvent.fetchAll(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllImplCopyWith<_$FetchAllImpl> get copyWith =>
      __$$FetchAllImplCopyWithImpl<_$FetchAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int? page) fetch,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(String token) fetchAll,
    required TResult Function(String token, String type, String price) add,
    required TResult Function(
            String token, String id, String type, String price)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return fetchAll(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int? page)? fetch,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(String token)? fetchAll,
    TResult? Function(String token, String type, String price)? add,
    TResult? Function(String token, String id, String type, String price)? edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return fetchAll?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int? page)? fetch,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(String token)? fetchAll,
    TResult Function(String token, String type, String price)? add,
    TResult Function(String token, String id, String type, String price)? edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
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

abstract class _FetchAll implements WasteTypeEvent {
  const factory _FetchAll({required final String token}) = _$FetchAllImpl;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$FetchAllImplCopyWith<_$FetchAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res>
    implements $WasteTypeEventCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String type, String price});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$WasteTypeEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? type = null,
    Object? price = null,
  }) {
    return _then(_$AddImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(
      {required this.token, required this.type, required this.price});

  @override
  final String token;
  @override
  final String type;
  @override
  final String price;

  @override
  String toString() {
    return 'WasteTypeEvent.add(token: $token, type: $type, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, type, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int? page) fetch,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(String token) fetchAll,
    required TResult Function(String token, String type, String price) add,
    required TResult Function(
            String token, String id, String type, String price)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return add(token, type, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int? page)? fetch,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(String token)? fetchAll,
    TResult? Function(String token, String type, String price)? add,
    TResult? Function(String token, String id, String type, String price)? edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return add?.call(token, type, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int? page)? fetch,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(String token)? fetchAll,
    TResult Function(String token, String type, String price)? add,
    TResult Function(String token, String id, String type, String price)? edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(token, type, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements WasteTypeEvent {
  const factory _Add(
      {required final String token,
      required final String type,
      required final String price}) = _$AddImpl;

  @override
  String get token;
  String get type;
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res>
    implements $WasteTypeEventCopyWith<$Res> {
  factory _$$EditImplCopyWith(
          _$EditImpl value, $Res Function(_$EditImpl) then) =
      __$$EditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String id, String type, String price});
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$WasteTypeEventCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? id = null,
    Object? type = null,
    Object? price = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditImpl implements _Edit {
  const _$EditImpl(
      {required this.token,
      required this.id,
      required this.type,
      required this.price});

  @override
  final String token;
  @override
  final String id;
  @override
  final String type;
  @override
  final String price;

  @override
  String toString() {
    return 'WasteTypeEvent.edit(token: $token, id: $id, type: $type, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, id, type, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      __$$EditImplCopyWithImpl<_$EditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int? page) fetch,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(String token) fetchAll,
    required TResult Function(String token, String type, String price) add,
    required TResult Function(
            String token, String id, String type, String price)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return edit(token, id, type, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int? page)? fetch,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(String token)? fetchAll,
    TResult? Function(String token, String type, String price)? add,
    TResult? Function(String token, String id, String type, String price)? edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return edit?.call(token, id, type, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int? page)? fetch,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(String token)? fetchAll,
    TResult Function(String token, String type, String price)? add,
    TResult Function(String token, String id, String type, String price)? edit,
    TResult Function(String id, String token)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(token, id, type, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
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

abstract class _Edit implements WasteTypeEvent {
  const factory _Edit(
      {required final String token,
      required final String id,
      required final String type,
      required final String price}) = _$EditImpl;

  @override
  String get token;
  String get id;
  String get type;
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res>
    implements $WasteTypeEventCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String token});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$WasteTypeEventCopyWithImpl<$Res, _$DeleteImpl>
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
    return 'WasteTypeEvent.delete(id: $id, token: $token)';
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
    required TResult Function(String token, int? page) fetch,
    required TResult Function(String token, String? id) fetchId,
    required TResult Function(String token) fetchAll,
    required TResult Function(String token, String type, String price) add,
    required TResult Function(
            String token, String id, String type, String price)
        edit,
    required TResult Function(String id, String token) delete,
  }) {
    return delete(id, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, int? page)? fetch,
    TResult? Function(String token, String? id)? fetchId,
    TResult? Function(String token)? fetchAll,
    TResult? Function(String token, String type, String price)? add,
    TResult? Function(String token, String id, String type, String price)? edit,
    TResult? Function(String id, String token)? delete,
  }) {
    return delete?.call(id, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int? page)? fetch,
    TResult Function(String token, String? id)? fetchId,
    TResult Function(String token)? fetchAll,
    TResult Function(String token, String type, String price)? add,
    TResult Function(String token, String id, String type, String price)? edit,
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
    required TResult Function(_FetchId value) fetchId,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchId value)? fetchId,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchId value)? fetchId,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
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

abstract class _Delete implements WasteTypeEvent {
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
mixin _$WasteTypeState {
  WasteTypeStateStatus get status => throw _privateConstructorUsedError;
  WasteTypeResponseModel? get data => throw _privateConstructorUsedError;
  List<WasteTypesModel>? get allData => throw _privateConstructorUsedError;
  WasteTypesModel? get dataId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WasteTypeStateCopyWith<WasteTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WasteTypeStateCopyWith<$Res> {
  factory $WasteTypeStateCopyWith(
          WasteTypeState value, $Res Function(WasteTypeState) then) =
      _$WasteTypeStateCopyWithImpl<$Res, WasteTypeState>;
  @useResult
  $Res call(
      {WasteTypeStateStatus status,
      WasteTypeResponseModel? data,
      List<WasteTypesModel>? allData,
      WasteTypesModel? dataId,
      String? error});

  $WasteTypeResponseModelCopyWith<$Res>? get data;
  $WasteTypesModelCopyWith<$Res>? get dataId;
}

/// @nodoc
class _$WasteTypeStateCopyWithImpl<$Res, $Val extends WasteTypeState>
    implements $WasteTypeStateCopyWith<$Res> {
  _$WasteTypeStateCopyWithImpl(this._value, this._then);

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
              as WasteTypeStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WasteTypeResponseModel?,
      allData: freezed == allData
          ? _value.allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<WasteTypesModel>?,
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as WasteTypesModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WasteTypeResponseModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WasteTypeResponseModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WasteTypesModelCopyWith<$Res>? get dataId {
    if (_value.dataId == null) {
      return null;
    }

    return $WasteTypesModelCopyWith<$Res>(_value.dataId!, (value) {
      return _then(_value.copyWith(dataId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WasteTypeStateImplCopyWith<$Res>
    implements $WasteTypeStateCopyWith<$Res> {
  factory _$$WasteTypeStateImplCopyWith(_$WasteTypeStateImpl value,
          $Res Function(_$WasteTypeStateImpl) then) =
      __$$WasteTypeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WasteTypeStateStatus status,
      WasteTypeResponseModel? data,
      List<WasteTypesModel>? allData,
      WasteTypesModel? dataId,
      String? error});

  @override
  $WasteTypeResponseModelCopyWith<$Res>? get data;
  @override
  $WasteTypesModelCopyWith<$Res>? get dataId;
}

/// @nodoc
class __$$WasteTypeStateImplCopyWithImpl<$Res>
    extends _$WasteTypeStateCopyWithImpl<$Res, _$WasteTypeStateImpl>
    implements _$$WasteTypeStateImplCopyWith<$Res> {
  __$$WasteTypeStateImplCopyWithImpl(
      _$WasteTypeStateImpl _value, $Res Function(_$WasteTypeStateImpl) _then)
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
    return _then(_$WasteTypeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WasteTypeStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WasteTypeResponseModel?,
      allData: freezed == allData
          ? _value._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<WasteTypesModel>?,
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as WasteTypesModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WasteTypeStateImpl implements _WasteTypeState {
  const _$WasteTypeStateImpl(
      {this.status = WasteTypeStateStatus.initial,
      this.data,
      final List<WasteTypesModel>? allData,
      this.dataId,
      this.error = ''})
      : _allData = allData;

  @override
  @JsonKey()
  final WasteTypeStateStatus status;
  @override
  final WasteTypeResponseModel? data;
  final List<WasteTypesModel>? _allData;
  @override
  List<WasteTypesModel>? get allData {
    final value = _allData;
    if (value == null) return null;
    if (_allData is EqualUnmodifiableListView) return _allData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WasteTypesModel? dataId;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'WasteTypeState(status: $status, data: $data, allData: $allData, dataId: $dataId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WasteTypeStateImpl &&
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
  _$$WasteTypeStateImplCopyWith<_$WasteTypeStateImpl> get copyWith =>
      __$$WasteTypeStateImplCopyWithImpl<_$WasteTypeStateImpl>(
          this, _$identity);
}

abstract class _WasteTypeState implements WasteTypeState {
  const factory _WasteTypeState(
      {final WasteTypeStateStatus status,
      final WasteTypeResponseModel? data,
      final List<WasteTypesModel>? allData,
      final WasteTypesModel? dataId,
      final String? error}) = _$WasteTypeStateImpl;

  @override
  WasteTypeStateStatus get status;
  @override
  WasteTypeResponseModel? get data;
  @override
  List<WasteTypesModel>? get allData;
  @override
  WasteTypesModel? get dataId;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$WasteTypeStateImplCopyWith<_$WasteTypeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
