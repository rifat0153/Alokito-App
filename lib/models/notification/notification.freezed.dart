// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyNotification _$MyNotificationFromJson(Map<String, dynamic> json) {
  return _MyNotification.fromJson(json);
}

/// @nodoc
class _$MyNotificationTearOff {
  const _$MyNotificationTearOff();

  _MyNotification data(
      {required String id,
      required String text,
      @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
          required NotificationType notificationType,
      required String releatedDocId,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _MyNotification(
      id: id,
      text: text,
      notificationType: notificationType,
      releatedDocId: releatedDocId,
      createdAt: createdAt,
    );
  }

  MyNotification fromJson(Map<String, Object> json) {
    return MyNotification.fromJson(json);
  }
}

/// @nodoc
const $MyNotification = _$MyNotificationTearOff();

/// @nodoc
mixin _$MyNotification {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
  NotificationType get notificationType => throw _privateConstructorUsedError;
  String get releatedDocId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String text,
            @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
                NotificationType notificationType,
            String releatedDocId,
            @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
                Timestamp createdAt)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String text,
            @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
                NotificationType notificationType,
            String releatedDocId,
            @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
                Timestamp createdAt)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyNotification value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyNotification value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyNotificationCopyWith<MyNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyNotificationCopyWith<$Res> {
  factory $MyNotificationCopyWith(
          MyNotification value, $Res Function(MyNotification) then) =
      _$MyNotificationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String text,
      @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
          NotificationType notificationType,
      String releatedDocId,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});
}

/// @nodoc
class _$MyNotificationCopyWithImpl<$Res>
    implements $MyNotificationCopyWith<$Res> {
  _$MyNotificationCopyWithImpl(this._value, this._then);

  final MyNotification _value;
  // ignore: unused_field
  final $Res Function(MyNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? notificationType = freezed,
    Object? releatedDocId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      releatedDocId: releatedDocId == freezed
          ? _value.releatedDocId
          : releatedDocId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
abstract class _$MyNotificationCopyWith<$Res>
    implements $MyNotificationCopyWith<$Res> {
  factory _$MyNotificationCopyWith(
          _MyNotification value, $Res Function(_MyNotification) then) =
      __$MyNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String text,
      @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
          NotificationType notificationType,
      String releatedDocId,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});
}

/// @nodoc
class __$MyNotificationCopyWithImpl<$Res>
    extends _$MyNotificationCopyWithImpl<$Res>
    implements _$MyNotificationCopyWith<$Res> {
  __$MyNotificationCopyWithImpl(
      _MyNotification _value, $Res Function(_MyNotification) _then)
      : super(_value, (v) => _then(v as _MyNotification));

  @override
  _MyNotification get _value => super._value as _MyNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? notificationType = freezed,
    Object? releatedDocId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_MyNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      releatedDocId: releatedDocId == freezed
          ? _value.releatedDocId
          : releatedDocId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyNotification implements _MyNotification {
  const _$_MyNotification(
      {required this.id,
      required this.text,
      @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
          required this.notificationType,
      required this.releatedDocId,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_MyNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_MyNotificationFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
  final NotificationType notificationType;
  @override
  final String releatedDocId;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'MyNotification.data(id: $id, text: $text, notificationType: $notificationType, releatedDocId: $releatedDocId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.notificationType, notificationType) ||
                const DeepCollectionEquality()
                    .equals(other.notificationType, notificationType)) &&
            (identical(other.releatedDocId, releatedDocId) ||
                const DeepCollectionEquality()
                    .equals(other.releatedDocId, releatedDocId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(notificationType) ^
      const DeepCollectionEquality().hash(releatedDocId) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$MyNotificationCopyWith<_MyNotification> get copyWith =>
      __$MyNotificationCopyWithImpl<_MyNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String text,
            @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
                NotificationType notificationType,
            String releatedDocId,
            @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
                Timestamp createdAt)
        data,
  }) {
    return data(id, text, notificationType, releatedDocId, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String text,
            @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
                NotificationType notificationType,
            String releatedDocId,
            @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
                Timestamp createdAt)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(id, text, notificationType, releatedDocId, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyNotification value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyNotification value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyNotificationToJson(this);
  }
}

abstract class _MyNotification implements MyNotification {
  const factory _MyNotification(
      {required String id,
      required String text,
      @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
          required NotificationType notificationType,
      required String releatedDocId,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_MyNotification;

  factory _MyNotification.fromJson(Map<String, dynamic> json) =
      _$_MyNotification.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
  NotificationType get notificationType => throw _privateConstructorUsedError;
  @override
  String get releatedDocId => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyNotificationCopyWith<_MyNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationListStatusTearOff {
  const _$NotificationListStatusTearOff();

  Data data(List<MyNotification> myNotification) {
    return Data(
      myNotification,
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
const $NotificationListStatus = _$NotificationListStatusTearOff();

/// @nodoc
mixin _$NotificationListStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyNotification> myNotification) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> myNotification)? data,
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
abstract class $NotificationListStatusCopyWith<$Res> {
  factory $NotificationListStatusCopyWith(NotificationListStatus value,
          $Res Function(NotificationListStatus) then) =
      _$NotificationListStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationListStatusCopyWithImpl<$Res>
    implements $NotificationListStatusCopyWith<$Res> {
  _$NotificationListStatusCopyWithImpl(this._value, this._then);

  final NotificationListStatus _value;
  // ignore: unused_field
  final $Res Function(NotificationListStatus) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<MyNotification> myNotification});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$NotificationListStatusCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? myNotification = freezed,
  }) {
    return _then(Data(
      myNotification == freezed
          ? _value.myNotification
          : myNotification // ignore: cast_nullable_to_non_nullable
              as List<MyNotification>,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.myNotification);

  @override
  final List<MyNotification> myNotification;

  @override
  String toString() {
    return 'NotificationListStatus.data(myNotification: $myNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.myNotification, myNotification) ||
                const DeepCollectionEquality()
                    .equals(other.myNotification, myNotification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(myNotification);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyNotification> myNotification) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(myNotification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> myNotification)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(myNotification);
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

abstract class Data implements NotificationListStatus {
  const factory Data(List<MyNotification> myNotification) = _$Data;

  List<MyNotification> get myNotification => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$NotificationListStatusCopyWithImpl<$Res>
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
    return 'NotificationListStatus.loading()';
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
    required TResult Function(List<MyNotification> myNotification) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> myNotification)? data,
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

abstract class Loading implements NotificationListStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    extends _$NotificationListStatusCopyWithImpl<$Res>
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
    return 'NotificationListStatus.error(message: $message)';
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
    required TResult Function(List<MyNotification> myNotification) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> myNotification)? data,
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

abstract class Error implements NotificationListStatus {
  const factory Error(String message) = _$Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
