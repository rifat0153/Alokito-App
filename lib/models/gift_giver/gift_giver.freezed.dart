// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_giver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gift _$GiftFromJson(Map<String, dynamic> json) {
  return _Gift.fromJson(json);
}

/// @nodoc
class _$GiftTearOff {
  const _$GiftTearOff();

  _Gift call(
      {String? id,
      required String uid,
      required String imageUrl,
      required String giftDetails,
      required String listingDate,
      required int listingFor,
      @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
          required Timestamp pickUpTime,
      required bool canLeaveOutside}) {
    return _Gift(
      id: id,
      uid: uid,
      imageUrl: imageUrl,
      giftDetails: giftDetails,
      listingDate: listingDate,
      listingFor: listingFor,
      pickUpTime: pickUpTime,
      canLeaveOutside: canLeaveOutside,
    );
  }

  Gift fromJson(Map<String, Object> json) {
    return Gift.fromJson(json);
  }
}

/// @nodoc
const $Gift = _$GiftTearOff();

/// @nodoc
mixin _$Gift {
  String? get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get giftDetails => throw _privateConstructorUsedError;
  String get listingDate => throw _privateConstructorUsedError;
  int get listingFor => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
  Timestamp get pickUpTime => throw _privateConstructorUsedError;
  bool get canLeaveOutside => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftCopyWith<Gift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) then) =
      _$GiftCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String uid,
      String imageUrl,
      String giftDetails,
      String listingDate,
      int listingFor,
      @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
          Timestamp pickUpTime,
      bool canLeaveOutside});
}

/// @nodoc
class _$GiftCopyWithImpl<$Res> implements $GiftCopyWith<$Res> {
  _$GiftCopyWithImpl(this._value, this._then);

  final Gift _value;
  // ignore: unused_field
  final $Res Function(Gift) _then;

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
    ));
  }
}

/// @nodoc
abstract class _$GiftCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$GiftCopyWith(_Gift value, $Res Function(_Gift) then) =
      __$GiftCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String uid,
      String imageUrl,
      String giftDetails,
      String listingDate,
      int listingFor,
      @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
          Timestamp pickUpTime,
      bool canLeaveOutside});
}

/// @nodoc
class __$GiftCopyWithImpl<$Res> extends _$GiftCopyWithImpl<$Res>
    implements _$GiftCopyWith<$Res> {
  __$GiftCopyWithImpl(_Gift _value, $Res Function(_Gift) _then)
      : super(_value, (v) => _then(v as _Gift));

  @override
  _Gift get _value => super._value as _Gift;

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
  }) {
    return _then(_Gift(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gift implements _Gift {
  const _$_Gift(
      {this.id,
      required this.uid,
      required this.imageUrl,
      required this.giftDetails,
      required this.listingDate,
      required this.listingFor,
      @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
          required this.pickUpTime,
      required this.canLeaveOutside});

  factory _$_Gift.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftFromJson(json);

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
  @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
  final Timestamp pickUpTime;
  @override
  final bool canLeaveOutside;

  @override
  String toString() {
    return 'Gift(id: $id, uid: $uid, imageUrl: $imageUrl, giftDetails: $giftDetails, listingDate: $listingDate, listingFor: $listingFor, pickUpTime: $pickUpTime, canLeaveOutside: $canLeaveOutside)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Gift &&
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
                    .equals(other.canLeaveOutside, canLeaveOutside)));
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
      const DeepCollectionEquality().hash(canLeaveOutside);

  @JsonKey(ignore: true)
  @override
  _$GiftCopyWith<_Gift> get copyWith =>
      __$GiftCopyWithImpl<_Gift>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftToJson(this);
  }
}

abstract class _Gift implements Gift {
  const factory _Gift(
      {String? id,
      required String uid,
      required String imageUrl,
      required String giftDetails,
      required String listingDate,
      required int listingFor,
      @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
          required Timestamp pickUpTime,
      required bool canLeaveOutside}) = _$_Gift;

  factory _Gift.fromJson(Map<String, dynamic> json) = _$_Gift.fromJson;

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
  @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
  Timestamp get pickUpTime => throw _privateConstructorUsedError;
  @override
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftCopyWith<_Gift> get copyWith => throw _privateConstructorUsedError;
}
