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
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp reuqestDate,
      required int requestForNoOfPeople,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required GiftAskType giftAskType,
      required String giftTitle,
      required bool giftForSmallFamily}) {
    return _GiftAsk(
      id: id,
      reuqestDate: reuqestDate,
      requestForNoOfPeople: requestForNoOfPeople,
      giftAskType: giftAskType,
      giftTitle: giftTitle,
      giftForSmallFamily: giftForSmallFamily,
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
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get reuqestDate => throw _privateConstructorUsedError;
  int get requestForNoOfPeople => throw _privateConstructorUsedError;
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  GiftAskType get giftAskType => throw _privateConstructorUsedError;
  String get giftTitle => throw _privateConstructorUsedError;
  bool get giftForSmallFamily => throw _privateConstructorUsedError;

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
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp reuqestDate,
      int requestForNoOfPeople,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          GiftAskType giftAskType,
      String giftTitle,
      bool giftForSmallFamily});
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
    Object? reuqestDate = freezed,
    Object? requestForNoOfPeople = freezed,
    Object? giftAskType = freezed,
    Object? giftTitle = freezed,
    Object? giftForSmallFamily = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reuqestDate: reuqestDate == freezed
          ? _value.reuqestDate
          : reuqestDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      requestForNoOfPeople: requestForNoOfPeople == freezed
          ? _value.requestForNoOfPeople
          : requestForNoOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
abstract class _$GiftAskCopyWith<$Res> implements $GiftAskCopyWith<$Res> {
  factory _$GiftAskCopyWith(_GiftAsk value, $Res Function(_GiftAsk) then) =
      __$GiftAskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp reuqestDate,
      int requestForNoOfPeople,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          GiftAskType giftAskType,
      String giftTitle,
      bool giftForSmallFamily});
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
    Object? reuqestDate = freezed,
    Object? requestForNoOfPeople = freezed,
    Object? giftAskType = freezed,
    Object? giftTitle = freezed,
    Object? giftForSmallFamily = freezed,
  }) {
    return _then(_GiftAsk(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reuqestDate: reuqestDate == freezed
          ? _value.reuqestDate
          : reuqestDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      requestForNoOfPeople: requestForNoOfPeople == freezed
          ? _value.requestForNoOfPeople
          : requestForNoOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftAsk implements _GiftAsk {
  const _$_GiftAsk(
      {this.id,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.reuqestDate,
      required this.requestForNoOfPeople,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required this.giftAskType,
      required this.giftTitle,
      required this.giftForSmallFamily});

  factory _$_GiftAsk.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftAskFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp reuqestDate;
  @override
  final int requestForNoOfPeople;
  @override
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  final GiftAskType giftAskType;
  @override
  final String giftTitle;
  @override
  final bool giftForSmallFamily;

  @override
  String toString() {
    return 'GiftAsk(id: $id, reuqestDate: $reuqestDate, requestForNoOfPeople: $requestForNoOfPeople, giftAskType: $giftAskType, giftTitle: $giftTitle, giftForSmallFamily: $giftForSmallFamily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftAsk &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.reuqestDate, reuqestDate) ||
                const DeepCollectionEquality()
                    .equals(other.reuqestDate, reuqestDate)) &&
            (identical(other.requestForNoOfPeople, requestForNoOfPeople) ||
                const DeepCollectionEquality().equals(
                    other.requestForNoOfPeople, requestForNoOfPeople)) &&
            (identical(other.giftAskType, giftAskType) ||
                const DeepCollectionEquality()
                    .equals(other.giftAskType, giftAskType)) &&
            (identical(other.giftTitle, giftTitle) ||
                const DeepCollectionEquality()
                    .equals(other.giftTitle, giftTitle)) &&
            (identical(other.giftForSmallFamily, giftForSmallFamily) ||
                const DeepCollectionEquality()
                    .equals(other.giftForSmallFamily, giftForSmallFamily)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reuqestDate) ^
      const DeepCollectionEquality().hash(requestForNoOfPeople) ^
      const DeepCollectionEquality().hash(giftAskType) ^
      const DeepCollectionEquality().hash(giftTitle) ^
      const DeepCollectionEquality().hash(giftForSmallFamily);

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
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp reuqestDate,
      required int requestForNoOfPeople,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required GiftAskType giftAskType,
      required String giftTitle,
      required bool giftForSmallFamily}) = _$_GiftAsk;

  factory _GiftAsk.fromJson(Map<String, dynamic> json) = _$_GiftAsk.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get reuqestDate => throw _privateConstructorUsedError;
  @override
  int get requestForNoOfPeople => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  GiftAskType get giftAskType => throw _privateConstructorUsedError;
  @override
  String get giftTitle => throw _privateConstructorUsedError;
  @override
  bool get giftForSmallFamily => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftAskCopyWith<_GiftAsk> get copyWith =>
      throw _privateConstructorUsedError;
}
