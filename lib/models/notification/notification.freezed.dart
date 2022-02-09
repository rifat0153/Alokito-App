// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      String? user,
      required String relatedDocId,
      required String notificationType,
      @JsonKey(fromJson: giftRequestDocFromJson)
          GiftRequest? giftRequestDoc,
      @JsonKey(fromJson: giftAskRequestDocFromJson)
          GiftAskRequest? giftAskRequestDoc,
      required DateTime createdAt}) {
    return _MyNotification(
      id: id,
      text: text,
      user: user,
      relatedDocId: relatedDocId,
      notificationType: notificationType,
      giftRequestDoc: giftRequestDoc,
      giftAskRequestDoc: giftAskRequestDoc,
      createdAt: createdAt,
    );
  }

  MyNotification fromJson(Map<String, Object?> json) {
    return MyNotification.fromJson(json);
  }
}

/// @nodoc
const $MyNotification = _$MyNotificationTearOff();

/// @nodoc
mixin _$MyNotification {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String get relatedDocId => throw _privateConstructorUsedError;
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftRequestDocFromJson)
  GiftRequest? get giftRequestDoc => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftAskRequestDocFromJson)
  GiftAskRequest? get giftAskRequestDoc => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String text,
            String? user,
            String relatedDocId,
            String notificationType,
            @JsonKey(fromJson: giftRequestDocFromJson)
                GiftRequest? giftRequestDoc,
            @JsonKey(fromJson: giftAskRequestDocFromJson)
                GiftAskRequest? giftAskRequestDoc,
            DateTime createdAt)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String text,
            String? user,
            String relatedDocId,
            String notificationType,
            @JsonKey(fromJson: giftRequestDocFromJson)
                GiftRequest? giftRequestDoc,
            @JsonKey(fromJson: giftAskRequestDocFromJson)
                GiftAskRequest? giftAskRequestDoc,
            DateTime createdAt)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String text,
            String? user,
            String relatedDocId,
            String notificationType,
            @JsonKey(fromJson: giftRequestDocFromJson)
                GiftRequest? giftRequestDoc,
            @JsonKey(fromJson: giftAskRequestDocFromJson)
                GiftAskRequest? giftAskRequestDoc,
            DateTime createdAt)?
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyNotification value)? data,
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
      String? user,
      String relatedDocId,
      String notificationType,
      @JsonKey(fromJson: giftRequestDocFromJson)
          GiftRequest? giftRequestDoc,
      @JsonKey(fromJson: giftAskRequestDocFromJson)
          GiftAskRequest? giftAskRequestDoc,
      DateTime createdAt});

  $GiftRequestCopyWith<$Res>? get giftRequestDoc;
  $GiftAskRequestCopyWith<$Res>? get giftAskRequestDoc;
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
    Object? user = freezed,
    Object? relatedDocId = freezed,
    Object? notificationType = freezed,
    Object? giftRequestDoc = freezed,
    Object? giftAskRequestDoc = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedDocId: relatedDocId == freezed
          ? _value.relatedDocId
          : relatedDocId // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      giftRequestDoc: giftRequestDoc == freezed
          ? _value.giftRequestDoc
          : giftRequestDoc // ignore: cast_nullable_to_non_nullable
              as GiftRequest?,
      giftAskRequestDoc: giftAskRequestDoc == freezed
          ? _value.giftAskRequestDoc
          : giftAskRequestDoc // ignore: cast_nullable_to_non_nullable
              as GiftAskRequest?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $GiftRequestCopyWith<$Res>? get giftRequestDoc {
    if (_value.giftRequestDoc == null) {
      return null;
    }

    return $GiftRequestCopyWith<$Res>(_value.giftRequestDoc!, (value) {
      return _then(_value.copyWith(giftRequestDoc: value));
    });
  }

  @override
  $GiftAskRequestCopyWith<$Res>? get giftAskRequestDoc {
    if (_value.giftAskRequestDoc == null) {
      return null;
    }

    return $GiftAskRequestCopyWith<$Res>(_value.giftAskRequestDoc!, (value) {
      return _then(_value.copyWith(giftAskRequestDoc: value));
    });
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
      String? user,
      String relatedDocId,
      String notificationType,
      @JsonKey(fromJson: giftRequestDocFromJson)
          GiftRequest? giftRequestDoc,
      @JsonKey(fromJson: giftAskRequestDocFromJson)
          GiftAskRequest? giftAskRequestDoc,
      DateTime createdAt});

  @override
  $GiftRequestCopyWith<$Res>? get giftRequestDoc;
  @override
  $GiftAskRequestCopyWith<$Res>? get giftAskRequestDoc;
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
    Object? user = freezed,
    Object? relatedDocId = freezed,
    Object? notificationType = freezed,
    Object? giftRequestDoc = freezed,
    Object? giftAskRequestDoc = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedDocId: relatedDocId == freezed
          ? _value.relatedDocId
          : relatedDocId // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      giftRequestDoc: giftRequestDoc == freezed
          ? _value.giftRequestDoc
          : giftRequestDoc // ignore: cast_nullable_to_non_nullable
              as GiftRequest?,
      giftAskRequestDoc: giftAskRequestDoc == freezed
          ? _value.giftAskRequestDoc
          : giftAskRequestDoc // ignore: cast_nullable_to_non_nullable
              as GiftAskRequest?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyNotification implements _MyNotification {
  const _$_MyNotification(
      {required this.id,
      required this.text,
      this.user,
      required this.relatedDocId,
      required this.notificationType,
      @JsonKey(fromJson: giftRequestDocFromJson) this.giftRequestDoc,
      @JsonKey(fromJson: giftAskRequestDocFromJson) this.giftAskRequestDoc,
      required this.createdAt});

  factory _$_MyNotification.fromJson(Map<String, dynamic> json) =>
      _$$_MyNotificationFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String? user;
  @override
  final String relatedDocId;
  @override
  final String notificationType;
  @override
  @JsonKey(fromJson: giftRequestDocFromJson)
  final GiftRequest? giftRequestDoc;
  @override
  @JsonKey(fromJson: giftAskRequestDocFromJson)
  final GiftAskRequest? giftAskRequestDoc;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'MyNotification.data(id: $id, text: $text, user: $user, relatedDocId: $relatedDocId, notificationType: $notificationType, giftRequestDoc: $giftRequestDoc, giftAskRequestDoc: $giftAskRequestDoc, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyNotification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.relatedDocId, relatedDocId) ||
                other.relatedDocId == relatedDocId) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.giftRequestDoc, giftRequestDoc) ||
                other.giftRequestDoc == giftRequestDoc) &&
            (identical(other.giftAskRequestDoc, giftAskRequestDoc) ||
                other.giftAskRequestDoc == giftAskRequestDoc) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text, user, relatedDocId,
      notificationType, giftRequestDoc, giftAskRequestDoc, createdAt);

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
            String? user,
            String relatedDocId,
            String notificationType,
            @JsonKey(fromJson: giftRequestDocFromJson)
                GiftRequest? giftRequestDoc,
            @JsonKey(fromJson: giftAskRequestDocFromJson)
                GiftAskRequest? giftAskRequestDoc,
            DateTime createdAt)
        data,
  }) {
    return data(id, text, user, relatedDocId, notificationType, giftRequestDoc,
        giftAskRequestDoc, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String text,
            String? user,
            String relatedDocId,
            String notificationType,
            @JsonKey(fromJson: giftRequestDocFromJson)
                GiftRequest? giftRequestDoc,
            @JsonKey(fromJson: giftAskRequestDocFromJson)
                GiftAskRequest? giftAskRequestDoc,
            DateTime createdAt)?
        data,
  }) {
    return data?.call(id, text, user, relatedDocId, notificationType,
        giftRequestDoc, giftAskRequestDoc, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String text,
            String? user,
            String relatedDocId,
            String notificationType,
            @JsonKey(fromJson: giftRequestDocFromJson)
                GiftRequest? giftRequestDoc,
            @JsonKey(fromJson: giftAskRequestDocFromJson)
                GiftAskRequest? giftAskRequestDoc,
            DateTime createdAt)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(id, text, user, relatedDocId, notificationType,
          giftRequestDoc, giftAskRequestDoc, createdAt);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyNotification value)? data,
  }) {
    return data?.call(this);
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
    return _$$_MyNotificationToJson(this);
  }
}

