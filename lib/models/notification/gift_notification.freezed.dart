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
      required String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          required GiftRequestStatus giftRequestStatus,
      required String giftImageUrl,
      required String requesterImageUrl,
      required String requesterName,
      required String requesterUid,
      required String requesterMessage,
      required double requesterAvgRating,
      required double requesterTotRating,
      required double requesterRatingSum,
      required double giverAvgRating,
      required double giverTotRating,
      required double giverRatingSum,
      required String giverName,
      required String giverImageUrl,
      required String giverUid,
      required String giftLocation,
      required String giftArea,
      required String notificationFor,
      String commentsForGiver = '',
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition giftPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition giverPosition,
      required List<String> notificationForList,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp giverJoinedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp requesterJoinedAt,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          required GiftNotificationType notificationType,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftNotification(
      id: id,
      giftId: giftId,
      giftRequestStatus: giftRequestStatus,
      giftImageUrl: giftImageUrl,
      requesterImageUrl: requesterImageUrl,
      requesterName: requesterName,
      requesterUid: requesterUid,
      requesterMessage: requesterMessage,
      requesterAvgRating: requesterAvgRating,
      requesterTotRating: requesterTotRating,
      requesterRatingSum: requesterRatingSum,
      giverAvgRating: giverAvgRating,
      giverTotRating: giverTotRating,
      giverRatingSum: giverRatingSum,
      giverName: giverName,
      giverImageUrl: giverImageUrl,
      giverUid: giverUid,
      giftLocation: giftLocation,
      giftArea: giftArea,
      notificationFor: notificationFor,
      commentsForGiver: commentsForGiver,
      giftPosition: giftPosition,
      requesterPosition: requesterPosition,
      giverPosition: giverPosition,
      notificationForList: notificationForList,
      giverJoinedAt: giverJoinedAt,
      requesterJoinedAt: requesterJoinedAt,
      giftType: giftType,
      notificationType: notificationType,
      createdAt: createdAt,
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
  String get giftId => throw _privateConstructorUsedError;
  @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  String get giftImageUrl => throw _privateConstructorUsedError;
  String get requesterImageUrl => throw _privateConstructorUsedError;
  String get requesterName => throw _privateConstructorUsedError;
  String get requesterUid => throw _privateConstructorUsedError;
  String get requesterMessage => throw _privateConstructorUsedError;
  double get requesterAvgRating => throw _privateConstructorUsedError;
  double get requesterTotRating => throw _privateConstructorUsedError;
  double get requesterRatingSum => throw _privateConstructorUsedError;
  double get giverAvgRating => throw _privateConstructorUsedError;
  double get giverTotRating => throw _privateConstructorUsedError;
  double get giverRatingSum => throw _privateConstructorUsedError;
  String get giverName => throw _privateConstructorUsedError;
  String get giverImageUrl => throw _privateConstructorUsedError;
  String get giverUid => throw _privateConstructorUsedError;
  String get giftLocation => throw _privateConstructorUsedError;
  String get giftArea => throw _privateConstructorUsedError;
  String get notificationFor => throw _privateConstructorUsedError;
  String get commentsForGiver => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get giftPosition => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get requesterPosition => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get giverPosition => throw _privateConstructorUsedError;
  List<String> get notificationForList => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get giverJoinedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get requesterJoinedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: giftNotificationTypeFromJson,
      toJson: giftNotificationTypeToJson)
  GiftNotificationType get notificationType =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

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
      String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          GiftRequestStatus giftRequestStatus,
      String giftImageUrl,
      String requesterImageUrl,
      String requesterName,
      String requesterUid,
      String requesterMessage,
      double requesterAvgRating,
      double requesterTotRating,
      double requesterRatingSum,
      double giverAvgRating,
      double giverTotRating,
      double giverRatingSum,
      String giverName,
      String giverImageUrl,
      String giverUid,
      String giftLocation,
      String giftArea,
      String notificationFor,
      String commentsForGiver,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition giftPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition giverPosition,
      List<String> notificationForList,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp giverJoinedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp requesterJoinedAt,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          GiftNotificationType notificationType,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $MyPositionCopyWith<$Res> get giftPosition;
  $MyPositionCopyWith<$Res> get requesterPosition;
  $MyPositionCopyWith<$Res> get giverPosition;
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
    Object? giftId = freezed,
    Object? giftRequestStatus = freezed,
    Object? giftImageUrl = freezed,
    Object? requesterImageUrl = freezed,
    Object? requesterName = freezed,
    Object? requesterUid = freezed,
    Object? requesterMessage = freezed,
    Object? requesterAvgRating = freezed,
    Object? requesterTotRating = freezed,
    Object? requesterRatingSum = freezed,
    Object? giverAvgRating = freezed,
    Object? giverTotRating = freezed,
    Object? giverRatingSum = freezed,
    Object? giverName = freezed,
    Object? giverImageUrl = freezed,
    Object? giverUid = freezed,
    Object? giftLocation = freezed,
    Object? giftArea = freezed,
    Object? notificationFor = freezed,
    Object? commentsForGiver = freezed,
    Object? giftPosition = freezed,
    Object? requesterPosition = freezed,
    Object? giverPosition = freezed,
    Object? notificationForList = freezed,
    Object? giverJoinedAt = freezed,
    Object? requesterJoinedAt = freezed,
    Object? giftType = freezed,
    Object? notificationType = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftId: giftId == freezed
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      giftImageUrl: giftImageUrl == freezed
          ? _value.giftImageUrl
          : giftImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requesterImageUrl: requesterImageUrl == freezed
          ? _value.requesterImageUrl
          : requesterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUid: requesterUid == freezed
          ? _value.requesterUid
          : requesterUid // ignore: cast_nullable_to_non_nullable
              as String,
      requesterMessage: requesterMessage == freezed
          ? _value.requesterMessage
          : requesterMessage // ignore: cast_nullable_to_non_nullable
              as String,
      requesterAvgRating: requesterAvgRating == freezed
          ? _value.requesterAvgRating
          : requesterAvgRating // ignore: cast_nullable_to_non_nullable
              as double,
      requesterTotRating: requesterTotRating == freezed
          ? _value.requesterTotRating
          : requesterTotRating // ignore: cast_nullable_to_non_nullable
              as double,
      requesterRatingSum: requesterRatingSum == freezed
          ? _value.requesterRatingSum
          : requesterRatingSum // ignore: cast_nullable_to_non_nullable
              as double,
      giverAvgRating: giverAvgRating == freezed
          ? _value.giverAvgRating
          : giverAvgRating // ignore: cast_nullable_to_non_nullable
              as double,
      giverTotRating: giverTotRating == freezed
          ? _value.giverTotRating
          : giverTotRating // ignore: cast_nullable_to_non_nullable
              as double,
      giverRatingSum: giverRatingSum == freezed
          ? _value.giverRatingSum
          : giverRatingSum // ignore: cast_nullable_to_non_nullable
              as double,
      giverName: giverName == freezed
          ? _value.giverName
          : giverName // ignore: cast_nullable_to_non_nullable
              as String,
      giverImageUrl: giverImageUrl == freezed
          ? _value.giverImageUrl
          : giverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftLocation: giftLocation == freezed
          ? _value.giftLocation
          : giftLocation // ignore: cast_nullable_to_non_nullable
              as String,
      giftArea: giftArea == freezed
          ? _value.giftArea
          : giftArea // ignore: cast_nullable_to_non_nullable
              as String,
      notificationFor: notificationFor == freezed
          ? _value.notificationFor
          : notificationFor // ignore: cast_nullable_to_non_nullable
              as String,
      commentsForGiver: commentsForGiver == freezed
          ? _value.commentsForGiver
          : commentsForGiver // ignore: cast_nullable_to_non_nullable
              as String,
      giftPosition: giftPosition == freezed
          ? _value.giftPosition
          : giftPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      requesterPosition: requesterPosition == freezed
          ? _value.requesterPosition
          : requesterPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      giverPosition: giverPosition == freezed
          ? _value.giverPosition
          : giverPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      notificationForList: notificationForList == freezed
          ? _value.notificationForList
          : notificationForList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      giverJoinedAt: giverJoinedAt == freezed
          ? _value.giverJoinedAt
          : giverJoinedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      requesterJoinedAt: requesterJoinedAt == freezed
          ? _value.requesterJoinedAt
          : requesterJoinedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as GiftNotificationType,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  @override
  $MyPositionCopyWith<$Res> get giftPosition {
    return $MyPositionCopyWith<$Res>(_value.giftPosition, (value) {
      return _then(_value.copyWith(giftPosition: value));
    });
  }

  @override
  $MyPositionCopyWith<$Res> get requesterPosition {
    return $MyPositionCopyWith<$Res>(_value.requesterPosition, (value) {
      return _then(_value.copyWith(requesterPosition: value));
    });
  }

  @override
  $MyPositionCopyWith<$Res> get giverPosition {
    return $MyPositionCopyWith<$Res>(_value.giverPosition, (value) {
      return _then(_value.copyWith(giverPosition: value));
    });
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
      String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          GiftRequestStatus giftRequestStatus,
      String giftImageUrl,
      String requesterImageUrl,
      String requesterName,
      String requesterUid,
      String requesterMessage,
      double requesterAvgRating,
      double requesterTotRating,
      double requesterRatingSum,
      double giverAvgRating,
      double giverTotRating,
      double giverRatingSum,
      String giverName,
      String giverImageUrl,
      String giverUid,
      String giftLocation,
      String giftArea,
      String notificationFor,
      String commentsForGiver,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition giftPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition giverPosition,
      List<String> notificationForList,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp giverJoinedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp requesterJoinedAt,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          GiftNotificationType notificationType,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $MyPositionCopyWith<$Res> get giftPosition;
  @override
  $MyPositionCopyWith<$Res> get requesterPosition;
  @override
  $MyPositionCopyWith<$Res> get giverPosition;
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
    Object? giftId = freezed,
    Object? giftRequestStatus = freezed,
    Object? giftImageUrl = freezed,
    Object? requesterImageUrl = freezed,
    Object? requesterName = freezed,
    Object? requesterUid = freezed,
    Object? requesterMessage = freezed,
    Object? requesterAvgRating = freezed,
    Object? requesterTotRating = freezed,
    Object? requesterRatingSum = freezed,
    Object? giverAvgRating = freezed,
    Object? giverTotRating = freezed,
    Object? giverRatingSum = freezed,
    Object? giverName = freezed,
    Object? giverImageUrl = freezed,
    Object? giverUid = freezed,
    Object? giftLocation = freezed,
    Object? giftArea = freezed,
    Object? notificationFor = freezed,
    Object? commentsForGiver = freezed,
    Object? giftPosition = freezed,
    Object? requesterPosition = freezed,
    Object? giverPosition = freezed,
    Object? notificationForList = freezed,
    Object? giverJoinedAt = freezed,
    Object? requesterJoinedAt = freezed,
    Object? giftType = freezed,
    Object? notificationType = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftId: giftId == freezed
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      giftImageUrl: giftImageUrl == freezed
          ? _value.giftImageUrl
          : giftImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requesterImageUrl: requesterImageUrl == freezed
          ? _value.requesterImageUrl
          : requesterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUid: requesterUid == freezed
          ? _value.requesterUid
          : requesterUid // ignore: cast_nullable_to_non_nullable
              as String,
      requesterMessage: requesterMessage == freezed
          ? _value.requesterMessage
          : requesterMessage // ignore: cast_nullable_to_non_nullable
              as String,
      requesterAvgRating: requesterAvgRating == freezed
          ? _value.requesterAvgRating
          : requesterAvgRating // ignore: cast_nullable_to_non_nullable
              as double,
      requesterTotRating: requesterTotRating == freezed
          ? _value.requesterTotRating
          : requesterTotRating // ignore: cast_nullable_to_non_nullable
              as double,
      requesterRatingSum: requesterRatingSum == freezed
          ? _value.requesterRatingSum
          : requesterRatingSum // ignore: cast_nullable_to_non_nullable
              as double,
      giverAvgRating: giverAvgRating == freezed
          ? _value.giverAvgRating
          : giverAvgRating // ignore: cast_nullable_to_non_nullable
              as double,
      giverTotRating: giverTotRating == freezed
          ? _value.giverTotRating
          : giverTotRating // ignore: cast_nullable_to_non_nullable
              as double,
      giverRatingSum: giverRatingSum == freezed
          ? _value.giverRatingSum
          : giverRatingSum // ignore: cast_nullable_to_non_nullable
              as double,
      giverName: giverName == freezed
          ? _value.giverName
          : giverName // ignore: cast_nullable_to_non_nullable
              as String,
      giverImageUrl: giverImageUrl == freezed
          ? _value.giverImageUrl
          : giverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftLocation: giftLocation == freezed
          ? _value.giftLocation
          : giftLocation // ignore: cast_nullable_to_non_nullable
              as String,
      giftArea: giftArea == freezed
          ? _value.giftArea
          : giftArea // ignore: cast_nullable_to_non_nullable
              as String,
      notificationFor: notificationFor == freezed
          ? _value.notificationFor
          : notificationFor // ignore: cast_nullable_to_non_nullable
              as String,
      commentsForGiver: commentsForGiver == freezed
          ? _value.commentsForGiver
          : commentsForGiver // ignore: cast_nullable_to_non_nullable
              as String,
      giftPosition: giftPosition == freezed
          ? _value.giftPosition
          : giftPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      requesterPosition: requesterPosition == freezed
          ? _value.requesterPosition
          : requesterPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      giverPosition: giverPosition == freezed
          ? _value.giverPosition
          : giverPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      notificationForList: notificationForList == freezed
          ? _value.notificationForList
          : notificationForList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      giverJoinedAt: giverJoinedAt == freezed
          ? _value.giverJoinedAt
          : giverJoinedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      requesterJoinedAt: requesterJoinedAt == freezed
          ? _value.requesterJoinedAt
          : requesterJoinedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as GiftNotificationType,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftNotification implements _GiftNotification {
  const _$_GiftNotification(
      {this.id,
      required this.giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          required this.giftRequestStatus,
      required this.giftImageUrl,
      required this.requesterImageUrl,
      required this.requesterName,
      required this.requesterUid,
      required this.requesterMessage,
      required this.requesterAvgRating,
      required this.requesterTotRating,
      required this.requesterRatingSum,
      required this.giverAvgRating,
      required this.giverTotRating,
      required this.giverRatingSum,
      required this.giverName,
      required this.giverImageUrl,
      required this.giverUid,
      required this.giftLocation,
      required this.giftArea,
      required this.notificationFor,
      this.commentsForGiver = '',
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.giftPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.giverPosition,
      required this.notificationForList,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.giverJoinedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.requesterJoinedAt,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required this.giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          required this.notificationType,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_GiftNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftNotificationFromJson(json);

  @override
  final String? id;
  @override
  final String giftId;
  @override
  @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
  final GiftRequestStatus giftRequestStatus;
  @override
  final String giftImageUrl;
  @override
  final String requesterImageUrl;
  @override
  final String requesterName;
  @override
  final String requesterUid;
  @override
  final String requesterMessage;
  @override
  final double requesterAvgRating;
  @override
  final double requesterTotRating;
  @override
  final double requesterRatingSum;
  @override
  final double giverAvgRating;
  @override
  final double giverTotRating;
  @override
  final double giverRatingSum;
  @override
  final String giverName;
  @override
  final String giverImageUrl;
  @override
  final String giverUid;
  @override
  final String giftLocation;
  @override
  final String giftArea;
  @override
  final String notificationFor;
  @JsonKey(defaultValue: '')
  @override
  final String commentsForGiver;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition giftPosition;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition requesterPosition;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition giverPosition;
  @override
  final List<String> notificationForList;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp giverJoinedAt;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp requesterJoinedAt;
  @override
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  final GiftType giftType;
  @override
  @JsonKey(
      fromJson: giftNotificationTypeFromJson,
      toJson: giftNotificationTypeToJson)
  final GiftNotificationType notificationType;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftNotification(id: $id, giftId: $giftId, giftRequestStatus: $giftRequestStatus, giftImageUrl: $giftImageUrl, requesterImageUrl: $requesterImageUrl, requesterName: $requesterName, requesterUid: $requesterUid, requesterMessage: $requesterMessage, requesterAvgRating: $requesterAvgRating, requesterTotRating: $requesterTotRating, requesterRatingSum: $requesterRatingSum, giverAvgRating: $giverAvgRating, giverTotRating: $giverTotRating, giverRatingSum: $giverRatingSum, giverName: $giverName, giverImageUrl: $giverImageUrl, giverUid: $giverUid, giftLocation: $giftLocation, giftArea: $giftArea, notificationFor: $notificationFor, commentsForGiver: $commentsForGiver, giftPosition: $giftPosition, requesterPosition: $requesterPosition, giverPosition: $giverPosition, notificationForList: $notificationForList, giverJoinedAt: $giverJoinedAt, requesterJoinedAt: $requesterJoinedAt, giftType: $giftType, notificationType: $notificationType, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftId, giftId) ||
                const DeepCollectionEquality().equals(other.giftId, giftId)) &&
            (identical(other.giftRequestStatus, giftRequestStatus) ||
                const DeepCollectionEquality()
                    .equals(other.giftRequestStatus, giftRequestStatus)) &&
            (identical(other.giftImageUrl, giftImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.giftImageUrl, giftImageUrl)) &&
            (identical(other.requesterImageUrl, requesterImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.requesterImageUrl, requesterImageUrl)) &&
            (identical(other.requesterName, requesterName) ||
                const DeepCollectionEquality()
                    .equals(other.requesterName, requesterName)) &&
            (identical(other.requesterUid, requesterUid) ||
                const DeepCollectionEquality()
                    .equals(other.requesterUid, requesterUid)) &&
            (identical(other.requesterMessage, requesterMessage) ||
                const DeepCollectionEquality()
                    .equals(other.requesterMessage, requesterMessage)) &&
            (identical(other.requesterAvgRating, requesterAvgRating) ||
                const DeepCollectionEquality()
                    .equals(other.requesterAvgRating, requesterAvgRating)) &&
            (identical(other.requesterTotRating, requesterTotRating) ||
                const DeepCollectionEquality()
                    .equals(other.requesterTotRating, requesterTotRating)) &&
            (identical(other.requesterRatingSum, requesterRatingSum) ||
                const DeepCollectionEquality()
                    .equals(other.requesterRatingSum, requesterRatingSum)) &&
            (identical(other.giverAvgRating, giverAvgRating) ||
                const DeepCollectionEquality()
                    .equals(other.giverAvgRating, giverAvgRating)) &&
            (identical(other.giverTotRating, giverTotRating) ||
                const DeepCollectionEquality()
                    .equals(other.giverTotRating, giverTotRating)) &&
            (identical(other.giverRatingSum, giverRatingSum) ||
                const DeepCollectionEquality()
                    .equals(other.giverRatingSum, giverRatingSum)) &&
            (identical(other.giverName, giverName) ||
                const DeepCollectionEquality()
                    .equals(other.giverName, giverName)) &&
            (identical(other.giverImageUrl, giverImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.giverImageUrl, giverImageUrl)) &&
            (identical(other.giverUid, giverUid) ||
                const DeepCollectionEquality()
                    .equals(other.giverUid, giverUid)) &&
            (identical(other.giftLocation, giftLocation) ||
                const DeepCollectionEquality()
                    .equals(other.giftLocation, giftLocation)) &&
            (identical(other.giftArea, giftArea) ||
                const DeepCollectionEquality()
                    .equals(other.giftArea, giftArea)) &&
            (identical(other.notificationFor, notificationFor) ||
                const DeepCollectionEquality()
                    .equals(other.notificationFor, notificationFor)) &&
            (identical(other.commentsForGiver, commentsForGiver) ||
                const DeepCollectionEquality()
                    .equals(other.commentsForGiver, commentsForGiver)) &&
            (identical(other.giftPosition, giftPosition) ||
                const DeepCollectionEquality()
                    .equals(other.giftPosition, giftPosition)) &&
            (identical(other.requesterPosition, requesterPosition) ||
                const DeepCollectionEquality().equals(other.requesterPosition, requesterPosition)) &&
            (identical(other.giverPosition, giverPosition) || const DeepCollectionEquality().equals(other.giverPosition, giverPosition)) &&
            (identical(other.notificationForList, notificationForList) || const DeepCollectionEquality().equals(other.notificationForList, notificationForList)) &&
            (identical(other.giverJoinedAt, giverJoinedAt) || const DeepCollectionEquality().equals(other.giverJoinedAt, giverJoinedAt)) &&
            (identical(other.requesterJoinedAt, requesterJoinedAt) || const DeepCollectionEquality().equals(other.requesterJoinedAt, requesterJoinedAt)) &&
            (identical(other.giftType, giftType) || const DeepCollectionEquality().equals(other.giftType, giftType)) &&
            (identical(other.notificationType, notificationType) || const DeepCollectionEquality().equals(other.notificationType, notificationType)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftId) ^
      const DeepCollectionEquality().hash(giftRequestStatus) ^
      const DeepCollectionEquality().hash(giftImageUrl) ^
      const DeepCollectionEquality().hash(requesterImageUrl) ^
      const DeepCollectionEquality().hash(requesterName) ^
      const DeepCollectionEquality().hash(requesterUid) ^
      const DeepCollectionEquality().hash(requesterMessage) ^
      const DeepCollectionEquality().hash(requesterAvgRating) ^
      const DeepCollectionEquality().hash(requesterTotRating) ^
      const DeepCollectionEquality().hash(requesterRatingSum) ^
      const DeepCollectionEquality().hash(giverAvgRating) ^
      const DeepCollectionEquality().hash(giverTotRating) ^
      const DeepCollectionEquality().hash(giverRatingSum) ^
      const DeepCollectionEquality().hash(giverName) ^
      const DeepCollectionEquality().hash(giverImageUrl) ^
      const DeepCollectionEquality().hash(giverUid) ^
      const DeepCollectionEquality().hash(giftLocation) ^
      const DeepCollectionEquality().hash(giftArea) ^
      const DeepCollectionEquality().hash(notificationFor) ^
      const DeepCollectionEquality().hash(commentsForGiver) ^
      const DeepCollectionEquality().hash(giftPosition) ^
      const DeepCollectionEquality().hash(requesterPosition) ^
      const DeepCollectionEquality().hash(giverPosition) ^
      const DeepCollectionEquality().hash(notificationForList) ^
      const DeepCollectionEquality().hash(giverJoinedAt) ^
      const DeepCollectionEquality().hash(requesterJoinedAt) ^
      const DeepCollectionEquality().hash(giftType) ^
      const DeepCollectionEquality().hash(notificationType) ^
      const DeepCollectionEquality().hash(createdAt);

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
      required String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          required GiftRequestStatus giftRequestStatus,
      required String giftImageUrl,
      required String requesterImageUrl,
      required String requesterName,
      required String requesterUid,
      required String requesterMessage,
      required double requesterAvgRating,
      required double requesterTotRating,
      required double requesterRatingSum,
      required double giverAvgRating,
      required double giverTotRating,
      required double giverRatingSum,
      required String giverName,
      required String giverImageUrl,
      required String giverUid,
      required String giftLocation,
      required String giftArea,
      required String notificationFor,
      String commentsForGiver,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition giftPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition giverPosition,
      required List<String> notificationForList,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp giverJoinedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp requesterJoinedAt,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
          required GiftNotificationType notificationType,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftNotification;

  factory _GiftNotification.fromJson(Map<String, dynamic> json) =
      _$_GiftNotification.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get giftId => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @override
  String get giftImageUrl => throw _privateConstructorUsedError;
  @override
  String get requesterImageUrl => throw _privateConstructorUsedError;
  @override
  String get requesterName => throw _privateConstructorUsedError;
  @override
  String get requesterUid => throw _privateConstructorUsedError;
  @override
  String get requesterMessage => throw _privateConstructorUsedError;
  @override
  double get requesterAvgRating => throw _privateConstructorUsedError;
  @override
  double get requesterTotRating => throw _privateConstructorUsedError;
  @override
  double get requesterRatingSum => throw _privateConstructorUsedError;
  @override
  double get giverAvgRating => throw _privateConstructorUsedError;
  @override
  double get giverTotRating => throw _privateConstructorUsedError;
  @override
  double get giverRatingSum => throw _privateConstructorUsedError;
  @override
  String get giverName => throw _privateConstructorUsedError;
  @override
  String get giverImageUrl => throw _privateConstructorUsedError;
  @override
  String get giverUid => throw _privateConstructorUsedError;
  @override
  String get giftLocation => throw _privateConstructorUsedError;
  @override
  String get giftArea => throw _privateConstructorUsedError;
  @override
  String get notificationFor => throw _privateConstructorUsedError;
  @override
  String get commentsForGiver => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get giftPosition => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get requesterPosition => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get giverPosition => throw _privateConstructorUsedError;
  @override
  List<String> get notificationForList => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get giverJoinedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get requesterJoinedAt => throw _privateConstructorUsedError;
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
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftNotificationCopyWith<_GiftNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
