// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_ask.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftAsk _$GiftAskFromJson(Map<String, dynamic> json) {
  return _GiftAsk.fromJson(json);
}

/// @nodoc
class _$GiftAskTearOff {
  const _$GiftAskTearOff();

  _GiftAsk call(
      {String? id,
      required String address,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp reuqestDate,
      required int requestForNoOfPeople,
      String? prescriptionImageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required GiftAskType giftAskType,
      required String giftTitle,
      required bool giftForSmallFamily,
      required String note,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftAsk(
      id: id,
      address: address,
      position: position,
      reuqestDate: reuqestDate,
      requestForNoOfPeople: requestForNoOfPeople,
      prescriptionImageUrl: prescriptionImageUrl,
      giftAskType: giftAskType,
      giftTitle: giftTitle,
      giftForSmallFamily: giftForSmallFamily,
      note: note,
      createdAt: createdAt,
    );
  }

  GiftAsk fromJson(Map<String, Object> json) {
    return GiftAsk.fromJson(json);
  }
}

/// @nodoc
const $GiftAsk = _$GiftAskTearOff();

/// @nodoc
mixin _$GiftAsk {
  String? get id => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get reuqestDate => throw _privateConstructorUsedError;
  int get requestForNoOfPeople => throw _privateConstructorUsedError;
  String? get prescriptionImageUrl => throw _privateConstructorUsedError;
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  GiftAskType get giftAskType => throw _privateConstructorUsedError;
  String get giftTitle => throw _privateConstructorUsedError;
  bool get giftForSmallFamily => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftAskCopyWith<GiftAsk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskCopyWith<$Res> {
  factory $GiftAskCopyWith(GiftAsk value, $Res Function(GiftAsk) then) =
      _$GiftAskCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String address,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp reuqestDate,
      int requestForNoOfPeople,
      String? prescriptionImageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          GiftAskType giftAskType,
      String giftTitle,
      bool giftForSmallFamily,
      String note,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $MyPositionCopyWith<$Res> get position;
}

/// @nodoc
class _$GiftAskCopyWithImpl<$Res> implements $GiftAskCopyWith<$Res> {
  _$GiftAskCopyWithImpl(this._value, this._then);

  final GiftAsk _value;
  // ignore: unused_field
  final $Res Function(GiftAsk) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? position = freezed,
    Object? reuqestDate = freezed,
    Object? requestForNoOfPeople = freezed,
    Object? prescriptionImageUrl = freezed,
    Object? giftAskType = freezed,
    Object? giftTitle = freezed,
    Object? giftForSmallFamily = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      reuqestDate: reuqestDate == freezed
          ? _value.reuqestDate
          : reuqestDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      requestForNoOfPeople: requestForNoOfPeople == freezed
          ? _value.requestForNoOfPeople
          : requestForNoOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      prescriptionImageUrl: prescriptionImageUrl == freezed
          ? _value.prescriptionImageUrl
          : prescriptionImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      giftAskType: giftAskType == freezed
          ? _value.giftAskType
          : giftAskType // ignore: cast_nullable_to_non_nullable
              as GiftAskType,
      giftTitle: giftTitle == freezed
          ? _value.giftTitle
          : giftTitle // ignore: cast_nullable_to_non_nullable
              as String,
      giftForSmallFamily: giftForSmallFamily == freezed
          ? _value.giftForSmallFamily
          : giftForSmallFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
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
abstract class _$GiftAskCopyWith<$Res> implements $GiftAskCopyWith<$Res> {
  factory _$GiftAskCopyWith(_GiftAsk value, $Res Function(_GiftAsk) then) =
      __$GiftAskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String address,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp reuqestDate,
      int requestForNoOfPeople,
      String? prescriptionImageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          GiftAskType giftAskType,
      String giftTitle,
      bool giftForSmallFamily,
      String note,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $MyPositionCopyWith<$Res> get position;
}

/// @nodoc
class __$GiftAskCopyWithImpl<$Res> extends _$GiftAskCopyWithImpl<$Res>
    implements _$GiftAskCopyWith<$Res> {
  __$GiftAskCopyWithImpl(_GiftAsk _value, $Res Function(_GiftAsk) _then)
      : super(_value, (v) => _then(v as _GiftAsk));

  @override
  _GiftAsk get _value => super._value as _GiftAsk;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? position = freezed,
    Object? reuqestDate = freezed,
    Object? requestForNoOfPeople = freezed,
    Object? prescriptionImageUrl = freezed,
    Object? giftAskType = freezed,
    Object? giftTitle = freezed,
    Object? giftForSmallFamily = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftAsk(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      reuqestDate: reuqestDate == freezed
          ? _value.reuqestDate
          : reuqestDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      requestForNoOfPeople: requestForNoOfPeople == freezed
          ? _value.requestForNoOfPeople
          : requestForNoOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      prescriptionImageUrl: prescriptionImageUrl == freezed
          ? _value.prescriptionImageUrl
          : prescriptionImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      giftAskType: giftAskType == freezed
          ? _value.giftAskType
          : giftAskType // ignore: cast_nullable_to_non_nullable
              as GiftAskType,
      giftTitle: giftTitle == freezed
          ? _value.giftTitle
          : giftTitle // ignore: cast_nullable_to_non_nullable
              as String,
      giftForSmallFamily: giftForSmallFamily == freezed
          ? _value.giftForSmallFamily
          : giftForSmallFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
class _$_GiftAsk implements _GiftAsk {
  const _$_GiftAsk(
      {this.id,
      required this.address,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required this.position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.reuqestDate,
      required this.requestForNoOfPeople,
      this.prescriptionImageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required this.giftAskType,
      required this.giftTitle,
      required this.giftForSmallFamily,
      required this.note,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_GiftAsk.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftAskFromJson(json);

  @override
  final String? id;
  @override
  final String address;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  final MyPosition position;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp reuqestDate;
  @override
  final int requestForNoOfPeople;
  @override
  final String? prescriptionImageUrl;
  @override
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  final GiftAskType giftAskType;
  @override
  final String giftTitle;
  @override
  final bool giftForSmallFamily;
  @override
  final String note;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftAsk(id: $id, address: $address, position: $position, reuqestDate: $reuqestDate, requestForNoOfPeople: $requestForNoOfPeople, prescriptionImageUrl: $prescriptionImageUrl, giftAskType: $giftAskType, giftTitle: $giftTitle, giftForSmallFamily: $giftForSmallFamily, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftAsk &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.reuqestDate, reuqestDate) ||
                const DeepCollectionEquality()
                    .equals(other.reuqestDate, reuqestDate)) &&
            (identical(other.requestForNoOfPeople, requestForNoOfPeople) ||
                const DeepCollectionEquality().equals(
                    other.requestForNoOfPeople, requestForNoOfPeople)) &&
            (identical(other.prescriptionImageUrl, prescriptionImageUrl) ||
                const DeepCollectionEquality().equals(
                    other.prescriptionImageUrl, prescriptionImageUrl)) &&
            (identical(other.giftAskType, giftAskType) ||
                const DeepCollectionEquality()
                    .equals(other.giftAskType, giftAskType)) &&
            (identical(other.giftTitle, giftTitle) ||
                const DeepCollectionEquality()
                    .equals(other.giftTitle, giftTitle)) &&
            (identical(other.giftForSmallFamily, giftForSmallFamily) ||
                const DeepCollectionEquality()
                    .equals(other.giftForSmallFamily, giftForSmallFamily)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(reuqestDate) ^
      const DeepCollectionEquality().hash(requestForNoOfPeople) ^
      const DeepCollectionEquality().hash(prescriptionImageUrl) ^
      const DeepCollectionEquality().hash(giftAskType) ^
      const DeepCollectionEquality().hash(giftTitle) ^
      const DeepCollectionEquality().hash(giftForSmallFamily) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftAskCopyWith<_GiftAsk> get copyWith =>
      __$GiftAskCopyWithImpl<_GiftAsk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftAskToJson(this);
  }
}

abstract class _GiftAsk implements GiftAsk {
  const factory _GiftAsk(
      {String? id,
      required String address,
      @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
          required MyPosition position,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp reuqestDate,
      required int requestForNoOfPeople,
      String? prescriptionImageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required GiftAskType giftAskType,
      required String giftTitle,
      required bool giftForSmallFamily,
      required String note,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftAsk;

  factory _GiftAsk.fromJson(Map<String, dynamic> json) = _$_GiftAsk.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
  MyPosition get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get reuqestDate => throw _privateConstructorUsedError;
  @override
  int get requestForNoOfPeople => throw _privateConstructorUsedError;
  @override
  String? get prescriptionImageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  GiftAskType get giftAskType => throw _privateConstructorUsedError;
  @override
  String get giftTitle => throw _privateConstructorUsedError;
  @override
  bool get giftForSmallFamily => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftAskCopyWith<_GiftAsk> get copyWith =>
      throw _privateConstructorUsedError;
}
