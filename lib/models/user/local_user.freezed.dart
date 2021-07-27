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
  switch (json['runtimeType'] as String) {
    case 'loading':
      return Loading.fromJson(json);
    case 'error':
      return Error.fromJson(json);
    case 'data':
      return _LocalUser.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$LocalUserTearOff {
  const _$LocalUserTearOff();

  Loading loading() {
    return const Loading();
  }

  Error error(String? message) {
    return Error(
      message,
    );
  }

  _LocalUser data(
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(
            String? id,
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
                Timestamp createdAt)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(
            String? id,
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
                Timestamp createdAt)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(_LocalUser value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(_LocalUser value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalUserCopyWith<$Res> {
  factory $LocalUserCopyWith(LocalUser value, $Res Function(LocalUser) then) =
      _$LocalUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalUserCopyWithImpl<$Res> implements $LocalUserCopyWith<$Res> {
  _$LocalUserCopyWithImpl(this._value, this._then);

  final LocalUser _value;
  // ignore: unused_field
  final $Res Function(LocalUser) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LocalUserCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
@JsonSerializable()
class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  factory _$Loading.fromJson(Map<String, dynamic> json) =>
      _$_$LoadingFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalUser.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocalUser.loading'));
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
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(
            String? id,
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
                Timestamp createdAt)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(
            String? id,
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
                Timestamp createdAt)?
        data,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(_LocalUser value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(_LocalUser value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class Loading implements LocalUser {
  const factory Loading() = _$Loading;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading.fromJson;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LocalUserCopyWithImpl<$Res>
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error(this.message);

  factory _$Error.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorFromJson(json);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalUser.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalUser.error'))
      ..add(DiagnosticsProperty('message', message));
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
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(
            String? id,
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
                Timestamp createdAt)
        data,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(
            String? id,
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
                Timestamp createdAt)?
        data,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(_LocalUser value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(_LocalUser value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class Error implements LocalUser {
  const factory Error(String? message) = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocalUserCopyWith<$Res> {
  factory _$LocalUserCopyWith(
          _LocalUser value, $Res Function(_LocalUser) then) =
      __$LocalUserCopyWithImpl<$Res>;
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

  @override
  $MyPositionCopyWith<$Res> get position {
    return $MyPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalUser with DiagnosticableTreeMixin implements _LocalUser {
  const _$_LocalUser(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalUser.data(id: $id, firstName: $firstName, lastName: $lastName, ratingSum: $ratingSum, totalRating: $totalRating, averageRating: $averageRating, userName: $userName, email: $email, hasGiftRequest: $hasGiftRequest, hasGiftAskRequest: $hasGiftAskRequest, requestedGiftId: $requestedGiftId, acceptedGiftId: $acceptedGiftId, imageUrl: $imageUrl, hasNotifications: $hasNotifications, role: $role, giftOffered: $giftOffered, giftReceived: $giftReceived, position: $position, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalUser.data'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('ratingSum', ratingSum))
      ..add(DiagnosticsProperty('totalRating', totalRating))
      ..add(DiagnosticsProperty('averageRating', averageRating))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('hasGiftRequest', hasGiftRequest))
      ..add(DiagnosticsProperty('hasGiftAskRequest', hasGiftAskRequest))
      ..add(DiagnosticsProperty('requestedGiftId', requestedGiftId))
      ..add(DiagnosticsProperty('acceptedGiftId', acceptedGiftId))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('hasNotifications', hasNotifications))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('giftOffered', giftOffered))
      ..add(DiagnosticsProperty('giftReceived', giftReceived))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('createdAt', createdAt));
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(
            String? id,
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
                Timestamp createdAt)
        data,
  }) {
    return data(
        id,
        firstName,
        lastName,
        ratingSum,
        totalRating,
        averageRating,
        userName,
        email,
        hasGiftRequest,
        hasGiftAskRequest,
        requestedGiftId,
        acceptedGiftId,
        imageUrl,
        hasNotifications,
        role,
        giftOffered,
        giftReceived,
        position,
        createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(
            String? id,
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
                Timestamp createdAt)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          id,
          firstName,
          lastName,
          ratingSum,
          totalRating,
          averageRating,
          userName,
          email,
          hasGiftRequest,
          hasGiftAskRequest,
          requestedGiftId,
          acceptedGiftId,
          imageUrl,
          hasNotifications,
          role,
          giftOffered,
          giftReceived,
          position,
          createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(_LocalUser value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(_LocalUser value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalUserToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class _LocalUser implements LocalUser {
  const factory _LocalUser(
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
  @JsonKey(ignore: true)
  _$LocalUserCopyWith<_LocalUser> get copyWith =>
      throw _privateConstructorUsedError;
}
