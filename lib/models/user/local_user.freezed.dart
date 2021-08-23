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
      String? uid,
      double? distance,
      required String email,
      required String userName,
      required String imageUrl,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required Geometry geometry,
      String firstName = '',
      String lastName = '',
      bool hasNotifications = false,
      double ratingSum = 0,
      double totalRating = 0,
      double averageRating = 0,
      double giftGiven = 0,
      double giftReceived = 0,
      bool hasGiftGiverRequest = false,
      bool hasGiftAskRequest = false,
      String requestedGiftId = '',
      String acceptedGiftId = '',
      String role = 'user',
      required DateTime createdAt,
      required DateTime updatedAt,
      int v = 1}) {
    return _LocalUser(
      id: id,
      uid: uid,
      distance: distance,
      email: email,
      userName: userName,
      imageUrl: imageUrl,
      geometry: geometry,
      firstName: firstName,
      lastName: lastName,
      hasNotifications: hasNotifications,
      ratingSum: ratingSum,
      totalRating: totalRating,
      averageRating: averageRating,
      giftGiven: giftGiven,
      giftReceived: giftReceived,
      hasGiftGiverRequest: hasGiftGiverRequest,
      hasGiftAskRequest: hasGiftAskRequest,
      requestedGiftId: requestedGiftId,
      acceptedGiftId: acceptedGiftId,
      role: role,
      createdAt: createdAt,
      updatedAt: updatedAt,
      v: v,
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
  String? get uid => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  Geometry get geometry => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  bool get hasNotifications => throw _privateConstructorUsedError;
  double get ratingSum => throw _privateConstructorUsedError;
  double get totalRating => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  double get giftGiven => throw _privateConstructorUsedError;
  double get giftReceived => throw _privateConstructorUsedError;
  bool get hasGiftGiverRequest => throw _privateConstructorUsedError;
  bool get hasGiftAskRequest => throw _privateConstructorUsedError;
  String get requestedGiftId => throw _privateConstructorUsedError;
  String get acceptedGiftId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get v => throw _privateConstructorUsedError;

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
      String? uid,
      double? distance,
      String email,
      String userName,
      String imageUrl,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          Geometry geometry,
      String firstName,
      String lastName,
      bool hasNotifications,
      double ratingSum,
      double totalRating,
      double averageRating,
      double giftGiven,
      double giftReceived,
      bool hasGiftGiverRequest,
      bool hasGiftAskRequest,
      String requestedGiftId,
      String acceptedGiftId,
      String role,
      DateTime createdAt,
      DateTime updatedAt,
      int v});

  $GeometryCopyWith<$Res> get geometry;
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
    Object? uid = freezed,
    Object? distance = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? imageUrl = freezed,
    Object? geometry = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? hasNotifications = freezed,
    Object? ratingSum = freezed,
    Object? totalRating = freezed,
    Object? averageRating = freezed,
    Object? giftGiven = freezed,
    Object? giftReceived = freezed,
    Object? hasGiftGiverRequest = freezed,
    Object? hasGiftAskRequest = freezed,
    Object? requestedGiftId = freezed,
    Object? acceptedGiftId = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      hasNotifications: hasNotifications == freezed
          ? _value.hasNotifications
          : hasNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
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
      giftGiven: giftGiven == freezed
          ? _value.giftGiven
          : giftGiven // ignore: cast_nullable_to_non_nullable
              as double,
      giftReceived: giftReceived == freezed
          ? _value.giftReceived
          : giftReceived // ignore: cast_nullable_to_non_nullable
              as double,
      hasGiftGiverRequest: hasGiftGiverRequest == freezed
          ? _value.hasGiftGiverRequest
          : hasGiftGiverRequest // ignore: cast_nullable_to_non_nullable
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
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $GeometryCopyWith<$Res> get geometry {
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
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
      String? uid,
      double? distance,
      String email,
      String userName,
      String imageUrl,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          Geometry geometry,
      String firstName,
      String lastName,
      bool hasNotifications,
      double ratingSum,
      double totalRating,
      double averageRating,
      double giftGiven,
      double giftReceived,
      bool hasGiftGiverRequest,
      bool hasGiftAskRequest,
      String requestedGiftId,
      String acceptedGiftId,
      String role,
      DateTime createdAt,
      DateTime updatedAt,
      int v});

  @override
  $GeometryCopyWith<$Res> get geometry;
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
    Object? uid = freezed,
    Object? distance = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? imageUrl = freezed,
    Object? geometry = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? hasNotifications = freezed,
    Object? ratingSum = freezed,
    Object? totalRating = freezed,
    Object? averageRating = freezed,
    Object? giftGiven = freezed,
    Object? giftReceived = freezed,
    Object? hasGiftGiverRequest = freezed,
    Object? hasGiftAskRequest = freezed,
    Object? requestedGiftId = freezed,
    Object? acceptedGiftId = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_LocalUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      hasNotifications: hasNotifications == freezed
          ? _value.hasNotifications
          : hasNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
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
      giftGiven: giftGiven == freezed
          ? _value.giftGiven
          : giftGiven // ignore: cast_nullable_to_non_nullable
              as double,
      giftReceived: giftReceived == freezed
          ? _value.giftReceived
          : giftReceived // ignore: cast_nullable_to_non_nullable
              as double,
      hasGiftGiverRequest: hasGiftGiverRequest == freezed
          ? _value.hasGiftGiverRequest
          : hasGiftGiverRequest // ignore: cast_nullable_to_non_nullable
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
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalUser implements _LocalUser {
  const _$_LocalUser(
      {this.id,
      this.uid,
      this.distance,
      required this.email,
      required this.userName,
      required this.imageUrl,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required this.geometry,
      this.firstName = '',
      this.lastName = '',
      this.hasNotifications = false,
      this.ratingSum = 0,
      this.totalRating = 0,
      this.averageRating = 0,
      this.giftGiven = 0,
      this.giftReceived = 0,
      this.hasGiftGiverRequest = false,
      this.hasGiftAskRequest = false,
      this.requestedGiftId = '',
      this.acceptedGiftId = '',
      this.role = 'user',
      required this.createdAt,
      required this.updatedAt,
      this.v = 1});

  factory _$_LocalUser.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalUserFromJson(json);

  @override
  final String? id;
  @override
  final String? uid;
  @override
  final double? distance;
  @override
  final String email;
  @override
  final String userName;
  @override
  final String imageUrl;
  @override
  @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  final Geometry geometry;
  @JsonKey(defaultValue: '')
  @override
  final String firstName;
  @JsonKey(defaultValue: '')
  @override
  final String lastName;
  @JsonKey(defaultValue: false)
  @override
  final bool hasNotifications;
  @JsonKey(defaultValue: 0)
  @override
  final double ratingSum;
  @JsonKey(defaultValue: 0)
  @override
  final double totalRating;
  @JsonKey(defaultValue: 0)
  @override
  final double averageRating;
  @JsonKey(defaultValue: 0)
  @override
  final double giftGiven;
  @JsonKey(defaultValue: 0)
  @override
  final double giftReceived;
  @JsonKey(defaultValue: false)
  @override
  final bool hasGiftGiverRequest;
  @JsonKey(defaultValue: false)
  @override
  final bool hasGiftAskRequest;
  @JsonKey(defaultValue: '')
  @override
  final String requestedGiftId;
  @JsonKey(defaultValue: '')
  @override
  final String acceptedGiftId;
  @JsonKey(defaultValue: 'user')
  @override
  final String role;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @JsonKey(defaultValue: 1)
  @override
  final int v;

  @override
  String toString() {
    return 'LocalUser(id: $id, uid: $uid, distance: $distance, email: $email, userName: $userName, imageUrl: $imageUrl, geometry: $geometry, firstName: $firstName, lastName: $lastName, hasNotifications: $hasNotifications, ratingSum: $ratingSum, totalRating: $totalRating, averageRating: $averageRating, giftGiven: $giftGiven, giftReceived: $giftReceived, hasGiftGiverRequest: $hasGiftGiverRequest, hasGiftAskRequest: $hasGiftAskRequest, requestedGiftId: $requestedGiftId, acceptedGiftId: $acceptedGiftId, role: $role, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.geometry, geometry) ||
                const DeepCollectionEquality()
                    .equals(other.geometry, geometry)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.hasNotifications, hasNotifications) ||
                const DeepCollectionEquality()
                    .equals(other.hasNotifications, hasNotifications)) &&
            (identical(other.ratingSum, ratingSum) ||
                const DeepCollectionEquality()
                    .equals(other.ratingSum, ratingSum)) &&
            (identical(other.totalRating, totalRating) ||
                const DeepCollectionEquality()
                    .equals(other.totalRating, totalRating)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.giftGiven, giftGiven) ||
                const DeepCollectionEquality()
                    .equals(other.giftGiven, giftGiven)) &&
            (identical(other.giftReceived, giftReceived) ||
                const DeepCollectionEquality()
                    .equals(other.giftReceived, giftReceived)) &&
            (identical(other.hasGiftGiverRequest, hasGiftGiverRequest) ||
                const DeepCollectionEquality()
                    .equals(other.hasGiftGiverRequest, hasGiftGiverRequest)) &&
            (identical(other.hasGiftAskRequest, hasGiftAskRequest) ||
                const DeepCollectionEquality()
                    .equals(other.hasGiftAskRequest, hasGiftAskRequest)) &&
            (identical(other.requestedGiftId, requestedGiftId) ||
                const DeepCollectionEquality()
                    .equals(other.requestedGiftId, requestedGiftId)) &&
            (identical(other.acceptedGiftId, acceptedGiftId) ||
                const DeepCollectionEquality()
                    .equals(other.acceptedGiftId, acceptedGiftId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.v, v) ||
                const DeepCollectionEquality().equals(other.v, v)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(geometry) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(hasNotifications) ^
      const DeepCollectionEquality().hash(ratingSum) ^
      const DeepCollectionEquality().hash(totalRating) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(giftGiven) ^
      const DeepCollectionEquality().hash(giftReceived) ^
      const DeepCollectionEquality().hash(hasGiftGiverRequest) ^
      const DeepCollectionEquality().hash(hasGiftAskRequest) ^
      const DeepCollectionEquality().hash(requestedGiftId) ^
      const DeepCollectionEquality().hash(acceptedGiftId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(v);

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
      String? uid,
      double? distance,
      required String email,
      required String userName,
      required String imageUrl,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required Geometry geometry,
      String firstName,
      String lastName,
      bool hasNotifications,
      double ratingSum,
      double totalRating,
      double averageRating,
      double giftGiven,
      double giftReceived,
      bool hasGiftGiverRequest,
      bool hasGiftAskRequest,
      String requestedGiftId,
      String acceptedGiftId,
      String role,
      required DateTime createdAt,
      required DateTime updatedAt,
      int v}) = _$_LocalUser;

  factory _LocalUser.fromJson(Map<String, dynamic> json) =
      _$_LocalUser.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  double? get distance => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  Geometry get geometry => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  bool get hasNotifications => throw _privateConstructorUsedError;
  @override
  double get ratingSum => throw _privateConstructorUsedError;
  @override
  double get totalRating => throw _privateConstructorUsedError;
  @override
  double get averageRating => throw _privateConstructorUsedError;
  @override
  double get giftGiven => throw _privateConstructorUsedError;
  @override
  double get giftReceived => throw _privateConstructorUsedError;
  @override
  bool get hasGiftGiverRequest => throw _privateConstructorUsedError;
  @override
  bool get hasGiftAskRequest => throw _privateConstructorUsedError;
  @override
  String get requestedGiftId => throw _privateConstructorUsedError;
  @override
  String get acceptedGiftId => throw _privateConstructorUsedError;
  @override
  String get role => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  int get v => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocalUserCopyWith<_LocalUser> get copyWith =>
      throw _privateConstructorUsedError;
}

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
class _$GeometryTearOff {
  const _$GeometryTearOff();

