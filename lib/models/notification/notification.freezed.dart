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
  switch (json['runtimeType'] as String) {
    case 'loading':
      return Loading.fromJson(json);
    case 'data':
      return _MyNotification.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$MyNotificationTearOff {
  const _$MyNotificationTearOff();

  Loading loading() {
    return const Loading();
  }

  _MyNotification data(
      {String? id,
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String? id,
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
    TResult Function()? loading,
    TResult Function(
            String? id,
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
    required TResult Function(Loading value) loading,
    required TResult Function(_MyNotification value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(_MyNotification value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyNotificationCopyWith<$Res> {
  factory $MyNotificationCopyWith(
          MyNotification value, $Res Function(MyNotification) then) =
      _$MyNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyNotificationCopyWithImpl<$Res>
    implements $MyNotificationCopyWith<$Res> {
  _$MyNotificationCopyWithImpl(this._value, this._then);

  final MyNotification _value;
  // ignore: unused_field
  final $Res Function(MyNotification) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$MyNotificationCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
@JsonSerializable()
class _$Loading implements Loading {
  const _$Loading();

  factory _$Loading.fromJson(Map<String, dynamic> json) =>
      _$_$LoadingFromJson(json);

  @override
  String toString() {
    return 'MyNotification.loading()';
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
    required TResult Function(
            String? id,
            String text,
            @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
                NotificationType notificationType,
            String releatedDocId,
            @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
                Timestamp createdAt)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String? id,
            String text,
            @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
                NotificationType notificationType,
            String releatedDocId,
            @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
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
    required TResult Function(_MyNotification value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(_MyNotification value)? data,
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

abstract class Loading implements MyNotification {
  const factory Loading() = _$Loading;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading.fromJson;
}

/// @nodoc
abstract class _$MyNotificationCopyWith<$Res> {
  factory _$MyNotificationCopyWith(
          _MyNotification value, $Res Function(_MyNotification) then) =
      __$MyNotificationCopyWithImpl<$Res>;
  $Res call(
      {String? id,
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
              as String?,
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
      {this.id,
      required this.text,
      @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
          required this.notificationType,
      required this.releatedDocId,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_MyNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_MyNotificationFromJson(json);

  @override
  final String? id;
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
    required TResult Function() loading,
    required TResult Function(
            String? id,
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
    TResult Function()? loading,
    TResult Function(
            String? id,
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
    required TResult Function(Loading value) loading,
    required TResult Function(_MyNotification value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
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
    return _$_$_MyNotificationToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class _MyNotification implements MyNotification {
  const factory _MyNotification(
      {String? id,
      required String text,
      @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
          required NotificationType notificationType,
      required String releatedDocId,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_MyNotification;

  factory _MyNotification.fromJson(Map<String, dynamic> json) =
      _$_MyNotification.fromJson;

  String? get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(fromJson: notificationTypeFromJson, toJson: notificationTypeToJson)
  NotificationType get notificationType => throw _privateConstructorUsedError;
  String get releatedDocId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MyNotificationCopyWith<_MyNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
