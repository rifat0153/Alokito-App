// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_geo_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyGeoPoint _$MyGeoPointFromJson(Map<String, dynamic> json) {
  return _MyGeoPoint.fromJson(json);
}

/// @nodoc
class _$MyGeoPointTearOff {
  const _$MyGeoPointTearOff();

  _MyGeoPoint call({required double latitude, required double longitude}) {
    return _MyGeoPoint(
      latitude: latitude,
      longitude: longitude,
    );
  }

  MyGeoPoint fromJson(Map<String, Object> json) {
    return MyGeoPoint.fromJson(json);
  }
}

/// @nodoc
const $MyGeoPoint = _$MyGeoPointTearOff();

/// @nodoc
mixin _$MyGeoPoint {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyGeoPointCopyWith<MyGeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyGeoPointCopyWith<$Res> {
  factory $MyGeoPointCopyWith(
          MyGeoPoint value, $Res Function(MyGeoPoint) then) =
      _$MyGeoPointCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$MyGeoPointCopyWithImpl<$Res> implements $MyGeoPointCopyWith<$Res> {
  _$MyGeoPointCopyWithImpl(this._value, this._then);

  final MyGeoPoint _value;
  // ignore: unused_field
  final $Res Function(MyGeoPoint) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MyGeoPointCopyWith<$Res> implements $MyGeoPointCopyWith<$Res> {
  factory _$MyGeoPointCopyWith(
          _MyGeoPoint value, $Res Function(_MyGeoPoint) then) =
      __$MyGeoPointCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$MyGeoPointCopyWithImpl<$Res> extends _$MyGeoPointCopyWithImpl<$Res>
    implements _$MyGeoPointCopyWith<$Res> {
  __$MyGeoPointCopyWithImpl(
      _MyGeoPoint _value, $Res Function(_MyGeoPoint) _then)
      : super(_value, (v) => _then(v as _MyGeoPoint));

  @override
  _MyGeoPoint get _value => super._value as _MyGeoPoint;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_MyGeoPoint(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyGeoPoint implements _MyGeoPoint {
  const _$_MyGeoPoint({required this.latitude, required this.longitude});

  factory _$_MyGeoPoint.fromJson(Map<String, dynamic> json) =>
      _$_$_MyGeoPointFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'MyGeoPoint(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyGeoPoint &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$MyGeoPointCopyWith<_MyGeoPoint> get copyWith =>
      __$MyGeoPointCopyWithImpl<_MyGeoPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyGeoPointToJson(this);
  }
}

abstract class _MyGeoPoint implements MyGeoPoint {
  const factory _MyGeoPoint(
      {required double latitude, required double longitude}) = _$_MyGeoPoint;

  factory _MyGeoPoint.fromJson(Map<String, dynamic> json) =
      _$_MyGeoPoint.fromJson;

  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyGeoPointCopyWith<_MyGeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
