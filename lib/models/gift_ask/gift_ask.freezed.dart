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
      bool giftGiven = false,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester,
      required String address,
      required String area,
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
      giftGiven: giftGiven,
      requester: requester,
      address: address,
      area: area,
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
  bool get giftGiven => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
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
      bool giftGiven,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      String address,
      String area,
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

  $LocalUserCopyWith<$Res> get requester;
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
    Object? giftGiven = freezed,
    Object? requester = freezed,
    Object? address = freezed,
    Object? area = freezed,
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
      giftGiven: giftGiven == freezed
          ? _value.giftGiven
          : giftGiven // ignore: cast_nullable_to_non_nullable
              as bool,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
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
  $LocalUserCopyWith<$Res> get requester {
    return $LocalUserCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value));
    });
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
      bool giftGiven,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      String address,
      String area,
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
  $LocalUserCopyWith<$Res> get requester;
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
    Object? giftGiven = freezed,
    Object? requester = freezed,
    Object? address = freezed,
    Object? area = freezed,
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
      giftGiven: giftGiven == freezed
          ? _value.giftGiven
          : giftGiven // ignore: cast_nullable_to_non_nullable
              as bool,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
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
      this.giftGiven = false,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required this.requester,
      required this.address,
      required this.area,
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
  @JsonKey(defaultValue: false)
  @override
  final bool giftGiven;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  final LocalUser requester;
  @override
  final String address;
  @override
  final String area;
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
    return 'GiftAsk(id: $id, giftGiven: $giftGiven, requester: $requester, address: $address, area: $area, position: $position, reuqestDate: $reuqestDate, requestForNoOfPeople: $requestForNoOfPeople, prescriptionImageUrl: $prescriptionImageUrl, giftAskType: $giftAskType, giftTitle: $giftTitle, giftForSmallFamily: $giftForSmallFamily, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftAsk &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftGiven, giftGiven) ||
                const DeepCollectionEquality()
                    .equals(other.giftGiven, giftGiven)) &&
            (identical(other.requester, requester) ||
                const DeepCollectionEquality()
                    .equals(other.requester, requester)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
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
      const DeepCollectionEquality().hash(giftGiven) ^
      const DeepCollectionEquality().hash(requester) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(area) ^
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
      bool giftGiven,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester,
      required String address,
      required String area,
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
  bool get giftGiven => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get area => throw _privateConstructorUsedError;
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
        (other is Data &&
            (identical(other.giftAskList, giftAskList) ||
                const DeepCollectionEquality()
                    .equals(other.giftAskList, giftAskList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(giftAskList);

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

  List<GiftAsk> get giftAskList => throw _privateConstructorUsedError;
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
    return identical(this, other) || (other is Empty);
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
    return identical(this, other) || (other is Loading);
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
    required TResult Function(List<GiftAsk> giftAskList) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
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

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
