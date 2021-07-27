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
      double ratingSum = 0,
      double totalRating = 0,
      double averageRating = 0,
      required String userName,
      required String email,
      bool hasGiftRequest = false,
      bool hasGiftAskRequest = false,
      String requestedGiftId = '',
      String acceptedGiftId = '',
      String? imageUrl,
      bool hasNotifications = false,
      String role = 'user',
      int giftOffered = 0,
      int giftReceived = 0,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position,
      @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
          required Timestamp createdAt}) {
    return _LocalUser(
      id: id,
      firstName: firstName,
      lastName: lastName,
      ratingSum: ratingSum,
      totalRating: totalRating,
      averageRating: averageRating,
      userName: userName,
      email: email,
      hasGiftRequest: hasGiftRequest,
      hasGiftAskRequest: hasGiftAskRequest,
      requestedGiftId: requestedGiftId,
      acceptedGiftId: acceptedGiftId,
      imageUrl: imageUrl,
      hasNotifications: hasNotifications,
      role: role,
      giftOffered: giftOffered,
      giftReceived: giftReceived,
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
  double get ratingSum => throw _privateConstructorUsedError;
  double get totalRating => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get hasGiftRequest => throw _privateConstructorUsedError;
  bool get hasGiftAskRequest => throw _privateConstructorUsedError;
  String get requestedGiftId => throw _privateConstructorUsedError;
  String get acceptedGiftId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get hasNotifications => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  int get giftOffered => throw _privateConstructorUsedError;
  int get giftReceived => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
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
      double ratingSum,
      double totalRating,
      double averageRating,
      String userName,
      String email,
      bool hasGiftRequest,
      bool hasGiftAskRequest,
      String requestedGiftId,
      String acceptedGiftId,
      String? imageUrl,
      bool hasNotifications,
      String role,
      int giftOffered,
      int giftReceived,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position,
      @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
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
    Object? ratingSum = freezed,
    Object? totalRating = freezed,
    Object? averageRating = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? hasGiftRequest = freezed,
    Object? hasGiftAskRequest = freezed,
    Object? requestedGiftId = freezed,
    Object? acceptedGiftId = freezed,
    Object? imageUrl = freezed,
    Object? hasNotifications = freezed,
    Object? role = freezed,
    Object? giftOffered = freezed,
    Object? giftReceived = freezed,
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
      ratingSum: ratingSum == freezed
          ? _value.ratingSum
          : ratingSum // ignore: cast_nullable_to_non_nullable
              as double,
      totalRating: totalRating == freezed
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hasGiftRequest: hasGiftRequest == freezed
          ? _value.hasGiftRequest
          : hasGiftRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGiftAskRequest: hasGiftAskRequest == freezed
          ? _value.hasGiftAskRequest
          : hasGiftAskRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedGiftId: requestedGiftId == freezed
          ? _value.requestedGiftId
          : requestedGiftId // ignore: cast_nullable_to_non_nullable
              as String,
      acceptedGiftId: acceptedGiftId == freezed
          ? _value.acceptedGiftId
          : acceptedGiftId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasNotifications: hasNotifications == freezed
          ? _value.hasNotifications
          : hasNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      giftOffered: giftOffered == freezed
          ? _value.giftOffered
          : giftOffered // ignore: cast_nullable_to_non_nullable
              as int,
      giftReceived: giftReceived == freezed
          ? _value.giftReceived
          : giftReceived // ignore: cast_nullable_to_non_nullable
              as int,
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
      double ratingSum,
      double totalRating,
      double averageRating,
      String userName,
      String email,
      bool hasGiftRequest,
      bool hasGiftAskRequest,
      String requestedGiftId,
      String acceptedGiftId,
      String? imageUrl,
      bool hasNotifications,
      String role,
      int giftOffered,
      int giftReceived,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position,
      @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
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
    Object? ratingSum = freezed,
    Object? totalRating = freezed,
    Object? averageRating = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? hasGiftRequest = freezed,
    Object? hasGiftAskRequest = freezed,
    Object? requestedGiftId = freezed,
    Object? acceptedGiftId = freezed,
    Object? imageUrl = freezed,
    Object? hasNotifications = freezed,
    Object? role = freezed,
    Object? giftOffered = freezed,
    Object? giftReceived = freezed,
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
      ratingSum: ratingSum == freezed
          ? _value.ratingSum
          : ratingSum // ignore: cast_nullable_to_non_nullable
              as double,
      totalRating: totalRating == freezed
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hasGiftRequest: hasGiftRequest == freezed
          ? _value.hasGiftRequest
          : hasGiftRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGiftAskRequest: hasGiftAskRequest == freezed
          ? _value.hasGiftAskRequest
          : hasGiftAskRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedGiftId: requestedGiftId == freezed
          ? _value.requestedGiftId
          : requestedGiftId // ignore: cast_nullable_to_non_nullable
              as String,
      acceptedGiftId: acceptedGiftId == freezed
          ? _value.acceptedGiftId
          : acceptedGiftId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasNotifications: hasNotifications == freezed
          ? _value.hasNotifications
          : hasNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      giftOffered: giftOffered == freezed
          ? _value.giftOffered
          : giftOffered // ignore: cast_nullable_to_non_nullable
              as int,
      giftReceived: giftReceived == freezed
          ? _value.giftReceived
          : giftReceived // ignore: cast_nullable_to_non_nullable
              as int,
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
  _$_LocalUser(
      {this.id,
      required this.firstName,
      required this.lastName,
      this.ratingSum = 0,
      this.totalRating = 0,
      this.averageRating = 0,
      required this.userName,
      required this.email,
      this.hasGiftRequest = false,
      this.hasGiftAskRequest = false,
      this.requestedGiftId = '',
      this.acceptedGiftId = '',
      this.imageUrl,
      this.hasNotifications = false,
      this.role = 'user',
      this.giftOffered = 0,
      this.giftReceived = 0,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.position,
      @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
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
  final double ratingSum;
  @JsonKey(defaultValue: 0)
  @override
  final double totalRating;
  @JsonKey(defaultValue: 0)
  @override
  final double averageRating;
  @override
  final String userName;
  @override
  final String email;
  @JsonKey(defaultValue: false)
  @override
  final bool hasGiftRequest;
  @JsonKey(defaultValue: false)
  @override
  final bool hasGiftAskRequest;
  @JsonKey(defaultValue: '')
  @override
  final String requestedGiftId;
  @JsonKey(defaultValue: '')
  @override
  final String acceptedGiftId;
  @override
  final String? imageUrl;
  @JsonKey(defaultValue: false)
  @override
  final bool hasNotifications;
  @JsonKey(defaultValue: 'user')
  @override
  final String role;
  @JsonKey(defaultValue: 0)
  @override
  final int giftOffered;
  @JsonKey(defaultValue: 0)
  @override
  final int giftReceived;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition position;
  @override
  @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'LocalUser(id: $id, firstName: $firstName, lastName: $lastName, ratingSum: $ratingSum, totalRating: $totalRating, averageRating: $averageRating, userName: $userName, email: $email, hasGiftRequest: $hasGiftRequest, hasGiftAskRequest: $hasGiftAskRequest, requestedGiftId: $requestedGiftId, acceptedGiftId: $acceptedGiftId, imageUrl: $imageUrl, hasNotifications: $hasNotifications, role: $role, giftOffered: $giftOffered, giftReceived: $giftReceived, position: $position, createdAt: $createdAt)';
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
            (identical(other.ratingSum, ratingSum) ||
                const DeepCollectionEquality()
                    .equals(other.ratingSum, ratingSum)) &&
            (identical(other.totalRating, totalRating) ||
                const DeepCollectionEquality()
                    .equals(other.totalRating, totalRating)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.hasGiftRequest, hasGiftRequest) ||
                const DeepCollectionEquality()
                    .equals(other.hasGiftRequest, hasGiftRequest)) &&
            (identical(other.hasGiftAskRequest, hasGiftAskRequest) ||
                const DeepCollectionEquality()
                    .equals(other.hasGiftAskRequest, hasGiftAskRequest)) &&
            (identical(other.requestedGiftId, requestedGiftId) ||
                const DeepCollectionEquality()
                    .equals(other.requestedGiftId, requestedGiftId)) &&
            (identical(other.acceptedGiftId, acceptedGiftId) ||
                const DeepCollectionEquality()
                    .equals(other.acceptedGiftId, acceptedGiftId)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.hasNotifications, hasNotifications) ||
                const DeepCollectionEquality()
                    .equals(other.hasNotifications, hasNotifications)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.giftOffered, giftOffered) ||
                const DeepCollectionEquality()
                    .equals(other.giftOffered, giftOffered)) &&
            (identical(other.giftReceived, giftReceived) ||
                const DeepCollectionEquality()
                    .equals(other.giftReceived, giftReceived)) &&
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
      const DeepCollectionEquality().hash(ratingSum) ^
      const DeepCollectionEquality().hash(totalRating) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(hasGiftRequest) ^
      const DeepCollectionEquality().hash(hasGiftAskRequest) ^
      const DeepCollectionEquality().hash(requestedGiftId) ^
      const DeepCollectionEquality().hash(acceptedGiftId) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(hasNotifications) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(giftOffered) ^
      const DeepCollectionEquality().hash(giftReceived) ^
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
  factory _LocalUser(
      {String? id,
      required String firstName,
      required String lastName,
      double ratingSum,
      double totalRating,
      double averageRating,
      required String userName,
      required String email,
      bool hasGiftRequest,
      bool hasGiftAskRequest,
      String requestedGiftId,
      String acceptedGiftId,
      String? imageUrl,
      bool hasNotifications,
      String role,
      int giftOffered,
      int giftReceived,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position,
      @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
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
  double get ratingSum => throw _privateConstructorUsedError;
  @override
  double get totalRating => throw _privateConstructorUsedError;
  @override
  double get averageRating => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  bool get hasGiftRequest => throw _privateConstructorUsedError;
  @override
  bool get hasGiftAskRequest => throw _privateConstructorUsedError;
  @override
  String get requestedGiftId => throw _privateConstructorUsedError;
  @override
  String get acceptedGiftId => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  bool get hasNotifications => throw _privateConstructorUsedError;
  @override
  String get role => throw _privateConstructorUsedError;
  @override
  int get giftOffered => throw _privateConstructorUsedError;
  @override
  int get giftReceived => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: timestampToJson, fromJson: timestampFromJson)
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

  Error error(String message) {
    return Error(
      message,
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
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
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
    required TResult Function(String message) error,
  }) {
    return data(localUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
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
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
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
  $Res call({String message});
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
    Object? message = freezed,
  }) {
    return _then(Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LocalUserInfo.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalUser localUser) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalUser localUser)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
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
  const factory Error(String message) = _$Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
