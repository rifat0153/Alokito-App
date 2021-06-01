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
      required String listingDate,
      required int listingForDays,
      required String pickUpTime,
      required bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position}) {
    return _GiftGiver(
      id: id,
      giftFor: giftFor,
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
  String get listingDate => throw _privateConstructorUsedError;
  int get listingForDays =>
      throw _privateConstructorUsedError; // @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
  String get pickUpTime => throw _privateConstructorUsedError;
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;

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
      String listingDate,
      int listingForDays,
      String pickUpTime,
      bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position});

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
              as String,
      listingForDays: listingForDays == freezed
          ? _value.listingForDays
          : listingForDays // ignore: cast_nullable_to_non_nullable
              as int,
      pickUpTime: pickUpTime == freezed
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as String,
      canLeaveOutside: canLeaveOutside == freezed
          ? _value.canLeaveOutside
          : canLeaveOutside // ignore: cast_nullable_to_non_nullable
              as bool,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as MyPosition,
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
      String listingDate,
      int listingForDays,
      String pickUpTime,
      bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position});

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
              as String,
      listingForDays: listingForDays == freezed
          ? _value.listingForDays
          : listingForDays // ignore: cast_nullable_to_non_nullable
              as int,
      pickUpTime: pickUpTime == freezed
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as String,
      canLeaveOutside: canLeaveOutside == freezed
          ? _value.canLeaveOutside
          : canLeaveOutside // ignore: cast_nullable_to_non_nullable
              as bool,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as MyPosition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftGiver implements _GiftGiver {
  const _$_GiftGiver(
      {this.id,
      this.giftFor = 0,
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
      required this.listingDate,
      required this.listingForDays,
      required this.pickUpTime,
      required this.canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.position});

  factory _$_GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftGiverFromJson(json);

  @override
  final String? id;
  @JsonKey(defaultValue: 0)
  @override
  final int giftFor;
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
  final String listingDate;
  @override
  final int listingForDays;
  @override // @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
  final String pickUpTime;
  @override
  final bool canLeaveOutside;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition position;

  @override
  String toString() {
    return 'GiftGiver(id: $id, giftFor: $giftFor, userName: $userName, userAvgRating: $userAvgRating, userTotRating: $userTotRating, userRatingSum: $userRatingSum, userImageUrl: $userImageUrl, userFullName: $userFullName, userPosition: $userPosition, distance: $distance, giftType: $giftType, uid: $uid, givingGiftInDays: $givingGiftInDays, area: $area, location: $location, imageUrl: $imageUrl, giftDetails: $giftDetails, userCreatedAt: $userCreatedAt, listingDate: $listingDate, listingForDays: $listingForDays, pickUpTime: $pickUpTime, canLeaveOutside: $canLeaveOutside, position: $position)';
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
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftFor) ^
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
      const DeepCollectionEquality().hash(position);

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
      required String listingDate,
      required int listingForDays,
      required String pickUpTime,
      required bool canLeaveOutside,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position}) = _$_GiftGiver;

  factory _GiftGiver.fromJson(Map<String, dynamic> json) =
      _$_GiftGiver.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get giftFor => throw _privateConstructorUsedError;
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
  String get listingDate => throw _privateConstructorUsedError;
  @override
  int get listingForDays => throw _privateConstructorUsedError;
  @override // @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
  String get pickUpTime => throw _privateConstructorUsedError;
  @override
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftGiverCopyWith<_GiftGiver> get copyWith =>
      throw _privateConstructorUsedError;
}
