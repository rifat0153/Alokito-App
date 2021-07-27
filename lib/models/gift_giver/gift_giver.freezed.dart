// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_giver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftGiver _$GiftGiverFromJson(Map<String, dynamic> json) {
  return _GiftGiver.fromJson(json);
}

/// @nodoc
class _$GiftGiverTearOff {
  const _$GiftGiverTearOff();

  _GiftGiver call(
      {String? id,
      int giftFor = 0,
      bool giftAcquired = false,
      required String userName,
      required double userAvgRating,
      required double userTotRating,
      required double userRatingSum,
      required String userImageUrl,
      required String userFullName,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition userPosition,
      required int distance,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      required String uid,
      required int givingGiftInDays,
      required String area,
      required String location,
      required String imageUrl,
      required String giftDetails,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp userCreatedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp listingDate,
      required int listingForDays,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp pickUpTime,
      required bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftGiver(
      id: id,
      giftFor: giftFor,
      giftAcquired: giftAcquired,
      userName: userName,
      userAvgRating: userAvgRating,
      userTotRating: userTotRating,
      userRatingSum: userRatingSum,
      userImageUrl: userImageUrl,
      userFullName: userFullName,
      userPosition: userPosition,
      distance: distance,
      giftType: giftType,
      uid: uid,
      givingGiftInDays: givingGiftInDays,
      area: area,
      location: location,
      imageUrl: imageUrl,
      giftDetails: giftDetails,
      userCreatedAt: userCreatedAt,
      listingDate: listingDate,
      listingForDays: listingForDays,
      pickUpTime: pickUpTime,
      canLeaveOutside: canLeaveOutside,
      position: position,
      createdAt: createdAt,
    );
  }

  GiftGiver fromJson(Map<String, Object> json) {
    return GiftGiver.fromJson(json);
  }
}

/// @nodoc
const $GiftGiver = _$GiftGiverTearOff();

/// @nodoc
mixin _$GiftGiver {
  String? get id => throw _privateConstructorUsedError;
  int get giftFor => throw _privateConstructorUsedError;
  bool get giftAcquired => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  double get userAvgRating => throw _privateConstructorUsedError;
  double get userTotRating => throw _privateConstructorUsedError;
  double get userRatingSum => throw _privateConstructorUsedError;
  String get userImageUrl => throw _privateConstructorUsedError;
  String get userFullName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get userPosition => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  int get givingGiftInDays => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get giftDetails => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get userCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get listingDate => throw _privateConstructorUsedError;
  int get listingForDays => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get pickUpTime => throw _privateConstructorUsedError;
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftGiverCopyWith<GiftGiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftGiverCopyWith<$Res> {
  factory $GiftGiverCopyWith(GiftGiver value, $Res Function(GiftGiver) then) =
      _$GiftGiverCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int giftFor,
      bool giftAcquired,
      String userName,
      double userAvgRating,
      double userTotRating,
      double userRatingSum,
      String userImageUrl,
      String userFullName,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition userPosition,
      int distance,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      String uid,
      int givingGiftInDays,
      String area,
      String location,
      String imageUrl,
      String giftDetails,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp userCreatedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp listingDate,
      int listingForDays,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp pickUpTime,
      bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $MyPositionCopyWith<$Res> get userPosition;
  $MyPositionCopyWith<$Res> get position;
}

/// @nodoc
class _$GiftGiverCopyWithImpl<$Res> implements $GiftGiverCopyWith<$Res> {
  _$GiftGiverCopyWithImpl(this._value, this._then);

  final GiftGiver _value;
  // ignore: unused_field
  final $Res Function(GiftGiver) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftFor = freezed,
    Object? giftAcquired = freezed,
    Object? userName = freezed,
    Object? userAvgRating = freezed,
    Object? userTotRating = freezed,
    Object? userRatingSum = freezed,
    Object? userImageUrl = freezed,
    Object? userFullName = freezed,
    Object? userPosition = freezed,
    Object? distance = freezed,
    Object? giftType = freezed,
    Object? uid = freezed,
    Object? givingGiftInDays = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? giftDetails = freezed,
    Object? userCreatedAt = freezed,
    Object? listingDate = freezed,
    Object? listingForDays = freezed,
    Object? pickUpTime = freezed,
    Object? canLeaveOutside = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftFor: giftFor == freezed
          ? _value.giftFor
          : giftFor // ignore: cast_nullable_to_non_nullable
              as int,
      giftAcquired: giftAcquired == freezed
          ? _value.giftAcquired
          : giftAcquired // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvgRating: userAvgRating == freezed
          ? _value.userAvgRating
          : userAvgRating // ignore: cast_nullable_to_non_nullable
              as double,
      userTotRating: userTotRating == freezed
          ? _value.userTotRating
          : userTotRating // ignore: cast_nullable_to_non_nullable
              as double,
      userRatingSum: userRatingSum == freezed
          ? _value.userRatingSum
          : userRatingSum // ignore: cast_nullable_to_non_nullable
              as double,
      userImageUrl: userImageUrl == freezed
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userFullName: userFullName == freezed
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      userPosition: userPosition == freezed
          ? _value.userPosition
          : userPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      givingGiftInDays: givingGiftInDays == freezed
          ? _value.givingGiftInDays
          : givingGiftInDays // ignore: cast_nullable_to_non_nullable
              as int,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      userCreatedAt: userCreatedAt == freezed
          ? _value.userCreatedAt
          : userCreatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      listingDate: listingDate == freezed
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      listingForDays: listingForDays == freezed
          ? _value.listingForDays
          : listingForDays // ignore: cast_nullable_to_non_nullable
              as int,
      pickUpTime: pickUpTime == freezed
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      canLeaveOutside: canLeaveOutside == freezed
          ? _value.canLeaveOutside
          : canLeaveOutside // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $MyPositionCopyWith<$Res> get userPosition {
    return $MyPositionCopyWith<$Res>(_value.userPosition, (value) {
      return _then(_value.copyWith(userPosition: value));
    });
  }

  @override
  $MyPositionCopyWith<$Res> get position {
    return $MyPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$GiftGiverCopyWith<$Res> implements $GiftGiverCopyWith<$Res> {
  factory _$GiftGiverCopyWith(
          _GiftGiver value, $Res Function(_GiftGiver) then) =
      __$GiftGiverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      int giftFor,
      bool giftAcquired,
      String userName,
      double userAvgRating,
      double userTotRating,
      double userRatingSum,
      String userImageUrl,
      String userFullName,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition userPosition,
      int distance,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          GiftType giftType,
      String uid,
      int givingGiftInDays,
      String area,
      String location,
      String imageUrl,
      String giftDetails,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp userCreatedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp listingDate,
      int listingForDays,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp pickUpTime,
      bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $MyPositionCopyWith<$Res> get userPosition;
  @override
  $MyPositionCopyWith<$Res> get position;
}

/// @nodoc
class __$GiftGiverCopyWithImpl<$Res> extends _$GiftGiverCopyWithImpl<$Res>
    implements _$GiftGiverCopyWith<$Res> {
  __$GiftGiverCopyWithImpl(_GiftGiver _value, $Res Function(_GiftGiver) _then)
      : super(_value, (v) => _then(v as _GiftGiver));

  @override
  _GiftGiver get _value => super._value as _GiftGiver;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftFor = freezed,
    Object? giftAcquired = freezed,
    Object? userName = freezed,
    Object? userAvgRating = freezed,
    Object? userTotRating = freezed,
    Object? userRatingSum = freezed,
    Object? userImageUrl = freezed,
    Object? userFullName = freezed,
    Object? userPosition = freezed,
    Object? distance = freezed,
    Object? giftType = freezed,
    Object? uid = freezed,
    Object? givingGiftInDays = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? giftDetails = freezed,
    Object? userCreatedAt = freezed,
    Object? listingDate = freezed,
    Object? listingForDays = freezed,
    Object? pickUpTime = freezed,
    Object? canLeaveOutside = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftGiver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftFor: giftFor == freezed
          ? _value.giftFor
          : giftFor // ignore: cast_nullable_to_non_nullable
              as int,
      giftAcquired: giftAcquired == freezed
          ? _value.giftAcquired
          : giftAcquired // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvgRating: userAvgRating == freezed
          ? _value.userAvgRating
          : userAvgRating // ignore: cast_nullable_to_non_nullable
              as double,
      userTotRating: userTotRating == freezed
          ? _value.userTotRating
          : userTotRating // ignore: cast_nullable_to_non_nullable
              as double,
      userRatingSum: userRatingSum == freezed
          ? _value.userRatingSum
          : userRatingSum // ignore: cast_nullable_to_non_nullable
              as double,
      userImageUrl: userImageUrl == freezed
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userFullName: userFullName == freezed
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      userPosition: userPosition == freezed
          ? _value.userPosition
          : userPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      givingGiftInDays: givingGiftInDays == freezed
          ? _value.givingGiftInDays
          : givingGiftInDays // ignore: cast_nullable_to_non_nullable
              as int,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      userCreatedAt: userCreatedAt == freezed
          ? _value.userCreatedAt
          : userCreatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      listingDate: listingDate == freezed
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      listingForDays: listingForDays == freezed
          ? _value.listingForDays
          : listingForDays // ignore: cast_nullable_to_non_nullable
              as int,
      pickUpTime: pickUpTime == freezed
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      canLeaveOutside: canLeaveOutside == freezed
          ? _value.canLeaveOutside
          : canLeaveOutside // ignore: cast_nullable_to_non_nullable
              as bool,
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
}

/// @nodoc
@JsonSerializable()
class _$_GiftGiver implements _GiftGiver {
  const _$_GiftGiver(
      {this.id,
      this.giftFor = 0,
      this.giftAcquired = false,
      required this.userName,
      required this.userAvgRating,
      required this.userTotRating,
      required this.userRatingSum,
      required this.userImageUrl,
      required this.userFullName,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.userPosition,
      required this.distance,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required this.giftType,
      required this.uid,
      required this.givingGiftInDays,
      required this.area,
      required this.location,
      required this.imageUrl,
      required this.giftDetails,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.userCreatedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.listingDate,
      required this.listingForDays,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.pickUpTime,
      required this.canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftGiverFromJson(json);

  @override
  final String? id;
  @JsonKey(defaultValue: 0)
  @override
  final int giftFor;
  @JsonKey(defaultValue: false)
  @override
  final bool giftAcquired;
  @override
  final String userName;
  @override
  final double userAvgRating;
  @override
  final double userTotRating;
  @override
  final double userRatingSum;
  @override
  final String userImageUrl;
  @override
  final String userFullName;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition userPosition;
  @override
  final int distance;
  @override
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  final GiftType giftType;
  @override
  final String uid;
  @override
  final int givingGiftInDays;
  @override
  final String area;
  @override
  final String location;
  @override
  final String imageUrl;
  @override
  final String giftDetails;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp userCreatedAt;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp listingDate;
  @override
  final int listingForDays;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp pickUpTime;
  @override
  final bool canLeaveOutside;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition position;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftGiver(id: $id, giftFor: $giftFor, giftAcquired: $giftAcquired, userName: $userName, userAvgRating: $userAvgRating, userTotRating: $userTotRating, userRatingSum: $userRatingSum, userImageUrl: $userImageUrl, userFullName: $userFullName, userPosition: $userPosition, distance: $distance, giftType: $giftType, uid: $uid, givingGiftInDays: $givingGiftInDays, area: $area, location: $location, imageUrl: $imageUrl, giftDetails: $giftDetails, userCreatedAt: $userCreatedAt, listingDate: $listingDate, listingForDays: $listingForDays, pickUpTime: $pickUpTime, canLeaveOutside: $canLeaveOutside, position: $position, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftGiver &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftFor, giftFor) ||
                const DeepCollectionEquality()
                    .equals(other.giftFor, giftFor)) &&
            (identical(other.giftAcquired, giftAcquired) ||
                const DeepCollectionEquality()
                    .equals(other.giftAcquired, giftAcquired)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userAvgRating, userAvgRating) ||
                const DeepCollectionEquality()
                    .equals(other.userAvgRating, userAvgRating)) &&
            (identical(other.userTotRating, userTotRating) ||
                const DeepCollectionEquality()
                    .equals(other.userTotRating, userTotRating)) &&
            (identical(other.userRatingSum, userRatingSum) ||
                const DeepCollectionEquality()
                    .equals(other.userRatingSum, userRatingSum)) &&
            (identical(other.userImageUrl, userImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.userImageUrl, userImageUrl)) &&
            (identical(other.userFullName, userFullName) ||
                const DeepCollectionEquality()
                    .equals(other.userFullName, userFullName)) &&
            (identical(other.userPosition, userPosition) ||
                const DeepCollectionEquality()
                    .equals(other.userPosition, userPosition)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.giftType, giftType) ||
                const DeepCollectionEquality()
                    .equals(other.giftType, giftType)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.givingGiftInDays, givingGiftInDays) ||
                const DeepCollectionEquality()
                    .equals(other.givingGiftInDays, givingGiftInDays)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.giftDetails, giftDetails) ||
                const DeepCollectionEquality()
                    .equals(other.giftDetails, giftDetails)) &&
            (identical(other.userCreatedAt, userCreatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.userCreatedAt, userCreatedAt)) &&
            (identical(other.listingDate, listingDate) ||
                const DeepCollectionEquality()
                    .equals(other.listingDate, listingDate)) &&
            (identical(other.listingForDays, listingForDays) ||
                const DeepCollectionEquality()
                    .equals(other.listingForDays, listingForDays)) &&
            (identical(other.pickUpTime, pickUpTime) ||
                const DeepCollectionEquality()
                    .equals(other.pickUpTime, pickUpTime)) &&
            (identical(other.canLeaveOutside, canLeaveOutside) ||
                const DeepCollectionEquality()
                    .equals(other.canLeaveOutside, canLeaveOutside)) &&
            (identical(other.position, position) || const DeepCollectionEquality().equals(other.position, position)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftFor) ^
      const DeepCollectionEquality().hash(giftAcquired) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userAvgRating) ^
      const DeepCollectionEquality().hash(userTotRating) ^
      const DeepCollectionEquality().hash(userRatingSum) ^
      const DeepCollectionEquality().hash(userImageUrl) ^
      const DeepCollectionEquality().hash(userFullName) ^
      const DeepCollectionEquality().hash(userPosition) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(giftType) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(givingGiftInDays) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(giftDetails) ^
      const DeepCollectionEquality().hash(userCreatedAt) ^
      const DeepCollectionEquality().hash(listingDate) ^
      const DeepCollectionEquality().hash(listingForDays) ^
      const DeepCollectionEquality().hash(pickUpTime) ^
      const DeepCollectionEquality().hash(canLeaveOutside) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftGiverCopyWith<_GiftGiver> get copyWith =>
      __$GiftGiverCopyWithImpl<_GiftGiver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftGiverToJson(this);
  }
}

