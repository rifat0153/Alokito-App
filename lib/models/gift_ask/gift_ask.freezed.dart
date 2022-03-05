// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      bool giftCompleted = false,
      bool giftGiven = false,
      String familyType = 'small family package',
      required LocalUser user,
      String? title,
      required int requestForNoOfPeople,
      required String note,
      String? imageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required GiftAskType giftAskType,
      required Geometry geometry,
      required String area,
      required String location,
      bool giftForSmallFamily = false}) {
    return _GiftAsk(
      id: id,
      giftCompleted: giftCompleted,
      giftGiven: giftGiven,
      familyType: familyType,
      user: user,
      title: title,
      requestForNoOfPeople: requestForNoOfPeople,
      note: note,
      imageUrl: imageUrl,
      giftAskType: giftAskType,
      geometry: geometry,
      area: area,
      location: location,
      giftForSmallFamily: giftForSmallFamily,
    );
  }

  GiftAsk fromJson(Map<String, Object?> json) {
    return GiftAsk.fromJson(json);
  }
}

/// @nodoc
const $GiftAsk = _$GiftAskTearOff();

/// @nodoc
mixin _$GiftAsk {
  String? get id => throw _privateConstructorUsedError;
  bool get giftCompleted => throw _privateConstructorUsedError;
  bool get giftGiven => throw _privateConstructorUsedError;
  String get familyType =>
      throw _privateConstructorUsedError; // @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  LocalUser get user => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int get requestForNoOfPeople => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  GiftAskType get giftAskType =>
      throw _privateConstructorUsedError; // @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  Geometry get geometry => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get location =>
      throw _privateConstructorUsedError; // @Default('Default Title') String giftTitle,
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
      bool giftCompleted,
      bool giftGiven,
      String familyType,
      LocalUser user,
      String? title,
      int requestForNoOfPeople,
      String note,
      String? imageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          GiftAskType giftAskType,
      Geometry geometry,
      String area,
      String location,
      bool giftForSmallFamily});

  $LocalUserCopyWith<$Res> get user;
  $GeometryCopyWith<$Res> get geometry;
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
    Object? giftCompleted = freezed,
    Object? giftGiven = freezed,
    Object? familyType = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? requestForNoOfPeople = freezed,
    Object? note = freezed,
    Object? imageUrl = freezed,
    Object? giftAskType = freezed,
    Object? geometry = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? giftForSmallFamily = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftCompleted: giftCompleted == freezed
          ? _value.giftCompleted
          : giftCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      giftGiven: giftGiven == freezed
          ? _value.giftGiven
          : giftGiven // ignore: cast_nullable_to_non_nullable
              as bool,
      familyType: familyType == freezed
          ? _value.familyType
          : familyType // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      requestForNoOfPeople: requestForNoOfPeople == freezed
          ? _value.requestForNoOfPeople
          : requestForNoOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      giftAskType: giftAskType == freezed
          ? _value.giftAskType
          : giftAskType // ignore: cast_nullable_to_non_nullable
              as GiftAskType,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      giftForSmallFamily: giftForSmallFamily == freezed
          ? _value.giftForSmallFamily
          : giftForSmallFamily // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$GiftAskCopyWith<$Res> implements $GiftAskCopyWith<$Res> {
  factory _$GiftAskCopyWith(_GiftAsk value, $Res Function(_GiftAsk) then) =
      __$GiftAskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      bool giftCompleted,
      bool giftGiven,
      String familyType,
      LocalUser user,
      String? title,
      int requestForNoOfPeople,
      String note,
      String? imageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          GiftAskType giftAskType,
      Geometry geometry,
      String area,
      String location,
      bool giftForSmallFamily});

  @override
  $LocalUserCopyWith<$Res> get user;
  @override
  $GeometryCopyWith<$Res> get geometry;
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
    Object? giftCompleted = freezed,
    Object? giftGiven = freezed,
    Object? familyType = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? requestForNoOfPeople = freezed,
    Object? note = freezed,
    Object? imageUrl = freezed,
    Object? giftAskType = freezed,
    Object? geometry = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? giftForSmallFamily = freezed,
  }) {
    return _then(_GiftAsk(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftCompleted: giftCompleted == freezed
          ? _value.giftCompleted
          : giftCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      giftGiven: giftGiven == freezed
          ? _value.giftGiven
          : giftGiven // ignore: cast_nullable_to_non_nullable
              as bool,
      familyType: familyType == freezed
          ? _value.familyType
          : familyType // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      requestForNoOfPeople: requestForNoOfPeople == freezed
          ? _value.requestForNoOfPeople
          : requestForNoOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      giftAskType: giftAskType == freezed
          ? _value.giftAskType
          : giftAskType // ignore: cast_nullable_to_non_nullable
              as GiftAskType,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      giftForSmallFamily: giftForSmallFamily == freezed
          ? _value.giftForSmallFamily
          : giftForSmallFamily // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GiftAsk implements _GiftAsk {
  const _$_GiftAsk(
      {this.id,
      this.giftCompleted = false,
      this.giftGiven = false,
      this.familyType = 'small family package',
      required this.user,
      this.title,
      required this.requestForNoOfPeople,
      required this.note,
      this.imageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required this.giftAskType,
      required this.geometry,
      required this.area,
      required this.location,
      this.giftForSmallFamily = false});

  factory _$_GiftAsk.fromJson(Map<String, dynamic> json) =>
      _$$_GiftAskFromJson(json);

  @override
  final String? id;
  @JsonKey()
  @override
  final bool giftCompleted;
  @JsonKey()
  @override
  final bool giftGiven;
  @JsonKey()
  @override
  final String familyType;
  @override // @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  final LocalUser user;
  @override
  final String? title;
  @override
  final int requestForNoOfPeople;
  @override
  final String note;
  @override
  final String? imageUrl;
  @override
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  final GiftAskType giftAskType;
  @override // @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  final Geometry geometry;
  @override
  final String area;
  @override
  final String location;
  @JsonKey()
  @override // @Default('Default Title') String giftTitle,
  final bool giftForSmallFamily;

  @override
  String toString() {
    return 'GiftAsk(id: $id, giftCompleted: $giftCompleted, giftGiven: $giftGiven, familyType: $familyType, user: $user, title: $title, requestForNoOfPeople: $requestForNoOfPeople, note: $note, imageUrl: $imageUrl, giftAskType: $giftAskType, geometry: $geometry, area: $area, location: $location, giftForSmallFamily: $giftForSmallFamily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GiftAsk &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.giftCompleted, giftCompleted) &&
            const DeepCollectionEquality().equals(other.giftGiven, giftGiven) &&
            const DeepCollectionEquality()
                .equals(other.familyType, familyType) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.requestForNoOfPeople, requestForNoOfPeople) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.giftAskType, giftAskType) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.giftForSmallFamily, giftForSmallFamily));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(giftCompleted),
      const DeepCollectionEquality().hash(giftGiven),
      const DeepCollectionEquality().hash(familyType),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(requestForNoOfPeople),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(giftAskType),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(giftForSmallFamily));

  @JsonKey(ignore: true)
  @override
  _$GiftAskCopyWith<_GiftAsk> get copyWith =>
      __$GiftAskCopyWithImpl<_GiftAsk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GiftAskToJson(this);
  }
}