  _Geometry call(
      {String type = 'Point', String? id, required List<double> coordinates}) {
    return _Geometry(
      type: type,
      id: id,
      coordinates: coordinates,
    );
  }

  Geometry fromJson(Map<String, Object> json) {
    return Geometry.fromJson(json);
  }
}

/// @nodoc
const $Geometry = _$GeometryTearOff();

/// @nodoc
mixin _$Geometry {
  String get type => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res>;
  $Res call({String type, String? id, List<double> coordinates});
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res> implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  final Geometry _value;
  // ignore: unused_field
  final $Res Function(Geometry) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$GeometryCopyWith(_Geometry value, $Res Function(_Geometry) then) =
      __$GeometryCopyWithImpl<$Res>;
  @override
  $Res call({String type, String? id, List<double> coordinates});
}

/// @nodoc
class __$GeometryCopyWithImpl<$Res> extends _$GeometryCopyWithImpl<$Res>
    implements _$GeometryCopyWith<$Res> {
  __$GeometryCopyWithImpl(_Geometry _value, $Res Function(_Geometry) _then)
      : super(_value, (v) => _then(v as _Geometry));

  @override
  _Geometry get _value => super._value as _Geometry;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_Geometry(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geometry implements _Geometry {
  const _$_Geometry({this.type = 'Point', this.id, required this.coordinates});

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$_$_GeometryFromJson(json);

  @JsonKey(defaultValue: 'Point')
  @override
  final String type;
  @override
  final String? id;
  @override
  final List<double> coordinates;

  @override
  String toString() {
    return 'Geometry(type: $type, id: $id, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Geometry &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(coordinates);

  @JsonKey(ignore: true)
  @override
  _$GeometryCopyWith<_Geometry> get copyWith =>
      __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeometryToJson(this);
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry(
      {String type,
      String? id,
      required List<double> coordinates}) = _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<double> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeometryCopyWith<_Geometry> get copyWith =>
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