abstract class _MyNotification implements MyNotification {
  const factory _MyNotification(
      {required String id,
      required String text,
      String? user,
      required String relatedDocId,
      required String notificationType,
      @JsonKey(fromJson: giftRequestDocFromJson)
          GiftRequest? giftRequestDoc,
      @JsonKey(fromJson: giftAskRequestDocFromJson)
          GiftAskRequest? giftAskRequestDoc,
      required DateTime createdAt}) = _$_MyNotification;

  factory _MyNotification.fromJson(Map<String, dynamic> json) =
      _$_MyNotification.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String? get user;
  @override
  String get relatedDocId;
  @override
  String get notificationType;
  @override
  @JsonKey(fromJson: giftRequestDocFromJson)
  GiftRequest? get giftRequestDoc;
  @override
  @JsonKey(fromJson: giftAskRequestDocFromJson)
  GiftAskRequest? get giftAskRequestDoc;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$MyNotificationCopyWith<_MyNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MyNotificationListStatusTearOff {
  const _$MyNotificationListStatusTearOff();

  Data data(List<MyNotification> notificationList) {
    return Data(
      notificationList,
    );
  }

  Empty empty() {
    return const Empty();
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
const $MyNotificationListStatus = _$MyNotificationListStatusTearOff();

/// @nodoc
mixin _$MyNotificationListStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyNotification> notificationList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyNotificationListStatusCopyWith<$Res> {
  factory $MyNotificationListStatusCopyWith(MyNotificationListStatus value,
          $Res Function(MyNotificationListStatus) then) =
      _$MyNotificationListStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyNotificationListStatusCopyWithImpl<$Res>
    implements $MyNotificationListStatusCopyWith<$Res> {
  _$MyNotificationListStatusCopyWithImpl(this._value, this._then);

  final MyNotificationListStatus _value;
  // ignore: unused_field
  final $Res Function(MyNotificationListStatus) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<MyNotification> notificationList});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$MyNotificationListStatusCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? notificationList = freezed,
  }) {
    return _then(Data(
      notificationList == freezed
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<MyNotification>,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.notificationList);

  @override
  final List<MyNotification> notificationList;

  @override
  String toString() {
    return 'MyNotificationListStatus.data(notificationList: $notificationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            const DeepCollectionEquality()
                .equals(other.notificationList, notificationList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notificationList));

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyNotification> notificationList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(notificationList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return data?.call(notificationList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(notificationList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
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

abstract class Data implements MyNotificationListStatus {
  const factory Data(List<MyNotification> notificationList) = _$Data;

  List<MyNotification> get notificationList;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res>
    extends _$MyNotificationListStatusCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'MyNotificationListStatus.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyNotification> notificationList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements MyNotificationListStatus {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$MyNotificationListStatusCopyWithImpl<$Res>
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
    return 'MyNotificationListStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyNotification> notificationList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
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
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
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

abstract class Loading implements MyNotificationListStatus {
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
    extends _$MyNotificationListStatusCopyWithImpl<$Res>
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
    return 'MyNotificationListStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyNotification> notificationList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyNotification> notificationList)? data,
    TResult Function()? empty,
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
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
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

abstract class Error implements MyNotificationListStatus {
  const factory Error(String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
