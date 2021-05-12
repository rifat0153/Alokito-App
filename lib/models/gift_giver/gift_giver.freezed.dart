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
      required String uid,
      required String imageUrl,
      required String giftDetails,
      required String listingDate,
      required int listingFor,
      @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
          required Timestamp pickUpTime,
      required bool canLeaveOutside,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required MyPosition position}) {
    return _GiftGiver(
      id: id,
      uid: uid,
      imageUrl: imageUrl,
      giftDetails: giftDetails,
      listingDate: listingDate,
      listingFor: listingFor,
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
  String get uid => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get giftDetails => throw _privateConstructorUsedError;
  String get listingDate => throw _privateConstructorUsedError;
  int get listingFor => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
  Timestamp get pickUpTime => throw _privateConstructorUsedError;
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
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
      String uid,
      String imageUrl,
      String giftDetails,
      String listingDate,
      int listingFor,
      @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
          Timestamp pickUpTime,
      bool canLeaveOutside,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          MyPosition position});

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
    Object? uid = freezed,
    Object? imageUrl = freezed,
    Object? giftDetails = freezed,
    Object? listingDate = freezed,
    Object? listingFor = freezed,
    Object? pickUpTime = freezed,
    Object? canLeaveOutside = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      listingDate: listingDate == freezed
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as String,
      listingFor: listingFor == freezed
          ? _value.listingFor
          : listingFor // ignore: cast_nullable_to_non_nullable
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
    ));
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
      String uid,
      String imageUrl,
      String giftDetails,
      String listingDate,
      int listingFor,
      @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
          Timestamp pickUpTime,
      bool canLeaveOutside,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          MyPosition position});

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
    Object? uid = freezed,
    Object? imageUrl = freezed,
    Object? giftDetails = freezed,
    Object? listingDate = freezed,
    Object? listingFor = freezed,
    Object? pickUpTime = freezed,
    Object? canLeaveOutside = freezed,
    Object? position = freezed,
  }) {
    return _then(_GiftGiver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      listingDate: listingDate == freezed
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as String,
      listingFor: listingFor == freezed
          ? _value.listingFor
          : listingFor // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftGiver implements _GiftGiver {
  const _$_GiftGiver(
      {this.id,
      required this.uid,
      required this.imageUrl,
      required this.giftDetails,
      required this.listingDate,
      required this.listingFor,
      @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
          required this.pickUpTime,
      required this.canLeaveOutside,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required this.position});

  factory _$_GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftGiverFromJson(json);

  @override
  final String? id;
  @override
  final String uid;
  @override
  final String imageUrl;
  @override
  final String giftDetails;
  @override
  final String listingDate;
  @override
  final int listingFor;
  @override
  @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
  final Timestamp pickUpTime;
  @override
  final bool canLeaveOutside;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final MyPosition position;

  @override
  String toString() {
    return 'GiftGiver(id: $id, uid: $uid, imageUrl: $imageUrl, giftDetails: $giftDetails, listingDate: $listingDate, listingFor: $listingFor, pickUpTime: $pickUpTime, canLeaveOutside: $canLeaveOutside, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftGiver &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.giftDetails, giftDetails) ||
                const DeepCollectionEquality()
                    .equals(other.giftDetails, giftDetails)) &&
            (identical(other.listingDate, listingDate) ||
                const DeepCollectionEquality()
                    .equals(other.listingDate, listingDate)) &&
            (identical(other.listingFor, listingFor) ||
                const DeepCollectionEquality()
                    .equals(other.listingFor, listingFor)) &&
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
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(giftDetails) ^
      const DeepCollectionEquality().hash(listingDate) ^
      const DeepCollectionEquality().hash(listingFor) ^
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
      required String uid,
      required String imageUrl,
      required String giftDetails,
      required String listingDate,
      required int listingFor,
      @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
          required Timestamp pickUpTime,
      required bool canLeaveOutside,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required MyPosition position}) = _$_GiftGiver;

  factory _GiftGiver.fromJson(Map<String, dynamic> json) =
      _$_GiftGiver.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get giftDetails => throw _privateConstructorUsedError;
  @override
  String get listingDate => throw _privateConstructorUsedError;
  @override
  int get listingFor => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _pickedTimeFromJson, toJson: _pickedTimeToJson)
  Timestamp get pickUpTime => throw _privateConstructorUsedError;
  @override
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftGiverCopyWith<_GiftGiver> get copyWith =>
      throw _privateConstructorUsedError;
}
