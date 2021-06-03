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
  switch (json['runtimeType'] as String) {
    case 'default':
      return _GiftReqeust.fromJson(json);
    case 'loading':
      return Loading.fromJson(json);
    case 'error':
      return Error.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GiftReqeustTearOff {
  const _$GiftReqeustTearOff();

  _GiftReqeust call(
      {String? id,
      required String giftId,
      required bool requestConfirmed,
      required bool requestDenied,
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
      requestConfirmed: requestConfirmed,
      requestDenied: requestDenied,
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

  Loading loading() {
    return const Loading();
  }

  Error error(Object e) {
    return Error(
      e,
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)
        $default, {
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)?
        $default, {
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GiftReqeust value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GiftReqeust value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftReqeustCopyWith<$Res> {
  factory $GiftReqeustCopyWith(
          GiftReqeust value, $Res Function(GiftReqeust) then) =
      _$GiftReqeustCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftReqeustCopyWithImpl<$Res> implements $GiftReqeustCopyWith<$Res> {
  _$GiftReqeustCopyWithImpl(this._value, this._then);

  final GiftReqeust _value;
  // ignore: unused_field
  final $Res Function(GiftReqeust) _then;
}

/// @nodoc
abstract class _$GiftReqeustCopyWith<$Res> {
  factory _$GiftReqeustCopyWith(
          _GiftReqeust value, $Res Function(_GiftReqeust) then) =
      __$GiftReqeustCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String giftId,
      bool requestConfirmed,
      bool requestDenied,
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
    Object? requestConfirmed = freezed,
    Object? requestDenied = freezed,
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
      requestConfirmed: requestConfirmed == freezed
          ? _value.requestConfirmed
          : requestConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      requestDenied: requestDenied == freezed
          ? _value.requestDenied
          : requestDenied // ignore: cast_nullable_to_non_nullable
              as bool,
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
@JsonSerializable()
class _$_GiftReqeust implements _GiftReqeust {
  const _$_GiftReqeust(
      {this.id,
      required this.giftId,
      required this.requestConfirmed,
      required this.requestDenied,
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
  final bool requestConfirmed;
  @override
  final bool requestDenied;
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
    return 'GiftReqeust(id: $id, giftId: $giftId, requestConfirmed: $requestConfirmed, requestDenied: $requestDenied, giverUid: $giverUid, giftArea: $giftArea, giftOfferedByRequester: $giftOfferedByRequester, giftReceivedByRequester: $giftReceivedByRequester, requesterUid: $requesterUid, requesterMessage: $requesterMessage, requesterAvgRating: $requesterAvgRating, requesterTotRating: $requesterTotRating, requesterRatingSum: $requesterRatingSum, giftFor: $giftFor, giftType: $giftType, giftImageUrl: $giftImageUrl, giftDetails: $giftDetails, requesterPosition: $requesterPosition, giftPosition: $giftPosition, requesterName: $requesterName, giftGiverImageUrl: $giftGiverImageUrl, requesterImageUrl: $requesterImageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftReqeust &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftId, giftId) ||
                const DeepCollectionEquality().equals(other.giftId, giftId)) &&
            (identical(other.requestConfirmed, requestConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.requestConfirmed, requestConfirmed)) &&
            (identical(other.requestDenied, requestDenied) ||
                const DeepCollectionEquality()
                    .equals(other.requestDenied, requestDenied)) &&
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
                const DeepCollectionEquality().equals(other.giftPosition, giftPosition)) &&
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
      const DeepCollectionEquality().hash(requestConfirmed) ^
      const DeepCollectionEquality().hash(requestDenied) ^
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)
        $default, {
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return $default(
        id,
        giftId,
        requestConfirmed,
        requestDenied,
        giverUid,
        giftArea,
        giftOfferedByRequester,
        giftReceivedByRequester,
        requesterUid,
        requesterMessage,
        requesterAvgRating,
        requesterTotRating,
        requesterRatingSum,
        giftFor,
        giftType,
        giftImageUrl,
        giftDetails,
        requesterPosition,
        giftPosition,
        requesterName,
        giftGiverImageUrl,
        requesterImageUrl,
        createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)?
        $default, {
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id,
          giftId,
          requestConfirmed,
          requestDenied,
          giverUid,
          giftArea,
          giftOfferedByRequester,
          giftReceivedByRequester,
          requesterUid,
          requesterMessage,
          requesterAvgRating,
          requesterTotRating,
          requesterRatingSum,
          giftFor,
          giftType,
          giftImageUrl,
          giftDetails,
          requesterPosition,
          giftPosition,
          requesterName,
          giftGiverImageUrl,
          requesterImageUrl,
          createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GiftReqeust value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GiftReqeust value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftReqeustToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _GiftReqeust implements GiftReqeust {
  const factory _GiftReqeust(
      {String? id,
      required String giftId,
      required bool requestConfirmed,
      required bool requestDenied,
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

  String? get id => throw _privateConstructorUsedError;
  String get giftId => throw _privateConstructorUsedError;
  bool get requestConfirmed => throw _privateConstructorUsedError;
  bool get requestDenied => throw _privateConstructorUsedError;
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
  @JsonKey(ignore: true)
  _$GiftReqeustCopyWith<_GiftReqeust> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$GiftReqeustCopyWithImpl<$Res>
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
    return 'GiftReqeust.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)
        $default, {
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)?
        $default, {
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GiftReqeust value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GiftReqeust value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
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

abstract class Loading implements GiftReqeust {
  const factory Loading() = _$Loading;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading.fromJson;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$GiftReqeustCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(Error(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Error implements Error {
  const _$Error(this.e);

  factory _$Error.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorFromJson(json);

  @override
  final Object e;

  @override
  String toString() {
    return 'GiftReqeust.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)
        $default, {
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String giftId,
            bool requestConfirmed,
            bool requestDenied,
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
                Timestamp createdAt)?
        $default, {
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GiftReqeust value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GiftReqeust value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
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

abstract class Error implements GiftReqeust {
  const factory Error(Object e) = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;

  Object get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