abstract class _GiftAsk implements GiftAsk {
  const factory _GiftAsk(
      {String? id,
      bool giftCompleted,
      bool giftGiven,
      String familyType,
      required LocalUser user,
      String? title,
      required int requestForNoOfPeople,
      required String note,
      String? imageUrl,
      @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
          required GiftAskType giftAskType,
      required Geometry geometry,
      required String area,
      required String location,
      bool giftForSmallFamily}) = _$_GiftAsk;

  factory _GiftAsk.fromJson(Map<String, dynamic> json) = _$_GiftAsk.fromJson;

  @override
  String? get id;
  @override
  bool get giftCompleted;
  @override
  bool get giftGiven;
  @override
  String get familyType;
  @override // @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  LocalUser get user;
  @override
  String? get title;
  @override
  int get requestForNoOfPeople;
  @override
  String get note;
  @override
  String? get imageUrl;
  @override
  @JsonKey(toJson: giftAskTypeToJson, fromJson: giftAskTypeFromJson)
  GiftAskType get giftAskType;
  @override // @JsonKey(fromJson: geometryFromMap, toJson: geometryToMap)
  Geometry get geometry;
  @override
  String get area;
  @override
  String get location;
  @override // @Default('Default Title') String giftTitle,
  bool get giftForSmallFamily;
  @override
  @JsonKey(ignore: true)
  _$GiftAskCopyWith<_GiftAsk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GiftAskListUnionTearOff {
  const _$GiftAskListUnionTearOff();

  Data data(List<GiftAsk> giftAskList) {
    return Data(
      giftAskList,
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
const $GiftAskListUnion = _$GiftAskListUnionTearOff();

/// @nodoc
mixin _$GiftAskListUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAsk> giftAskList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
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
abstract class $GiftAskListUnionCopyWith<$Res> {
  factory $GiftAskListUnionCopyWith(
          GiftAskListUnion value, $Res Function(GiftAskListUnion) then) =
      _$GiftAskListUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskListUnionCopyWithImpl<$Res>
    implements $GiftAskListUnionCopyWith<$Res> {
  _$GiftAskListUnionCopyWithImpl(this._value, this._then);

  final GiftAskListUnion _value;
  // ignore: unused_field
  final $Res Function(GiftAskListUnion) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<GiftAsk> giftAskList});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$GiftAskListUnionCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? giftAskList = freezed,
  }) {
    return _then(Data(
      giftAskList == freezed
          ? _value.giftAskList
          : giftAskList // ignore: cast_nullable_to_non_nullable
              as List<GiftAsk>,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.giftAskList);

  @override
  final List<GiftAsk> giftAskList;

  @override
  String toString() {
    return 'GiftAskListUnion.data(giftAskList: $giftAskList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            const DeepCollectionEquality()
                .equals(other.giftAskList, giftAskList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(giftAskList));

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAsk> giftAskList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return data(giftAskList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
  }) {
    return data?.call(giftAskList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(giftAskList);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return data?.call(this);
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

abstract class Data implements GiftAskListUnion {
  const factory Data(List<GiftAsk> giftAskList) = _$Data;

  List<GiftAsk> get giftAskList;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$GiftAskListUnionCopyWithImpl<$Res>
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
    return 'GiftAskListUnion.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAsk> giftAskList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return empty?.call(this);
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

abstract class Empty implements GiftAskListUnion {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$GiftAskListUnionCopyWithImpl<$Res>
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
    return 'GiftAskListUnion.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAsk> giftAskList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
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

abstract class Loading implements GiftAskListUnion {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$GiftAskListUnionCopyWithImpl<$Res>
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
    return 'GiftAskListUnion.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAsk> giftAskList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAsk> giftAskList)? data,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
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

abstract class Error implements GiftAskListUnion {
  const factory Error(Object error) = _$Error;

  Object get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GiftAskLoadingOptionTearOff {
  const _$GiftAskLoadingOptionTearOff();

  ByLocation byLocation() {
    return const ByLocation();
  }

  BySearch bySearch() {
    return const BySearch();
  }
}

/// @nodoc
const $GiftAskLoadingOption = _$GiftAskLoadingOptionTearOff();

/// @nodoc
mixin _$GiftAskLoadingOption {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() byLocation,
    required TResult Function() bySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? byLocation,
    TResult Function()? bySearch,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ByLocation value)? byLocation,
    TResult Function(BySearch value)? bySearch,
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
abstract class $GiftAskLoadingOptionCopyWith<$Res> {
  factory $GiftAskLoadingOptionCopyWith(GiftAskLoadingOption value,
          $Res Function(GiftAskLoadingOption) then) =
      _$GiftAskLoadingOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskLoadingOptionCopyWithImpl<$Res>
    implements $GiftAskLoadingOptionCopyWith<$Res> {
  _$GiftAskLoadingOptionCopyWithImpl(this._value, this._then);

  final GiftAskLoadingOption _value;
  // ignore: unused_field
  final $Res Function(GiftAskLoadingOption) _then;
}

/// @nodoc
abstract class $ByLocationCopyWith<$Res> {
  factory $ByLocationCopyWith(
          ByLocation value, $Res Function(ByLocation) then) =
      _$ByLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$ByLocationCopyWithImpl<$Res>
    extends _$GiftAskLoadingOptionCopyWithImpl<$Res>
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
    return 'GiftAskLoadingOption.byLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ByLocation);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? byLocation,
    TResult Function()? bySearch,
  }) {
    return byLocation?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ByLocation value)? byLocation,
    TResult Function(BySearch value)? bySearch,
  }) {
    return byLocation?.call(this);
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

abstract class ByLocation implements GiftAskLoadingOption {
  const factory ByLocation() = _$ByLocation;
}

/// @nodoc
abstract class $BySearchCopyWith<$Res> {
  factory $BySearchCopyWith(BySearch value, $Res Function(BySearch) then) =
      _$BySearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$BySearchCopyWithImpl<$Res>
    extends _$GiftAskLoadingOptionCopyWithImpl<$Res>
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
    return 'GiftAskLoadingOption.bySearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BySearch);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? byLocation,
    TResult Function()? bySearch,
  }) {
    return bySearch?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ByLocation value)? byLocation,
    TResult Function(BySearch value)? bySearch,
  }) {
    return bySearch?.call(this);
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

abstract class BySearch implements GiftAskLoadingOption {
  const factory BySearch() = _$BySearch;
}

/// @nodoc
class _$GiftAskListDtoStateTearOff {
  const _$GiftAskListDtoStateTearOff();

  DtoSuccess success(GiftAskDto giftAskDto) {
    return DtoSuccess(
      giftAskDto,
    );
  }

  DtoError error(Object e) {
    return DtoError(
      e,
    );
  }

  DtoLoading loading() {
    return const DtoLoading();
  }
}

/// @nodoc
const $GiftAskListDtoState = _$GiftAskListDtoStateTearOff();

/// @nodoc
mixin _$GiftAskListDtoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskDto giftAskDto) success,
    required TResult Function(Object e) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DtoSuccess value) success,
    required TResult Function(DtoError value) error,
    required TResult Function(DtoLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskListDtoStateCopyWith<$Res> {
  factory $GiftAskListDtoStateCopyWith(
          GiftAskListDtoState value, $Res Function(GiftAskListDtoState) then) =
      _$GiftAskListDtoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskListDtoStateCopyWithImpl<$Res>
    implements $GiftAskListDtoStateCopyWith<$Res> {
  _$GiftAskListDtoStateCopyWithImpl(this._value, this._then);

  final GiftAskListDtoState _value;
  // ignore: unused_field
  final $Res Function(GiftAskListDtoState) _then;
}

/// @nodoc
abstract class $DtoSuccessCopyWith<$Res> {
  factory $DtoSuccessCopyWith(
          DtoSuccess value, $Res Function(DtoSuccess) then) =
      _$DtoSuccessCopyWithImpl<$Res>;
  $Res call({GiftAskDto giftAskDto});
}

/// @nodoc
class _$DtoSuccessCopyWithImpl<$Res>
    extends _$GiftAskListDtoStateCopyWithImpl<$Res>
    implements $DtoSuccessCopyWith<$Res> {
  _$DtoSuccessCopyWithImpl(DtoSuccess _value, $Res Function(DtoSuccess) _then)
      : super(_value, (v) => _then(v as DtoSuccess));

  @override
  DtoSuccess get _value => super._value as DtoSuccess;

  @override
  $Res call({
    Object? giftAskDto = freezed,
  }) {
    return _then(DtoSuccess(
      giftAskDto == freezed
          ? _value.giftAskDto
          : giftAskDto // ignore: cast_nullable_to_non_nullable
              as GiftAskDto,
    ));
  }
}

/// @nodoc

class _$DtoSuccess implements DtoSuccess {
  const _$DtoSuccess(this.giftAskDto);

  @override
  final GiftAskDto giftAskDto;

  @override
  String toString() {
    return 'GiftAskListDtoState.success(giftAskDto: $giftAskDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DtoSuccess &&
            const DeepCollectionEquality()
                .equals(other.giftAskDto, giftAskDto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(giftAskDto));

  @JsonKey(ignore: true)
  @override
  $DtoSuccessCopyWith<DtoSuccess> get copyWith =>
      _$DtoSuccessCopyWithImpl<DtoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskDto giftAskDto) success,
    required TResult Function(Object e) error,
    required TResult Function() loading,
  }) {
    return success(giftAskDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
  }) {
    return success?.call(giftAskDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(giftAskDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DtoSuccess value) success,
    required TResult Function(DtoError value) error,
    required TResult Function(DtoLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DtoSuccess implements GiftAskListDtoState {
  const factory DtoSuccess(GiftAskDto giftAskDto) = _$DtoSuccess;

  GiftAskDto get giftAskDto;
  @JsonKey(ignore: true)
  $DtoSuccessCopyWith<DtoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoErrorCopyWith<$Res> {
  factory $DtoErrorCopyWith(DtoError value, $Res Function(DtoError) then) =
      _$DtoErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class _$DtoErrorCopyWithImpl<$Res>
    extends _$GiftAskListDtoStateCopyWithImpl<$Res>
    implements $DtoErrorCopyWith<$Res> {
  _$DtoErrorCopyWithImpl(DtoError _value, $Res Function(DtoError) _then)
      : super(_value, (v) => _then(v as DtoError));

  @override
  DtoError get _value => super._value as DtoError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(DtoError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$DtoError implements DtoError {
  const _$DtoError(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'GiftAskListDtoState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DtoError &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  $DtoErrorCopyWith<DtoError> get copyWith =>
      _$DtoErrorCopyWithImpl<DtoError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskDto giftAskDto) success,
    required TResult Function(Object e) error,
    required TResult Function() loading,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DtoSuccess value) success,
    required TResult Function(DtoError value) error,
    required TResult Function(DtoLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DtoError implements GiftAskListDtoState {
  const factory DtoError(Object e) = _$DtoError;

  Object get e;
  @JsonKey(ignore: true)
  $DtoErrorCopyWith<DtoError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoLoadingCopyWith<$Res> {
  factory $DtoLoadingCopyWith(
          DtoLoading value, $Res Function(DtoLoading) then) =
      _$DtoLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DtoLoadingCopyWithImpl<$Res>
    extends _$GiftAskListDtoStateCopyWithImpl<$Res>
    implements $DtoLoadingCopyWith<$Res> {
  _$DtoLoadingCopyWithImpl(DtoLoading _value, $Res Function(DtoLoading) _then)
      : super(_value, (v) => _then(v as DtoLoading));

  @override
  DtoLoading get _value => super._value as DtoLoading;
}

/// @nodoc

class _$DtoLoading implements DtoLoading {
  const _$DtoLoading();

  @override
  String toString() {
    return 'GiftAskListDtoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DtoLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskDto giftAskDto) success,
    required TResult Function(Object e) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskDto giftAskDto)? success,
    TResult Function(Object e)? error,
    TResult Function()? loading,
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
    required TResult Function(DtoSuccess value) success,
    required TResult Function(DtoError value) error,
    required TResult Function(DtoLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DtoSuccess value)? success,
    TResult Function(DtoError value)? error,
    TResult Function(DtoLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DtoLoading implements GiftAskListDtoState {
  const factory DtoLoading() = _$DtoLoading;
}
