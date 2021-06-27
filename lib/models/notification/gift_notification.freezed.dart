// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftNotification _$GiftNotificationFromJson(Map<String, dynamic> json) {
  return _GiftNotification.fromJson(json);
}

/// @nodoc
class _$GiftNotificationTearOff {
  const _$GiftNotificationTearOff();

  _GiftNotification call(
      {String? id,
      @JsonKey(toJson: giftNotificationTypeToJson, fromJson: giftNotificationTypeFromJson)
          required GiftNotificationType giftNotificationType,
      required String notification}) {
    return _GiftNotification(
      id: id,
      giftNotificationType: giftNotificationType,
      notification: notification,
    );
  }

  GiftNotification fromJson(Map<String, Object> json) {
    return GiftNotification.fromJson(json);
  }
}

/// @nodoc
const $GiftNotification = _$GiftNotificationTearOff();

/// @nodoc
mixin _$GiftNotification {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: giftNotificationTypeToJson,
      fromJson: giftNotificationTypeFromJson)
  GiftNotificationType get giftNotificationType =>
      throw _privateConstructorUsedError;
  String get notification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftNotificationCopyWith<GiftNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftNotificationCopyWith<$Res> {
  factory $GiftNotificationCopyWith(
          GiftNotification value, $Res Function(GiftNotification) then) =
      _$GiftNotificationCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(toJson: giftNotificationTypeToJson, fromJson: giftNotificationTypeFromJson)
          GiftNotificationType giftNotificationType,
      String notification});
}

/// @nodoc
class _$GiftNotificationCopyWithImpl<$Res>
    implements $GiftNotificationCopyWith<$Res> {
  _$GiftNotificationCopyWithImpl(this._value, this._then);

  final GiftNotification _value;
  // ignore: unused_field
  final $Res Function(GiftNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftNotificationType = freezed,
    Object? notification = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftNotificationType: giftNotificationType == freezed
          ? _value.giftNotificationType
          : giftNotificationType // ignore: cast_nullable_to_non_nullable
              as GiftNotificationType,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GiftNotificationCopyWith<$Res>
    implements $GiftNotificationCopyWith<$Res> {
  factory _$GiftNotificationCopyWith(
          _GiftNotification value, $Res Function(_GiftNotification) then) =
      __$GiftNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(toJson: giftNotificationTypeToJson, fromJson: giftNotificationTypeFromJson)
          GiftNotificationType giftNotificationType,
      String notification});
}

/// @nodoc
class __$GiftNotificationCopyWithImpl<$Res>
    extends _$GiftNotificationCopyWithImpl<$Res>
    implements _$GiftNotificationCopyWith<$Res> {
  __$GiftNotificationCopyWithImpl(
      _GiftNotification _value, $Res Function(_GiftNotification) _then)
      : super(_value, (v) => _then(v as _GiftNotification));

  @override
  _GiftNotification get _value => super._value as _GiftNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftNotificationType = freezed,
    Object? notification = freezed,
  }) {
    return _then(_GiftNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftNotificationType: giftNotificationType == freezed
          ? _value.giftNotificationType
          : giftNotificationType // ignore: cast_nullable_to_non_nullable
              as GiftNotificationType,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftNotification implements _GiftNotification {
  const _$_GiftNotification(
      {this.id,
      @JsonKey(toJson: giftNotificationTypeToJson, fromJson: giftNotificationTypeFromJson)
          required this.giftNotificationType,
      required this.notification});

  factory _$_GiftNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftNotificationFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(
      toJson: giftNotificationTypeToJson,
      fromJson: giftNotificationTypeFromJson)
  final GiftNotificationType giftNotificationType;
  @override
  final String notification;

  @override
  String toString() {
    return 'GiftNotification(id: $id, giftNotificationType: $giftNotificationType, notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftNotificationType, giftNotificationType) ||
                const DeepCollectionEquality().equals(
                    other.giftNotificationType, giftNotificationType)) &&
            (identical(other.notification, notification) ||
                const DeepCollectionEquality()
                    .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftNotificationType) ^
      const DeepCollectionEquality().hash(notification);

  @JsonKey(ignore: true)
  @override
  _$GiftNotificationCopyWith<_GiftNotification> get copyWith =>
      __$GiftNotificationCopyWithImpl<_GiftNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftNotificationToJson(this);
  }
}

abstract class _GiftNotification implements GiftNotification {
  const factory _GiftNotification(
      {String? id,
      @JsonKey(toJson: giftNotificationTypeToJson, fromJson: giftNotificationTypeFromJson)
          required GiftNotificationType giftNotificationType,
      required String notification}) = _$_GiftNotification;

  factory _GiftNotification.fromJson(Map<String, dynamic> json) =
      _$_GiftNotification.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      toJson: giftNotificationTypeToJson,
      fromJson: giftNotificationTypeFromJson)
  GiftNotificationType get giftNotificationType =>
      throw _privateConstructorUsedError;
  @override
  String get notification => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftNotificationCopyWith<_GiftNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
