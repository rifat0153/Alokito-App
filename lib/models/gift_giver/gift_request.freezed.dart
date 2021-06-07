// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftReqeust _$GiftReqeustFromJson(Map<String, dynamic> json) {
  return _GiftReqeust.fromJson(json);
}

/// @nodoc
class _$GiftReqeustTearOff {
  const _$GiftReqeustTearOff();

  _GiftReqeust call(
      {String? id,
      required String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          required GiftRequestStatus giftRequestStatus,
      required String giverUid,
      required String giftArea,
      required int giftOfferedByRequester,
      required int giftReceivedByRequester,
      required String requesterUid,
      required String requesterMessage,
      required double requesterAvgRating,
      required double requesterTotRating,
      required double requesterRatingSum,
      int giftFor = 0,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      required String giftImageUrl,
      required String giftDetails,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition giftPosition,
      required String requesterName,
      required String giftGiverImageUrl,
      required String requesterImageUrl,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftReqeust(
      id: id,
      giftId: giftId,
      giftRequestStatus: giftRequestStatus,
      giverUid: giverUid,
      giftArea: giftArea,
      giftOfferedByRequester: giftOfferedByRequester,
      giftReceivedByRequester: giftReceivedByRequester,
      requesterUid: requesterUid,
      requesterMessage: requesterMessage,
      requesterAvgRating: requesterAvgRating,
      requesterTotRating: requesterTotRating,
      requesterRatingSum: requesterRatingSum,
      giftFor: giftFor,
      giftType: giftType,
      giftImageUrl: giftImageUrl,
      giftDetails: giftDetails,
      requesterPosition: requesterPosition,
      giftPosition: giftPosition,
      requesterName: requesterName,
      giftGiverImageUrl: giftGiverImageUrl,
      requesterImageUrl: requesterImageUrl,
      createdAt: createdAt,
    );
  }

  GiftReqeust fromJson(Map<String, Object> json) {
    return GiftReqeust.fromJson(json);
  }
}

/// @nodoc
const $GiftReqeust = _$GiftReqeustTearOff();

/// @nodoc
mixin _$GiftReqeust {
  String? get id => throw _privateConstructorUsedError;
  String get giftId => throw _privateConstructorUsedError;
  @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  String get giverUid => throw _privateConstructorUsedError;
  String get giftArea => throw _privateConstructorUsedError;
  int get giftOfferedByRequester => throw _privateConstructorUsedError;
  int get giftReceivedByRequester => throw _privateConstructorUsedError;
  String get requesterUid => throw _privateConstructorUsedError;
  String get requesterMessage => throw _privateConstructorUsedError;
  double get requesterAvgRating => throw _privateConstructorUsedError;
  double get requesterTotRating => throw _privateConstructorUsedError;
  double get requesterRatingSum => throw _privateConstructorUsedError;
  int get giftFor => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  String get giftImageUrl => throw _privateConstructorUsedError;
  String get giftDetails => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get requesterPosition => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get giftPosition => throw _privateConstructorUsedError;
  String get requesterName => throw _privateConstructorUsedError;
  String get giftGiverImageUrl => throw _privateConstructorUsedError;
  String get requesterImageUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftReqeustCopyWith<GiftReqeust> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftReqeustCopyWith<$Res> {
  factory $GiftReqeustCopyWith(
          GiftReqeust value, $Res Function(GiftReqeust) then) =
      _$GiftReqeustCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          GiftRequestStatus giftRequestStatus,
      String giverUid,
      String giftArea,
      int giftOfferedByRequester,
      int giftReceivedByRequester,
      String requesterUid,
      String requesterMessage,
      double requesterAvgRating,
      double requesterTotRating,
      double requesterRatingSum,
      int giftFor,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      String giftImageUrl,
      String giftDetails,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition giftPosition,
      String requesterName,
      String giftGiverImageUrl,
      String requesterImageUrl,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $MyPositionCopyWith<$Res> get requesterPosition;
  $MyPositionCopyWith<$Res> get giftPosition;
}

/// @nodoc
class _$GiftReqeustCopyWithImpl<$Res> implements $GiftReqeustCopyWith<$Res> {
  _$GiftReqeustCopyWithImpl(this._value, this._then);

  final GiftReqeust _value;
  // ignore: unused_field
  final $Res Function(GiftReqeust) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftId = freezed,
    Object? giftRequestStatus = freezed,
    Object? giverUid = freezed,
    Object? giftArea = freezed,
    Object? giftOfferedByRequester = freezed,
    Object? giftReceivedByRequester = freezed,
    Object? requesterUid = freezed,
    Object? requesterMessage = freezed,
    Object? requesterAvgRating = freezed,
    Object? requesterTotRating = freezed,
    Object? requesterRatingSum = freezed,
    Object? giftFor = freezed,
    Object? giftType = freezed,
    Object? giftImageUrl = freezed,
    Object? giftDetails = freezed,
    Object? requesterPosition = freezed,
    Object? giftPosition = freezed,
    Object? requesterName = freezed,
    Object? giftGiverImageUrl = freezed,
    Object? requesterImageUrl = freezed,
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
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftArea: giftArea == freezed
          ? _value.giftArea
          : giftArea // ignore: cast_nullable_to_non_nullable
              as String,
      giftOfferedByRequester: giftOfferedByRequester == freezed
          ? _value.giftOfferedByRequester
          : giftOfferedByRequester // ignore: cast_nullable_to_non_nullable
              as int,
      giftReceivedByRequester: giftReceivedByRequester == freezed
          ? _value.giftReceivedByRequester
          : giftReceivedByRequester // ignore: cast_nullable_to_non_nullable
              as int,
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
      giftFor: giftFor == freezed
          ? _value.giftFor
          : giftFor // ignore: cast_nullable_to_non_nullable
              as int,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      giftImageUrl: giftImageUrl == freezed
          ? _value.giftImageUrl
          : giftImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      requesterPosition: requesterPosition == freezed
          ? _value.requesterPosition
          : requesterPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      giftPosition: giftPosition == freezed
          ? _value.giftPosition
          : giftPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      giftGiverImageUrl: giftGiverImageUrl == freezed
          ? _value.giftGiverImageUrl
          : giftGiverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requesterImageUrl: requesterImageUrl == freezed
          ? _value.requesterImageUrl
          : requesterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  @override
  $MyPositionCopyWith<$Res> get requesterPosition {
    return $MyPositionCopyWith<$Res>(_value.requesterPosition, (value) {
      return _then(_value.copyWith(requesterPosition: value));
    });
  }

  @override
  $MyPositionCopyWith<$Res> get giftPosition {
    return $MyPositionCopyWith<$Res>(_value.giftPosition, (value) {
      return _then(_value.copyWith(giftPosition: value));
    });
  }
}

/// @nodoc
abstract class _$GiftReqeustCopyWith<$Res>
    implements $GiftReqeustCopyWith<$Res> {
  factory _$GiftReqeustCopyWith(
          _GiftReqeust value, $Res Function(_GiftReqeust) then) =
      __$GiftReqeustCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          GiftRequestStatus giftRequestStatus,
      String giverUid,
      String giftArea,
      int giftOfferedByRequester,
      int giftReceivedByRequester,
      String requesterUid,
      String requesterMessage,
      double requesterAvgRating,
      double requesterTotRating,
      double requesterRatingSum,
      int giftFor,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      String giftImageUrl,
      String giftDetails,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition giftPosition,
      String requesterName,
      String giftGiverImageUrl,
      String requesterImageUrl,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $MyPositionCopyWith<$Res> get requesterPosition;
  @override
  $MyPositionCopyWith<$Res> get giftPosition;
}

/// @nodoc
class __$GiftReqeustCopyWithImpl<$Res> extends _$GiftReqeustCopyWithImpl<$Res>
    implements _$GiftReqeustCopyWith<$Res> {
  __$GiftReqeustCopyWithImpl(
      _GiftReqeust _value, $Res Function(_GiftReqeust) _then)
      : super(_value, (v) => _then(v as _GiftReqeust));

  @override
  _GiftReqeust get _value => super._value as _GiftReqeust;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftId = freezed,
    Object? giftRequestStatus = freezed,
    Object? giverUid = freezed,
    Object? giftArea = freezed,
    Object? giftOfferedByRequester = freezed,
    Object? giftReceivedByRequester = freezed,
    Object? requesterUid = freezed,
    Object? requesterMessage = freezed,
    Object? requesterAvgRating = freezed,
    Object? requesterTotRating = freezed,
    Object? requesterRatingSum = freezed,
    Object? giftFor = freezed,
    Object? giftType = freezed,
    Object? giftImageUrl = freezed,
    Object? giftDetails = freezed,
    Object? requesterPosition = freezed,
    Object? giftPosition = freezed,
    Object? requesterName = freezed,
    Object? giftGiverImageUrl = freezed,
    Object? requesterImageUrl = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftReqeust(
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
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftArea: giftArea == freezed
          ? _value.giftArea
          : giftArea // ignore: cast_nullable_to_non_nullable
              as String,
      giftOfferedByRequester: giftOfferedByRequester == freezed
          ? _value.giftOfferedByRequester
          : giftOfferedByRequester // ignore: cast_nullable_to_non_nullable
              as int,
      giftReceivedByRequester: giftReceivedByRequester == freezed
          ? _value.giftReceivedByRequester
          : giftReceivedByRequester // ignore: cast_nullable_to_non_nullable
              as int,
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
      giftFor: giftFor == freezed
          ? _value.giftFor
          : giftFor // ignore: cast_nullable_to_non_nullable
              as int,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      giftImageUrl: giftImageUrl == freezed
          ? _value.giftImageUrl
          : giftImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      requesterPosition: requesterPosition == freezed
          ? _value.requesterPosition
          : requesterPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      giftPosition: giftPosition == freezed
          ? _value.giftPosition
          : giftPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      giftGiverImageUrl: giftGiverImageUrl == freezed
          ? _value.giftGiverImageUrl
          : giftGiverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requesterImageUrl: requesterImageUrl == freezed
          ? _value.requesterImageUrl
          : requesterImageUrl // ignore: cast_nullable_to_non_nullable
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
class _$_GiftReqeust implements _GiftReqeust {
  const _$_GiftReqeust(
      {this.id,
      required this.giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          required this.giftRequestStatus,
      required this.giverUid,
      required this.giftArea,
      required this.giftOfferedByRequester,
      required this.giftReceivedByRequester,
      required this.requesterUid,
      required this.requesterMessage,
      required this.requesterAvgRating,
      required this.requesterTotRating,
      required this.requesterRatingSum,
      this.giftFor = 0,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required this.giftType,
      required this.giftImageUrl,
      required this.giftDetails,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.giftPosition,
      required this.requesterName,
      required this.giftGiverImageUrl,
      required this.requesterImageUrl,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_GiftReqeust.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftReqeustFromJson(json);

  @override
  final String? id;
  @override
  final String giftId;
  @override
  @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
  final GiftRequestStatus giftRequestStatus;
  @override
  final String giverUid;
  @override
  final String giftArea;
  @override
  final int giftOfferedByRequester;
  @override
  final int giftReceivedByRequester;
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
  @JsonKey(defaultValue: 0)
  @override
  final int giftFor;
  @override
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  final GiftType giftType;
  @override
  final String giftImageUrl;
  @override
  final String giftDetails;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition requesterPosition;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition giftPosition;
  @override
  final String requesterName;
  @override
  final String giftGiverImageUrl;
  @override
  final String requesterImageUrl;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftReqeust(id: $id, giftId: $giftId, giftRequestStatus: $giftRequestStatus, giverUid: $giverUid, giftArea: $giftArea, giftOfferedByRequester: $giftOfferedByRequester, giftReceivedByRequester: $giftReceivedByRequester, requesterUid: $requesterUid, requesterMessage: $requesterMessage, requesterAvgRating: $requesterAvgRating, requesterTotRating: $requesterTotRating, requesterRatingSum: $requesterRatingSum, giftFor: $giftFor, giftType: $giftType, giftImageUrl: $giftImageUrl, giftDetails: $giftDetails, requesterPosition: $requesterPosition, giftPosition: $giftPosition, requesterName: $requesterName, giftGiverImageUrl: $giftGiverImageUrl, requesterImageUrl: $requesterImageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftReqeust &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftId, giftId) ||
                const DeepCollectionEquality().equals(other.giftId, giftId)) &&
            (identical(other.giftRequestStatus, giftRequestStatus) ||
                const DeepCollectionEquality()
                    .equals(other.giftRequestStatus, giftRequestStatus)) &&
            (identical(other.giverUid, giverUid) ||
                const DeepCollectionEquality()
                    .equals(other.giverUid, giverUid)) &&
            (identical(other.giftArea, giftArea) ||
                const DeepCollectionEquality()
                    .equals(other.giftArea, giftArea)) &&
            (identical(other.giftOfferedByRequester, giftOfferedByRequester) ||
                const DeepCollectionEquality().equals(
                    other.giftOfferedByRequester, giftOfferedByRequester)) &&
            (identical(other.giftReceivedByRequester, giftReceivedByRequester) ||
                const DeepCollectionEquality().equals(
                    other.giftReceivedByRequester, giftReceivedByRequester)) &&
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
            (identical(other.giftFor, giftFor) ||
                const DeepCollectionEquality()
                    .equals(other.giftFor, giftFor)) &&
            (identical(other.giftType, giftType) ||
                const DeepCollectionEquality()
                    .equals(other.giftType, giftType)) &&
            (identical(other.giftImageUrl, giftImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.giftImageUrl, giftImageUrl)) &&
            (identical(other.giftDetails, giftDetails) ||
                const DeepCollectionEquality()
                    .equals(other.giftDetails, giftDetails)) &&
            (identical(other.requesterPosition, requesterPosition) ||
                const DeepCollectionEquality()
                    .equals(other.requesterPosition, requesterPosition)) &&
            (identical(other.giftPosition, giftPosition) ||
                const DeepCollectionEquality()
                    .equals(other.giftPosition, giftPosition)) &&
            (identical(other.requesterName, requesterName) || const DeepCollectionEquality().equals(other.requesterName, requesterName)) &&
            (identical(other.giftGiverImageUrl, giftGiverImageUrl) || const DeepCollectionEquality().equals(other.giftGiverImageUrl, giftGiverImageUrl)) &&
            (identical(other.requesterImageUrl, requesterImageUrl) || const DeepCollectionEquality().equals(other.requesterImageUrl, requesterImageUrl)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftId) ^
      const DeepCollectionEquality().hash(giftRequestStatus) ^
      const DeepCollectionEquality().hash(giverUid) ^
      const DeepCollectionEquality().hash(giftArea) ^
      const DeepCollectionEquality().hash(giftOfferedByRequester) ^
      const DeepCollectionEquality().hash(giftReceivedByRequester) ^
      const DeepCollectionEquality().hash(requesterUid) ^
      const DeepCollectionEquality().hash(requesterMessage) ^
      const DeepCollectionEquality().hash(requesterAvgRating) ^
      const DeepCollectionEquality().hash(requesterTotRating) ^
      const DeepCollectionEquality().hash(requesterRatingSum) ^
      const DeepCollectionEquality().hash(giftFor) ^
      const DeepCollectionEquality().hash(giftType) ^
      const DeepCollectionEquality().hash(giftImageUrl) ^
      const DeepCollectionEquality().hash(giftDetails) ^
      const DeepCollectionEquality().hash(requesterPosition) ^
      const DeepCollectionEquality().hash(giftPosition) ^
      const DeepCollectionEquality().hash(requesterName) ^
      const DeepCollectionEquality().hash(giftGiverImageUrl) ^
      const DeepCollectionEquality().hash(requesterImageUrl) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftReqeustCopyWith<_GiftReqeust> get copyWith =>
      __$GiftReqeustCopyWithImpl<_GiftReqeust>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftReqeustToJson(this);
  }
}

abstract class _GiftReqeust implements GiftReqeust {
  const factory _GiftReqeust(
      {String? id,
      required String giftId,
      @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
          required GiftRequestStatus giftRequestStatus,
      required String giverUid,
      required String giftArea,
      required int giftOfferedByRequester,
      required int giftReceivedByRequester,
      required String requesterUid,
      required String requesterMessage,
      required double requesterAvgRating,
      required double requesterTotRating,
      required double requesterRatingSum,
      int giftFor,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      required String giftImageUrl,
      required String giftDetails,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition requesterPosition,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition giftPosition,
      required String requesterName,
      required String giftGiverImageUrl,
      required String requesterImageUrl,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftReqeust;

  factory _GiftReqeust.fromJson(Map<String, dynamic> json) =
      _$_GiftReqeust.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get giftId => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @override
  String get giverUid => throw _privateConstructorUsedError;
  @override
  String get giftArea => throw _privateConstructorUsedError;
  @override
  int get giftOfferedByRequester => throw _privateConstructorUsedError;
  @override
  int get giftReceivedByRequester => throw _privateConstructorUsedError;
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
  int get giftFor => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  @override
  String get giftImageUrl => throw _privateConstructorUsedError;
  @override
  String get giftDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get requesterPosition => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get giftPosition => throw _privateConstructorUsedError;
  @override
  String get requesterName => throw _privateConstructorUsedError;
  @override
  String get giftGiverImageUrl => throw _privateConstructorUsedError;
  @override
  String get requesterImageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftReqeustCopyWith<_GiftReqeust> get copyWith =>
      throw _privateConstructorUsedError;
}
