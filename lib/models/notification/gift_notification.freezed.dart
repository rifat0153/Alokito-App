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
      required String requesterName,
      required String requesterUid,
      required String giverName,
      required String giverUid,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          required GiftNotificationType notificationType}) {
    return _GiftNotification(
      id: id,
      requesterName: requesterName,
      requesterUid: requesterUid,
      giverName: giverName,
      giverUid: giverUid,
      giftType: giftType,
      notificationType: notificationType,
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
  String get requesterName => throw _privateConstructorUsedError;
  String get requesterUid => throw _privateConstructorUsedError;
  String get giverName => throw _privateConstructorUsedError;
  String get giverUid => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: giftNotificationTypeFromJson,
      toJson: giftNotificationTypeToJson)
  GiftNotificationType get notificationType =>
      throw _privateConstructorUsedError;

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
      String requesterName,
      String requesterUid,
      String giverName,
      String giverUid,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          GiftNotificationType notificationType});
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
    Object? requesterName = freezed,
    Object? requesterUid = freezed,
    Object? giverName = freezed,
    Object? giverUid = freezed,
    Object? giftType = freezed,
    Object? notificationType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUid: requesterUid == freezed
          ? _value.requesterUid
          : requesterUid // ignore: cast_nullable_to_non_nullable
              as String,
      giverName: giverName == freezed
          ? _value.giverName
          : giverName // ignore: cast_nullable_to_non_nullable
              as String,
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as GiftNotificationType,
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
      String requesterName,
      String requesterUid,
      String giverName,
      String giverUid,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          GiftNotificationType notificationType});
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
    Object? requesterName = freezed,
    Object? requesterUid = freezed,
    Object? giverName = freezed,
    Object? giverUid = freezed,
    Object? giftType = freezed,
    Object? notificationType = freezed,
  }) {
    return _then(_GiftNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUid: requesterUid == freezed
          ? _value.requesterUid
          : requesterUid // ignore: cast_nullable_to_non_nullable
              as String,
      giverName: giverName == freezed
          ? _value.giverName
          : giverName // ignore: cast_nullable_to_non_nullable
              as String,
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as GiftNotificationType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftNotification implements _GiftNotification {
  const _$_GiftNotification(
      {this.id,
      required this.requesterName,
      required this.requesterUid,
      required this.giverName,
      required this.giverUid,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required this.giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          required this.notificationType});

  factory _$_GiftNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftNotificationFromJson(json);

  @override
  final String? id;
  @override
  final String requesterName;
  @override
  final String requesterUid;
  @override
  final String giverName;
  @override
  final String giverUid;
  @override
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  final GiftType giftType;
  @override
  @JsonKey(
      fromJson: giftNotificationTypeFromJson,
      toJson: giftNotificationTypeToJson)
  final GiftNotificationType notificationType;

  @override
  String toString() {
    return 'GiftNotification(id: $id, requesterName: $requesterName, requesterUid: $requesterUid, giverName: $giverName, giverUid: $giverUid, giftType: $giftType, notificationType: $notificationType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.requesterName, requesterName) ||
                const DeepCollectionEquality()
                    .equals(other.requesterName, requesterName)) &&
            (identical(other.requesterUid, requesterUid) ||
                const DeepCollectionEquality()
                    .equals(other.requesterUid, requesterUid)) &&
            (identical(other.giverName, giverName) ||
                const DeepCollectionEquality()
                    .equals(other.giverName, giverName)) &&
            (identical(other.giverUid, giverUid) ||
                const DeepCollectionEquality()
                    .equals(other.giverUid, giverUid)) &&
            (identical(other.giftType, giftType) ||
                const DeepCollectionEquality()
                    .equals(other.giftType, giftType)) &&
            (identical(other.notificationType, notificationType) ||
                const DeepCollectionEquality()
                    .equals(other.notificationType, notificationType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(requesterName) ^
      const DeepCollectionEquality().hash(requesterUid) ^
      const DeepCollectionEquality().hash(giverName) ^
      const DeepCollectionEquality().hash(giverUid) ^
      const DeepCollectionEquality().hash(giftType) ^
      const DeepCollectionEquality().hash(notificationType);

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
      required String requesterName,
      required String requesterUid,
      required String giverName,
      required String giverUid,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          required GiftNotificationType notificationType}) = _$_GiftNotification;

  factory _GiftNotification.fromJson(Map<String, dynamic> json) =
      _$_GiftNotification.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get requesterName => throw _privateConstructorUsedError;
  @override
  String get requesterUid => throw _privateConstructorUsedError;
  @override
  String get giverName => throw _privateConstructorUsedError;
  @override
  String get giverUid => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      fromJson: giftNotificationTypeFromJson,
      toJson: giftNotificationTypeToJson)
  GiftNotificationType get notificationType =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftNotificationCopyWith<_GiftNotification> get copyWith =>
      throw _privateConstructorUsedError;
}