// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'help_ask.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HelpAskResponse _$HelpAskResponseFromJson(Map<String, dynamic> json) {
  return _HelpAskResponse.fromJson(json);
}

/// @nodoc
class _$HelpAskResponseTearOff {
  const _$HelpAskResponseTearOff();

  _HelpAskResponse call(
      {required int page,
      @JsonKey(name: 'results') List<HelpAsk> helpAsks = const []}) {
    return _HelpAskResponse(
      page: page,
      helpAsks: helpAsks,
    );
  }

  HelpAskResponse fromJson(Map<String, Object?> json) {
    return HelpAskResponse.fromJson(json);
  }
}

/// @nodoc
const $HelpAskResponse = _$HelpAskResponseTearOff();

/// @nodoc
mixin _$HelpAskResponse {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<HelpAsk> get helpAsks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelpAskResponseCopyWith<HelpAskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpAskResponseCopyWith<$Res> {
  factory $HelpAskResponseCopyWith(
          HelpAskResponse value, $Res Function(HelpAskResponse) then) =
      _$HelpAskResponseCopyWithImpl<$Res>;
  $Res call({int page, @JsonKey(name: 'results') List<HelpAsk> helpAsks});
}

/// @nodoc
class _$HelpAskResponseCopyWithImpl<$Res>
    implements $HelpAskResponseCopyWith<$Res> {
  _$HelpAskResponseCopyWithImpl(this._value, this._then);

  final HelpAskResponse _value;
  // ignore: unused_field
  final $Res Function(HelpAskResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? helpAsks = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      helpAsks: helpAsks == freezed
          ? _value.helpAsks
          : helpAsks // ignore: cast_nullable_to_non_nullable
              as List<HelpAsk>,
    ));
  }
}

/// @nodoc
abstract class _$HelpAskResponseCopyWith<$Res>
    implements $HelpAskResponseCopyWith<$Res> {
  factory _$HelpAskResponseCopyWith(
          _HelpAskResponse value, $Res Function(_HelpAskResponse) then) =
      __$HelpAskResponseCopyWithImpl<$Res>;
  @override
  $Res call({int page, @JsonKey(name: 'results') List<HelpAsk> helpAsks});
}

