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
      required int listingForDays,
      required bool canLeaveOutside,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          required LocalUser user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required Geometry geometry,
      required String giftType,
      required String giftDetails,
      required DateTime pickUpTime,
      required String area,
      required String location,
      required String imageUrl,
      required double distance}) {
    return _GiftGiver(
      id: id,
      listingForDays: listingForDays,
      canLeaveOutside: canLeaveOutside,
      user: user,
      geometry: geometry,
      giftType: giftType,
      giftDetails: giftDetails,
      pickUpTime: pickUpTime,
      area: area,
      location: location,
      imageUrl: imageUrl,
      distance: distance,
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
  int get listingForDays => throw _privateConstructorUsedError;
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
  LocalUser get user => throw _privateConstructorUsedError;
  @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  Geometry get geometry => throw _privateConstructorUsedError;
  String get giftType => throw _privateConstructorUsedError;
  String get giftDetails => throw _privateConstructorUsedError;
  DateTime get pickUpTime => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

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
      int listingForDays,
      bool canLeaveOutside,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          LocalUser user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          Geometry geometry,
      String giftType,
      String giftDetails,
      DateTime pickUpTime,
      String area,
      String location,
      String imageUrl,
      double distance});

  $LocalUserCopyWith<$Res> get user;
  $GeometryCopyWith<$Res> get geometry;
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
    Object? listingForDays = freezed,
    Object? canLeaveOutside = freezed,
    Object? user = freezed,
    Object? geometry = freezed,
    Object? giftType = freezed,
    Object? giftDetails = freezed,
    Object? pickUpTime = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listingForDays: listingForDays == freezed
          ? _value.listingForDays
          : listingForDays // ignore: cast_nullable_to_non_nullable
              as int,
      canLeaveOutside: canLeaveOutside == freezed
          ? _value.canLeaveOutside
          : canLeaveOutside // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpTime: pickUpTime == freezed
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $LocalUserCopyWith<$Res> get user {
    return $LocalUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $GeometryCopyWith<$Res> get geometry {
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
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
      int listingForDays,
      bool canLeaveOutside,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          LocalUser user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          Geometry geometry,
      String giftType,
      String giftDetails,
      DateTime pickUpTime,
      String area,
      String location,
      String imageUrl,
      double distance});

  @override
  $LocalUserCopyWith<$Res> get user;
  @override
  $GeometryCopyWith<$Res> get geometry;
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
    Object? listingForDays = freezed,
    Object? canLeaveOutside = freezed,
    Object? user = freezed,
    Object? geometry = freezed,
    Object? giftType = freezed,
    Object? giftDetails = freezed,
    Object? pickUpTime = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? distance = freezed,
  }) {
    return _then(_GiftGiver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listingForDays: listingForDays == freezed
          ? _value.listingForDays
          : listingForDays // ignore: cast_nullable_to_non_nullable
              as int,
      canLeaveOutside: canLeaveOutside == freezed
          ? _value.canLeaveOutside
          : canLeaveOutside // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpTime: pickUpTime == freezed
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftGiver implements _GiftGiver {
  const _$_GiftGiver(
      {this.id,
      required this.listingForDays,
      required this.canLeaveOutside,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          required this.user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required this.geometry,
      required this.giftType,
      required this.giftDetails,
      required this.pickUpTime,
      required this.area,
      required this.location,
      required this.imageUrl,
      required this.distance});

  factory _$_GiftGiver.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftGiverFromJson(json);

  @override
  final String? id;
  @override
  final int listingForDays;
  @override
  final bool canLeaveOutside;
  @override
  @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
  final LocalUser user;
  @override
  @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  final Geometry geometry;
  @override
  final String giftType;
  @override
  final String giftDetails;
  @override
  final DateTime pickUpTime;
  @override
  final String area;
  @override
  final String location;
  @override
  final String imageUrl;
  @override
  final double distance;

  @override
  String toString() {
    return 'GiftGiver(id: $id, listingForDays: $listingForDays, canLeaveOutside: $canLeaveOutside, user: $user, geometry: $geometry, giftType: $giftType, giftDetails: $giftDetails, pickUpTime: $pickUpTime, area: $area, location: $location, imageUrl: $imageUrl, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftGiver &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.listingForDays, listingForDays) ||
                const DeepCollectionEquality()
                    .equals(other.listingForDays, listingForDays)) &&
            (identical(other.canLeaveOutside, canLeaveOutside) ||
                const DeepCollectionEquality()
                    .equals(other.canLeaveOutside, canLeaveOutside)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.geometry, geometry) ||
                const DeepCollectionEquality()
                    .equals(other.geometry, geometry)) &&
            (identical(other.giftType, giftType) ||
                const DeepCollectionEquality()
                    .equals(other.giftType, giftType)) &&
            (identical(other.giftDetails, giftDetails) ||
                const DeepCollectionEquality()
                    .equals(other.giftDetails, giftDetails)) &&
            (identical(other.pickUpTime, pickUpTime) ||
                const DeepCollectionEquality()
                    .equals(other.pickUpTime, pickUpTime)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(listingForDays) ^
      const DeepCollectionEquality().hash(canLeaveOutside) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(geometry) ^
      const DeepCollectionEquality().hash(giftType) ^
      const DeepCollectionEquality().hash(giftDetails) ^
      const DeepCollectionEquality().hash(pickUpTime) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(distance);

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
      required int listingForDays,
      required bool canLeaveOutside,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          required LocalUser user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required Geometry geometry,
      required String giftType,
      required String giftDetails,
      required DateTime pickUpTime,
      required String area,
      required String location,
      required String imageUrl,
      required double distance}) = _$_GiftGiver;

  factory _GiftGiver.fromJson(Map<String, dynamic> json) =
      _$_GiftGiver.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get listingForDays => throw _privateConstructorUsedError;
  @override
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
  LocalUser get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  Geometry get geometry => throw _privateConstructorUsedError;
  @override
  String get giftType => throw _privateConstructorUsedError;
  @override
  String get giftDetails => throw _privateConstructorUsedError;
  @override
  DateTime get pickUpTime => throw _privateConstructorUsedError;
  @override
  String get area => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  double get distance => throw _privateConstructorUsedError;
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
