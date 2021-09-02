// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift.dart';

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
      required int listingForDays,
      required bool canLeaveOutside,
      required String userId,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          LocalUser? user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required Geometry geometry,
      required String giftType,
      required String giftDetails,
      required DateTime pickUpTime,
      required String area,
      required String location,
      required String imageUrl,
      required double distance}) {
    return _Gift(
      id: id,
      listingForDays: listingForDays,
      canLeaveOutside: canLeaveOutside,
      userId: userId,
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

  Gift fromJson(Map<String, Object> json) {
    return Gift.fromJson(json);
  }
}

/// @nodoc
const $Gift = _$GiftTearOff();

/// @nodoc
mixin _$Gift {
  String? get id => throw _privateConstructorUsedError;
  int get listingForDays => throw _privateConstructorUsedError;
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
  LocalUser? get user => throw _privateConstructorUsedError;
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
  $GiftCopyWith<Gift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) then) =
      _$GiftCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int listingForDays,
      bool canLeaveOutside,
      String userId,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          LocalUser? user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          Geometry geometry,
      String giftType,
      String giftDetails,
      DateTime pickUpTime,
      String area,
      String location,
      String imageUrl,
      double distance});

  $LocalUserCopyWith<$Res>? get user;
  $GeometryCopyWith<$Res> get geometry;
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
    Object? listingForDays = freezed,
    Object? canLeaveOutside = freezed,
    Object? userId = freezed,
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
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
  $LocalUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LocalUserCopyWith<$Res>(_value.user!, (value) {
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
abstract class _$GiftCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$GiftCopyWith(_Gift value, $Res Function(_Gift) then) =
      __$GiftCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      int listingForDays,
      bool canLeaveOutside,
      String userId,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          LocalUser? user,
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
  $LocalUserCopyWith<$Res>? get user;
  @override
  $GeometryCopyWith<$Res> get geometry;
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
    Object? listingForDays = freezed,
    Object? canLeaveOutside = freezed,
    Object? userId = freezed,
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
    return _then(_Gift(
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
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
class _$_Gift implements _Gift {
  const _$_Gift(
      {this.id,
      required this.listingForDays,
      required this.canLeaveOutside,
      required this.userId,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          this.user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required this.geometry,
      required this.giftType,
      required this.giftDetails,
      required this.pickUpTime,
      required this.area,
      required this.location,
      required this.imageUrl,
      required this.distance});

  factory _$_Gift.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftFromJson(json);

  @override
  final String? id;
  @override
  final int listingForDays;
  @override
  final bool canLeaveOutside;
  @override
  final String userId;
  @override
  @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
  final LocalUser? user;
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
    return 'Gift(id: $id, listingForDays: $listingForDays, canLeaveOutside: $canLeaveOutside, userId: $userId, user: $user, geometry: $geometry, giftType: $giftType, giftDetails: $giftDetails, pickUpTime: $pickUpTime, area: $area, location: $location, imageUrl: $imageUrl, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Gift &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.listingForDays, listingForDays) ||
                const DeepCollectionEquality()
                    .equals(other.listingForDays, listingForDays)) &&
            (identical(other.canLeaveOutside, canLeaveOutside) ||
                const DeepCollectionEquality()
                    .equals(other.canLeaveOutside, canLeaveOutside)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
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
      const DeepCollectionEquality().hash(userId) ^
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
      required int listingForDays,
      required bool canLeaveOutside,
      required String userId,
      @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
          LocalUser? user,
      @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
          required Geometry geometry,
      required String giftType,
      required String giftDetails,
      required DateTime pickUpTime,
      required String area,
      required String location,
      required String imageUrl,
      required double distance}) = _$_Gift;

  factory _Gift.fromJson(Map<String, dynamic> json) = _$_Gift.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get listingForDays => throw _privateConstructorUsedError;
  @override
  bool get canLeaveOutside => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: localUserFromMap, toJson: localUserToMap)
  LocalUser? get user => throw _privateConstructorUsedError;
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
  _$GiftCopyWith<_Gift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GiftLoadingOptionTearOff {
  const _$GiftLoadingOptionTearOff();

  ByLocation byLocation() {
    return const ByLocation();
  }

  BySearch bySearch() {
    return const BySearch();
  }
}

/// @nodoc
const $GiftLoadingOption = _$GiftLoadingOptionTearOff();

/// @nodoc
mixin _$GiftLoadingOption {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() byLocation,
    required TResult Function() bySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? byLocation,
    TResult Function()? bySearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByLocation value) byLocation,
    required TResult Function(BySearch value) bySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByLocation value)? byLocation,
    TResult Function(BySearch value)? bySearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftLoadingOptionCopyWith<$Res> {
  factory $GiftLoadingOptionCopyWith(
          GiftLoadingOption value, $Res Function(GiftLoadingOption) then) =
      _$GiftLoadingOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftLoadingOptionCopyWithImpl<$Res>
    implements $GiftLoadingOptionCopyWith<$Res> {
  _$GiftLoadingOptionCopyWithImpl(this._value, this._then);

  final GiftLoadingOption _value;
  // ignore: unused_field
  final $Res Function(GiftLoadingOption) _then;
}

/// @nodoc
abstract class $ByLocationCopyWith<$Res> {
  factory $ByLocationCopyWith(
          ByLocation value, $Res Function(ByLocation) then) =
      _$ByLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$ByLocationCopyWithImpl<$Res>
    extends _$GiftLoadingOptionCopyWithImpl<$Res>
    implements $ByLocationCopyWith<$Res> {
  _$ByLocationCopyWithImpl(ByLocation _value, $Res Function(ByLocation) _then)
      : super(_value, (v) => _then(v as ByLocation));

  @override
  ByLocation get _value => super._value as ByLocation;
}

/// @nodoc

class _$ByLocation implements ByLocation {
  const _$ByLocation();

  @override
  String toString() {
    return 'GiftLoadingOption.byLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ByLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() byLocation,
    required TResult Function() bySearch,
  }) {
    return byLocation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? byLocation,
    TResult Function()? bySearch,
    required TResult orElse(),
  }) {
    if (byLocation != null) {
      return byLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByLocation value) byLocation,
    required TResult Function(BySearch value) bySearch,
  }) {
    return byLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByLocation value)? byLocation,
    TResult Function(BySearch value)? bySearch,
    required TResult orElse(),
  }) {
    if (byLocation != null) {
      return byLocation(this);
    }
    return orElse();
  }
}