/// @nodoc
class __$HelpAskResponseCopyWithImpl<$Res>
    extends _$HelpAskResponseCopyWithImpl<$Res>
    implements _$HelpAskResponseCopyWith<$Res> {
  __$HelpAskResponseCopyWithImpl(
      _HelpAskResponse _value, $Res Function(_HelpAskResponse) _then)
      : super(_value, (v) => _then(v as _HelpAskResponse));

  @override
  _HelpAskResponse get _value => super._value as _HelpAskResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? helpAsks = freezed,
  }) {
    return _then(_HelpAskResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      helpAsks: helpAsks == freezed
          ? _value.helpAsks
          : helpAsks // ignore: cast_nullable_to_non_nullable
              as List<HelpAsk>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelpAskResponse implements _HelpAskResponse {
  const _$_HelpAskResponse(
      {required this.page, @JsonKey(name: 'results') this.helpAsks = const []});

  factory _$_HelpAskResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HelpAskResponseFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'results')
  final List<HelpAsk> helpAsks;

  @override
  String toString() {
    return 'HelpAskResponse(page: $page, helpAsks: $helpAsks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpAskResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.helpAsks, helpAsks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(helpAsks));

  @JsonKey(ignore: true)
  @override
  _$HelpAskResponseCopyWith<_HelpAskResponse> get copyWith =>
      __$HelpAskResponseCopyWithImpl<_HelpAskResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelpAskResponseToJson(this);
  }
}

abstract class _HelpAskResponse implements HelpAskResponse {
  const factory _HelpAskResponse(
      {required int page,
      @JsonKey(name: 'results') List<HelpAsk> helpAsks}) = _$_HelpAskResponse;

  factory _HelpAskResponse.fromJson(Map<String, dynamic> json) =
      _$_HelpAskResponse.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<HelpAsk> get helpAsks;
  @override
  @JsonKey(ignore: true)
  _$HelpAskResponseCopyWith<_HelpAskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

HelpAsk _$HelpAskFromJson(Map<String, dynamic> json) {
  return _HelpAsk.fromJson(json);
}

/// @nodoc
class _$HelpAskTearOff {
  const _$HelpAskTearOff();

  _HelpAsk call(
      {String? id,
      String? creatorId,
      LocalUser? creator,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance}) {
    return _HelpAsk(
      id: id,
      creatorId: creatorId,
      creator: creator,
      geometry: geometry,
      area: area,
      location: location,
      imageUrl: imageUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
      distance: distance,
    );
  }

  HelpAsk fromJson(Map<String, Object?> json) {
    return HelpAsk.fromJson(json);
  }
}

/// @nodoc
const $HelpAsk = _$HelpAskTearOff();

/// @nodoc
mixin _$HelpAsk {
  String? get id => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  LocalUser? get creator => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelpAskCopyWith<HelpAsk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpAskCopyWith<$Res> {
  factory $HelpAskCopyWith(HelpAsk value, $Res Function(HelpAsk) then) =
      _$HelpAskCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creatorId,
      LocalUser? creator,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance});

  $LocalUserCopyWith<$Res>? get creator;
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$HelpAskCopyWithImpl<$Res> implements $HelpAskCopyWith<$Res> {
  _$HelpAskCopyWithImpl(this._value, this._then);

  final HelpAsk _value;
  // ignore: unused_field
  final $Res Function(HelpAsk) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? creator = freezed,
    Object? geometry = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $LocalUserCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $LocalUserCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }

  @override
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$HelpAskCopyWith<$Res> implements $HelpAskCopyWith<$Res> {
  factory _$HelpAskCopyWith(_HelpAsk value, $Res Function(_HelpAsk) then) =
      __$HelpAskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creatorId,
      LocalUser? creator,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance});

  @override
  $LocalUserCopyWith<$Res>? get creator;
  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$HelpAskCopyWithImpl<$Res> extends _$HelpAskCopyWithImpl<$Res>
    implements _$HelpAskCopyWith<$Res> {
  __$HelpAskCopyWithImpl(_HelpAsk _value, $Res Function(_HelpAsk) _then)
      : super(_value, (v) => _then(v as _HelpAsk));

  @override
  _HelpAsk get _value => super._value as _HelpAsk;

  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? creator = freezed,
    Object? geometry = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? distance = freezed,
  }) {
    return _then(_HelpAsk(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_HelpAsk implements _HelpAsk {
  const _$_HelpAsk(
      {this.id,
      this.creatorId,
      this.creator,
      this.geometry,
      this.area,
      this.location,
      this.imageUrl,
      this.createdAt,
      this.updatedAt,
      this.distance});

  factory _$_HelpAsk.fromJson(Map<String, dynamic> json) =>
      _$$_HelpAskFromJson(json);

  @override
  final String? id;
  @override
  final String? creatorId;
  @override
  final LocalUser? creator;
  @override
  final Geometry? geometry;
  @override
  final String? area;
  @override
  final String? location;
  @override
  final String? imageUrl;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final double? distance;

  @override
  String toString() {
    return 'HelpAsk(id: $id, creatorId: $creatorId, creator: $creator, geometry: $geometry, area: $area, location: $location, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpAsk &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creatorId),
      const DeepCollectionEquality().hash(creator),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$HelpAskCopyWith<_HelpAsk> get copyWith =>
      __$HelpAskCopyWithImpl<_HelpAsk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelpAskToJson(this);
  }
}

abstract class _HelpAsk implements HelpAsk {
  const factory _HelpAsk(
      {String? id,
      String? creatorId,
      LocalUser? creator,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance}) = _$_HelpAsk;

  factory _HelpAsk.fromJson(Map<String, dynamic> json) = _$_HelpAsk.fromJson;

  @override
  String? get id;
  @override
  String? get creatorId;
  @override
  LocalUser? get creator;
  @override
  Geometry? get geometry;
  @override
  String? get area;
  @override
  String? get location;
  @override
  String? get imageUrl;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  double? get distance;
  @override
  @JsonKey(ignore: true)
  _$HelpAskCopyWith<_HelpAsk> get copyWith =>
      throw _privateConstructorUsedError;
}
