// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'local_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalUser _$LocalUserFromJson(Map<String, dynamic> json) {
  return _LocalUser.fromJson(json);
}

/// @nodoc
class _$LocalUserTearOff {
  const _$LocalUserTearOff();

  _LocalUser call(
      {String? id,
      required String firstName,
      required String lastName,
      int totalReview = 0,
      int reviewInStar = 0,
      required String userName,
      required String email,
      String? imageUrl,
      String role = 'user',
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required MyPosition position,
      @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
          required Timestamp createdAt}) {
    return _LocalUser(
      id: id,
      firstName: firstName,
      lastName: lastName,
      totalReview: totalReview,
      reviewInStar: reviewInStar,
      userName: userName,
      email: email,
      imageUrl: imageUrl,
      role: role,
      position: position,
      createdAt: createdAt,
    );
  }

  LocalUser fromJson(Map<String, Object> json) {
    return LocalUser.fromJson(json);
  }
}

/// @nodoc
const $LocalUser = _$LocalUserTearOff();

/// @nodoc
mixin _$LocalUser {
  String? get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  int get totalReview => throw _privateConstructorUsedError;
  int get reviewInStar => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalUserCopyWith<LocalUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalUserCopyWith<$Res> {
  factory $LocalUserCopyWith(LocalUser value, $Res Function(LocalUser) then) =
      _$LocalUserCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String firstName,
      String lastName,
      int totalReview,
      int reviewInStar,
      String userName,
      String email,
      String? imageUrl,
      String role,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          MyPosition position,
      @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
          Timestamp createdAt});

  $MyPositionCopyWith<$Res> get position;
}

/// @nodoc
class _$LocalUserCopyWithImpl<$Res> implements $LocalUserCopyWith<$Res> {
  _$LocalUserCopyWithImpl(this._value, this._then);

  final LocalUser _value;
  // ignore: unused_field
  final $Res Function(LocalUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? totalReview = freezed,
    Object? reviewInStar = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? role = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      totalReview: totalReview == freezed
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as int,
      reviewInStar: reviewInStar == freezed
          ? _value.reviewInStar
          : reviewInStar // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  @override
  $MyPositionCopyWith<$Res> get position {
    return $MyPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$LocalUserCopyWith<$Res> implements $LocalUserCopyWith<$Res> {
  factory _$LocalUserCopyWith(
          _LocalUser value, $Res Function(_LocalUser) then) =
      __$LocalUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String firstName,
      String lastName,
      int totalReview,
      int reviewInStar,
      String userName,
      String email,
      String? imageUrl,
      String role,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          MyPosition position,
      @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
          Timestamp createdAt});

  @override
  $MyPositionCopyWith<$Res> get position;
}

/// @nodoc
class __$LocalUserCopyWithImpl<$Res> extends _$LocalUserCopyWithImpl<$Res>
    implements _$LocalUserCopyWith<$Res> {
  __$LocalUserCopyWithImpl(_LocalUser _value, $Res Function(_LocalUser) _then)
      : super(_value, (v) => _then(v as _LocalUser));

  @override
  _LocalUser get _value => super._value as _LocalUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? totalReview = freezed,
    Object? reviewInStar = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? role = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_LocalUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      totalReview: totalReview == freezed
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as int,
      reviewInStar: reviewInStar == freezed
          ? _value.reviewInStar
          : reviewInStar // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalUser implements _LocalUser {
  const _$_LocalUser(
      {this.id,
      required this.firstName,
      required this.lastName,
      this.totalReview = 0,
      this.reviewInStar = 0,
      required this.userName,
      required this.email,
      this.imageUrl,
      this.role = 'user',
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required this.position,
      @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
          required this.createdAt});

  factory _$_LocalUser.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalUserFromJson(json);

  @override
  final String? id;
  @override
  final String firstName;
  @override
  final String lastName;
  @JsonKey(defaultValue: 0)
  @override
  final int totalReview;
  @JsonKey(defaultValue: 0)
  @override
  final int reviewInStar;
  @override
  final String userName;
  @override
  final String email;
  @override
  final String? imageUrl;
  @JsonKey(defaultValue: 'user')
  @override
  final String role;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final MyPosition position;
  @override
  @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'LocalUser(id: $id, firstName: $firstName, lastName: $lastName, totalReview: $totalReview, reviewInStar: $reviewInStar, userName: $userName, email: $email, imageUrl: $imageUrl, role: $role, position: $position, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.totalReview, totalReview) ||
                const DeepCollectionEquality()
                    .equals(other.totalReview, totalReview)) &&
            (identical(other.reviewInStar, reviewInStar) ||
                const DeepCollectionEquality()
                    .equals(other.reviewInStar, reviewInStar)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(totalReview) ^
      const DeepCollectionEquality().hash(reviewInStar) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$LocalUserCopyWith<_LocalUser> get copyWith =>
      __$LocalUserCopyWithImpl<_LocalUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalUserToJson(this);
  }
}

