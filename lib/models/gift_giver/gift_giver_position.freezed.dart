// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_giver_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftGiverPosition _$GiftGiverPositionFromJson(Map<String, dynamic> json) {
  return _GiftGiverPosition.fromJson(json);
}

/// @nodoc
class _$GiftGiverPositionTearOff {
  const _$GiftGiverPositionTearOff();

  _GiftGiverPosition call({String? geoHash, MyGeoPoint? geoPoint}) {
    return _GiftGiverPosition(
      geoHash: geoHash,
      geoPoint: geoPoint,
    );
  }

  GiftGiverPosition fromJson(Map<String, Object> json) {
    return GiftGiverPosition.fromJson(json);
  }
}

/// @nodoc
const $GiftGiverPosition = _$GiftGiverPositionTearOff();

/// @nodoc
mixin _$GiftGiverPosition {
  String? get geoHash => throw _privateConstructorUsedError;
  MyGeoPoint? get geoPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftGiverPositionCopyWith<GiftGiverPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftGiverPositionCopyWith<$Res> {
  factory $GiftGiverPositionCopyWith(
          GiftGiverPosition value, $Res Function(GiftGiverPosition) then) =
      _$GiftGiverPositionCopyWithImpl<$Res>;
  $Res call({String? geoHash, MyGeoPoint? geoPoint});

  $MyGeoPointCopyWith<$Res>? get geoPoint;
}

/// @nodoc
class _$GiftGiverPositionCopyWithImpl<$Res>
    implements $GiftGiverPositionCopyWith<$Res> {
  _$GiftGiverPositionCopyWithImpl(this._value, this._then);

  final GiftGiverPosition _value;
  // ignore: unused_field
  final $Res Function(GiftGiverPosition) _then;

  @override
  $Res call({
    Object? geoHash = freezed,
    Object? geoPoint = freezed,
  }) {
    return _then(_value.copyWith(
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String?,
      geoPoint: geoPoint == freezed
          ? _value.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as MyGeoPoint?,
    ));
  }

  @override
  $MyGeoPointCopyWith<$Res>? get geoPoint {
    if (_value.geoPoint == null) {
      return null;
    }

    return $MyGeoPointCopyWith<$Res>(_value.geoPoint!, (value) {
      return _then(_value.copyWith(geoPoint: value));
    });
  }
}

/// @nodoc
abstract class _$GiftGiverPositionCopyWith<$Res>
    implements $GiftGiverPositionCopyWith<$Res> {
  factory _$GiftGiverPositionCopyWith(
          _GiftGiverPosition value, $Res Function(_GiftGiverPosition) then) =
      __$GiftGiverPositionCopyWithImpl<$Res>;
  @override
  $Res call({String? geoHash, MyGeoPoint? geoPoint});

  @override
  $MyGeoPointCopyWith<$Res>? get geoPoint;
}

/// @nodoc
class __$GiftGiverPositionCopyWithImpl<$Res>
    extends _$GiftGiverPositionCopyWithImpl<$Res>
    implements _$GiftGiverPositionCopyWith<$Res> {
  __$GiftGiverPositionCopyWithImpl(
      _GiftGiverPosition _value, $Res Function(_GiftGiverPosition) _then)
      : super(_value, (v) => _then(v as _GiftGiverPosition));

  @override
  _GiftGiverPosition get _value => super._value as _GiftGiverPosition;

  @override
  $Res call({
    Object? geoHash = freezed,
    Object? geoPoint = freezed,
  }) {
    return _then(_GiftGiverPosition(
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String?,
      geoPoint: geoPoint == freezed
          ? _value.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as MyGeoPoint?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftGiverPosition implements _GiftGiverPosition {
  const _$_GiftGiverPosition({this.geoHash, this.geoPoint});

  factory _$_GiftGiverPosition.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftGiverPositionFromJson(json);

  @override
  final String? geoHash;
  @override
  final MyGeoPoint? geoPoint;

  @override
  String toString() {
    return 'GiftGiverPosition(geoHash: $geoHash, geoPoint: $geoPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftGiverPosition &&
            (identical(other.geoHash, geoHash) ||
                const DeepCollectionEquality()
                    .equals(other.geoHash, geoHash)) &&
            (identical(other.geoPoint, geoPoint) ||
                const DeepCollectionEquality()
                    .equals(other.geoPoint, geoPoint)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(geoHash) ^
      const DeepCollectionEquality().hash(geoPoint);

  @JsonKey(ignore: true)
  @override
  _$GiftGiverPositionCopyWith<_GiftGiverPosition> get copyWith =>
      __$GiftGiverPositionCopyWithImpl<_GiftGiverPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftGiverPositionToJson(this);
  }
}

abstract class _GiftGiverPosition implements GiftGiverPosition {
  const factory _GiftGiverPosition({String? geoHash, MyGeoPoint? geoPoint}) =
      _$_GiftGiverPosition;

  factory _GiftGiverPosition.fromJson(Map<String, dynamic> json) =
      _$_GiftGiverPosition.fromJson;

  @override
  String? get geoHash => throw _privateConstructorUsedError;
  @override
  MyGeoPoint? get geoPoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftGiverPositionCopyWith<_GiftGiverPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