abstract class _GiftGiver implements GiftGiver {
  const factory _GiftGiver(
      {String? id,
      int giftFor,
      bool giftAcquired,
      required String userName,
      required double userAvgRating,
      required double userTotRating,
      required double userRatingSum,
      required String userImageUrl,
      required String userFullName,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition userPosition,
      required int distance,
      @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
          required GiftType giftType,
      required String uid,
      required int givingGiftInDays,
      required String area,
      required String location,
      required String imageUrl,
      required String giftDetails,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp userCreatedAt,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp listingDate,
      required int listingForDays,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp pickUpTime,
      required bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftGiver;

  factory _GiftGiver.fromJson(Map<String, dynamic> json) =
      _$_GiftGiver.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get giftFor => throw _privateConstructorUsedError;
  @override
  bool get giftAcquired => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  double get userAvgRating => throw _privateConstructorUsedError;
  @override
  double get userTotRating => throw _privateConstructorUsedError;
  @override
  double get userRatingSum => throw _privateConstructorUsedError;
  @override
  String get userImageUrl => throw _privateConstructorUsedError;
  @override
  String get userFullName => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get userPosition => throw _privateConstructorUsedError;
  @override
  int get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  int get givingGiftInDays => throw _privateConstructorUsedError;
  @override
  String get area => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get giftDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get userCreatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get listingDate => throw _privateConstructorUsedError;
  @override
  int get listingForDays => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get pickUpTime => throw _privateConstructorUsedError;
  @override
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftGiverCopyWith<_GiftGiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GiftGiverListUnionTearOff {
  const _$GiftGiverListUnionTearOff();

  Data data(List<GiftGiver> giftGiverList) {
    return Data(
      giftGiverList,
    );
  }

  Empty empty() {
    return const Empty();
  }

  Loading loading() {
    return const Loading();
  }

  Error error(Object error) {
    return Error(
      error,
    );
  }
}

/// @nodoc
const $GiftGiverListUnion = _$GiftGiverListUnionTearOff();

/// @nodoc
mixin _$GiftGiverListUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftGiver> giftGiverList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftGiver> giftGiverList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
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
abstract class $GiftGiverListUnionCopyWith<$Res> {
  factory $GiftGiverListUnionCopyWith(
          GiftGiverListUnion value, $Res Function(GiftGiverListUnion) then) =
      _$GiftGiverListUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftGiverListUnionCopyWithImpl<$Res>
    implements $GiftGiverListUnionCopyWith<$Res> {
  _$GiftGiverListUnionCopyWithImpl(this._value, this._then);

  final GiftGiverListUnion _value;
  // ignore: unused_field
  final $Res Function(GiftGiverListUnion) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<GiftGiver> giftGiverList});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$GiftGiverListUnionCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? giftGiverList = freezed,
  }) {
    return _then(Data(
      giftGiverList == freezed
          ? _value.giftGiverList
          : giftGiverList // ignore: cast_nullable_to_non_nullable
              as List<GiftGiver>,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.giftGiverList);

  @override
  final List<GiftGiver> giftGiverList;

  @override
  String toString() {
    return 'GiftGiverListUnion.data(giftGiverList: $giftGiverList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.giftGiverList, giftGiverList) ||
                const DeepCollectionEquality()
                    .equals(other.giftGiverList, giftGiverList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(giftGiverList);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftGiver> giftGiverList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return data(giftGiverList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftGiver> giftGiverList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(giftGiverList);
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

abstract class Data implements GiftGiverListUnion {
  const factory Data(List<GiftGiver> giftGiverList) = _$Data;

  List<GiftGiver> get giftGiverList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$GiftGiverListUnionCopyWithImpl<$Res>
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
    return 'GiftGiverListUnion.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftGiver> giftGiverList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftGiver> giftGiverList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
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

abstract class Empty implements GiftGiverListUnion {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$GiftGiverListUnionCopyWithImpl<$Res>
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
    return 'GiftGiverListUnion.loading()';
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
    required TResult Function(List<GiftGiver> giftGiverList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftGiver> giftGiverList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
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

abstract class Loading implements GiftGiverListUnion {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$GiftGiverListUnionCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GiftGiverListUnion.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftGiver> giftGiverList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftGiver> giftGiverList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
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

abstract class Error implements GiftGiverListUnion {
  const factory Error(Object error) = _$Error;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