abstract class _LocalUser implements LocalUser {
  const factory _LocalUser(
      {String? id,
      required String firstName,
      required String lastName,
      int totalReview,
      int reviewInStar,
      required String userName,
      required String email,
      String? imageUrl,
      String role,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required MyPosition position,
      @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
          required Timestamp createdAt}) = _$_LocalUser;

  factory _LocalUser.fromJson(Map<String, dynamic> json) =
      _$_LocalUser.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  int get totalReview => throw _privateConstructorUsedError;
  @override
  int get reviewInStar => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String get role => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: _timestampToJson, fromJson: _timestampFromJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocalUserCopyWith<_LocalUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocalUserInfoTearOff {
  const _$LocalUserInfoTearOff();

  Data data(LocalUser localUser) {
    return Data(
      localUser,
    );
  }

  Loading loading() {
    return const Loading();
  }

  Error error(Object e, StackTrace s) {
    return Error(
      e,
      s,
    );
  }
}

/// @nodoc
const $LocalUserInfo = _$LocalUserInfoTearOff();

/// @nodoc
mixin _$LocalUserInfo {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalUser localUser) data,
    required TResult Function() loading,
    required TResult Function(Object e, StackTrace s) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(Object e, StackTrace s)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalUserInfoCopyWith<$Res> {
  factory $LocalUserInfoCopyWith(
          LocalUserInfo value, $Res Function(LocalUserInfo) then) =
      _$LocalUserInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalUserInfoCopyWithImpl<$Res>
    implements $LocalUserInfoCopyWith<$Res> {
  _$LocalUserInfoCopyWithImpl(this._value, this._then);

  final LocalUserInfo _value;
  // ignore: unused_field
  final $Res Function(LocalUserInfo) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({LocalUser localUser});

  $LocalUserCopyWith<$Res> get localUser;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$LocalUserInfoCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? localUser = freezed,
  }) {
    return _then(Data(
      localUser == freezed
          ? _value.localUser
          : localUser // ignore: cast_nullable_to_non_nullable
              as LocalUser,
    ));
  }

  @override
  $LocalUserCopyWith<$Res> get localUser {
    return $LocalUserCopyWith<$Res>(_value.localUser, (value) {
      return _then(_value.copyWith(localUser: value));
    });
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.localUser);

  @override
  final LocalUser localUser;

  @override
  String toString() {
    return 'LocalUserInfo.data(localUser: $localUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.localUser, localUser) ||
                const DeepCollectionEquality()
                    .equals(other.localUser, localUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(localUser);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalUser localUser) data,
    required TResult Function() loading,
    required TResult Function(Object e, StackTrace s) error,
  }) {
    return data(localUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(Object e, StackTrace s)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(localUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements LocalUserInfo {
  const factory Data(LocalUser localUser) = _$Data;

  LocalUser get localUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LocalUserInfoCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LocalUserInfo.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalUser localUser) data,
    required TResult Function() loading,
    required TResult Function(Object e, StackTrace s) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(Object e, StackTrace s)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LocalUserInfo {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object e, StackTrace s});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LocalUserInfoCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? e = freezed,
    Object? s = freezed,
  }) {
    return _then(Error(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
      s == freezed
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.e, this.s);

  @override
  final Object e;
  @override
  final StackTrace s;

  @override
  String toString() {
    return 'LocalUserInfo.error(e: $e, s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)) &&
            (identical(other.s, s) ||
                const DeepCollectionEquality().equals(other.s, s)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(e) ^
      const DeepCollectionEquality().hash(s);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalUser localUser) data,
    required TResult Function() loading,
    required TResult Function(Object e, StackTrace s) error,
  }) {
    return error(e, s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(Object e, StackTrace s)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e, s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LocalUserInfo {
  const factory Error(Object e, StackTrace s) = _$Error;

  Object get e => throw _privateConstructorUsedError;
  StackTrace get s => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
