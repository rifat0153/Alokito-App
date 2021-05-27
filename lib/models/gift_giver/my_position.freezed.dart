// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyPosition _$MyPositionFromJson(Map<String, dynamic> json) {
  return _MyPosition.fromJson(json);
}

/// @nodoc
class _$MyPositionTearOff {
  const _$MyPositionTearOff();

  _MyPosition call(
      {required String geohash,
      @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
          required GeoPoint geopoint}) {
    return _MyPosition(
      geohash: geohash,
      geopoint: geopoint,
    );
  }

  MyPosition fromJson(Map<String, Object> json) {
    return MyPosition.fromJson(json);
  }
}

/// @nodoc
const $MyPosition = _$MyPositionTearOff();

/// @nodoc
mixin _$MyPosition {
  String get geohash => throw _privateConstructorUsedError;
  @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
  GeoPoint get geopoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyPositionCopyWith<MyPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPositionCopyWith<$Res> {
  factory $MyPositionCopyWith(
          MyPosition value, $Res Function(MyPosition) then) =
      _$MyPositionCopyWithImpl<$Res>;
  $Res call(
      {String geohash,
      @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
          GeoPoint geopoint});
}

/// @nodoc
class _$MyPositionCopyWithImpl<$Res> implements $MyPositionCopyWith<$Res> {
  _$MyPositionCopyWithImpl(this._value, this._then);

  final MyPosition _value;
  // ignore: unused_field
  final $Res Function(MyPosition) _then;

  @override
  $Res call({
    Object? geohash = freezed,
    Object? geopoint = freezed,
  }) {
    return _then(_value.copyWith(
      geohash: geohash == freezed
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String,
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
abstract class _$MyPositionCopyWith<$Res> implements $MyPositionCopyWith<$Res> {
  factory _$MyPositionCopyWith(
          _MyPosition value, $Res Function(_MyPosition) then) =
      __$MyPositionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String geohash,
      @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
          GeoPoint geopoint});
}

/// @nodoc
class __$MyPositionCopyWithImpl<$Res> extends _$MyPositionCopyWithImpl<$Res>
    implements _$MyPositionCopyWith<$Res> {
  __$MyPositionCopyWithImpl(
      _MyPosition _value, $Res Function(_MyPosition) _then)
      : super(_value, (v) => _then(v as _MyPosition));

  @override
  _MyPosition get _value => super._value as _MyPosition;

  @override
  $Res call({
    Object? geohash = freezed,
    Object? geopoint = freezed,
  }) {
    return _then(_MyPosition(
      geohash: geohash == freezed
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String,
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyPosition implements _MyPosition {
  const _$_MyPosition(
      {required this.geohash,
      @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
          required this.geopoint});

  factory _$_MyPosition.fromJson(Map<String, dynamic> json) =>
      _$_$_MyPositionFromJson(json);

  @override
  final String geohash;
  @override
  @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
  final GeoPoint geopoint;

  @override
  String toString() {
    return 'MyPosition(geohash: $geohash, geopoint: $geopoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyPosition &&
            (identical(other.geohash, geohash) ||
                const DeepCollectionEquality()
                    .equals(other.geohash, geohash)) &&
            (identical(other.geopoint, geopoint) ||
                const DeepCollectionEquality()
                    .equals(other.geopoint, geopoint)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(geohash) ^
      const DeepCollectionEquality().hash(geopoint);

  @JsonKey(ignore: true)
  @override
  _$MyPositionCopyWith<_MyPosition> get copyWith =>
      __$MyPositionCopyWithImpl<_MyPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyPositionToJson(this);
  }
}

abstract class _MyPosition implements MyPosition {
  const factory _MyPosition(
      {required String geohash,
      @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
          required GeoPoint geopoint}) = _$_MyPosition;

  factory _MyPosition.fromJson(Map<String, dynamic> json) =
      _$_MyPosition.fromJson;

  @override
  String get geohash => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
  GeoPoint get geopoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyPositionCopyWith<_MyPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