abstract class ByLocation implements GiftLoadingOption {
  const factory ByLocation() = _$ByLocation;
}

/// @nodoc
abstract class $BySearchCopyWith<$Res> {
  factory $BySearchCopyWith(BySearch value, $Res Function(BySearch) then) =
      _$BySearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$BySearchCopyWithImpl<$Res> extends _$GiftLoadingOptionCopyWithImpl<$Res>
    implements $BySearchCopyWith<$Res> {
  _$BySearchCopyWithImpl(BySearch _value, $Res Function(BySearch) _then)
      : super(_value, (v) => _then(v as BySearch));

  @override
  BySearch get _value => super._value as BySearch;
}

/// @nodoc

class _$BySearch implements BySearch {
  const _$BySearch();

  @override
  String toString() {
    return 'GiftLoadingOption.bySearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BySearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() byLocation,
    required TResult Function() bySearch,
  }) {
    return bySearch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? byLocation,
    TResult Function()? bySearch,
    required TResult orElse(),
  }) {
    if (bySearch != null) {
      return bySearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByLocation value) byLocation,
    required TResult Function(BySearch value) bySearch,
  }) {
    return bySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByLocation value)? byLocation,
    TResult Function(BySearch value)? bySearch,
    required TResult orElse(),
  }) {
    if (bySearch != null) {
      return bySearch(this);
    }
    return orElse();
  }
}

abstract class BySearch implements GiftLoadingOption {
  const factory BySearch() = _$BySearch;
}

/// @nodoc
class _$GiftListUnionTearOff {
  const _$GiftListUnionTearOff();

  Data data(List<Gift> giftList) {
    return Data(
      giftList,
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
const $GiftListUnion = _$GiftListUnionTearOff();

/// @nodoc
mixin _$GiftListUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Gift> giftList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Gift> giftList)? data,
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
abstract class $GiftListUnionCopyWith<$Res> {
  factory $GiftListUnionCopyWith(
          GiftListUnion value, $Res Function(GiftListUnion) then) =
      _$GiftListUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftListUnionCopyWithImpl<$Res>
    implements $GiftListUnionCopyWith<$Res> {
  _$GiftListUnionCopyWithImpl(this._value, this._then);

  final GiftListUnion _value;
  // ignore: unused_field
  final $Res Function(GiftListUnion) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Gift> giftList});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$GiftListUnionCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? giftList = freezed,
  }) {
    return _then(Data(
      giftList == freezed
          ? _value.giftList
          : giftList // ignore: cast_nullable_to_non_nullable
              as List<Gift>,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.giftList);

  @override
  final List<Gift> giftList;

  @override
  String toString() {
    return 'GiftListUnion.data(giftList: $giftList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.giftList, giftList) ||
                const DeepCollectionEquality()
                    .equals(other.giftList, giftList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(giftList);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Gift> giftList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return data(giftList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Gift> giftList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(giftList);
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

abstract class Data implements GiftListUnion {
  const factory Data(List<Gift> giftList) = _$Data;

  List<Gift> get giftList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$GiftListUnionCopyWithImpl<$Res>
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
    return 'GiftListUnion.empty()';
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
    required TResult Function(List<Gift> giftList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Gift> giftList)? data,
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

abstract class Empty implements GiftListUnion {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$GiftListUnionCopyWithImpl<$Res>
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
    return 'GiftListUnion.loading()';
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
    required TResult Function(List<Gift> giftList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Gift> giftList)? data,
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

abstract class Loading implements GiftListUnion {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$GiftListUnionCopyWithImpl<$Res>
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
    return 'GiftListUnion.error(error: $error)';
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
    required TResult Function(List<Gift> giftList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Gift> giftList)? data,
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

abstract class Error implements GiftListUnion {
  const factory Error(Object error) = _$Error;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
