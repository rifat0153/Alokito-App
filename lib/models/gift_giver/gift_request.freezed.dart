// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftReqeust _$GiftReqeustFromJson(Map<String, dynamic> json) {
  return _GiftReqeust.fromJson(json);
}

/// @nodoc
class _$GiftReqeustTearOff {
  const _$GiftReqeustTearOff();

  _GiftReqeust call(
      {String? id,
      required String giftId,
      required String giverUid,
      required String requesterUid,
      int giftFor = 0,
      @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
          required GiftType giftType,
      required String giftImageUrl,
      required String giftDetails,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required MyPosition requesterPosition,
      required String requesterName,
      required String requesterImageUrl}) {
    return _GiftReqeust(
      id: id,
      giftId: giftId,
      giverUid: giverUid,
      requesterUid: requesterUid,
      giftFor: giftFor,
      giftType: giftType,
      giftImageUrl: giftImageUrl,
      giftDetails: giftDetails,
      requesterPosition: requesterPosition,
      requesterName: requesterName,
      requesterImageUrl: requesterImageUrl,
    );
  }

  GiftReqeust fromJson(Map<String, Object> json) {
    return GiftReqeust.fromJson(json);
  }
}

/// @nodoc
const $GiftReqeust = _$GiftReqeustTearOff();

/// @nodoc
mixin _$GiftReqeust {
  String? get id => throw _privateConstructorUsedError;
  String get giftId => throw _privateConstructorUsedError;
  String get giverUid => throw _privateConstructorUsedError;
  String get requesterUid => throw _privateConstructorUsedError;
  int get giftFor => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  String get giftImageUrl => throw _privateConstructorUsedError;
  String get giftDetails => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  MyPosition get requesterPosition => throw _privateConstructorUsedError;
  String get requesterName => throw _privateConstructorUsedError;
  String get requesterImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftReqeustCopyWith<GiftReqeust> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftReqeustCopyWith<$Res> {
  factory $GiftReqeustCopyWith(
          GiftReqeust value, $Res Function(GiftReqeust) then) =
      _$GiftReqeustCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String giftId,
      String giverUid,
      String requesterUid,
      int giftFor,
      @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
          GiftType giftType,
      String giftImageUrl,
      String giftDetails,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          MyPosition requesterPosition,
      String requesterName,
      String requesterImageUrl});

  $MyPositionCopyWith<$Res> get requesterPosition;
}

/// @nodoc
class _$GiftReqeustCopyWithImpl<$Res> implements $GiftReqeustCopyWith<$Res> {
  _$GiftReqeustCopyWithImpl(this._value, this._then);

  final GiftReqeust _value;
  // ignore: unused_field
  final $Res Function(GiftReqeust) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftId = freezed,
    Object? giverUid = freezed,
    Object? requesterUid = freezed,
    Object? giftFor = freezed,
    Object? giftType = freezed,
    Object? giftImageUrl = freezed,
    Object? giftDetails = freezed,
    Object? requesterPosition = freezed,
    Object? requesterName = freezed,
    Object? requesterImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftId: giftId == freezed
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String,
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUid: requesterUid == freezed
          ? _value.requesterUid
          : requesterUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftFor: giftFor == freezed
          ? _value.giftFor
          : giftFor // ignore: cast_nullable_to_non_nullable
              as int,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      giftImageUrl: giftImageUrl == freezed
          ? _value.giftImageUrl
          : giftImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      requesterPosition: requesterPosition == freezed
          ? _value.requesterPosition
          : requesterPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      requesterImageUrl: requesterImageUrl == freezed
          ? _value.requesterImageUrl
          : requesterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $MyPositionCopyWith<$Res> get requesterPosition {
    return $MyPositionCopyWith<$Res>(_value.requesterPosition, (value) {
      return _then(_value.copyWith(requesterPosition: value));
    });
  }
}

/// @nodoc
abstract class _$GiftReqeustCopyWith<$Res>
    implements $GiftReqeustCopyWith<$Res> {
  factory _$GiftReqeustCopyWith(
          _GiftReqeust value, $Res Function(_GiftReqeust) then) =
      __$GiftReqeustCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String giftId,
      String giverUid,
      String requesterUid,
      int giftFor,
      @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
          GiftType giftType,
      String giftImageUrl,
      String giftDetails,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          MyPosition requesterPosition,
      String requesterName,
      String requesterImageUrl});

  @override
  $MyPositionCopyWith<$Res> get requesterPosition;
}

/// @nodoc
class __$GiftReqeustCopyWithImpl<$Res> extends _$GiftReqeustCopyWithImpl<$Res>
    implements _$GiftReqeustCopyWith<$Res> {
  __$GiftReqeustCopyWithImpl(
      _GiftReqeust _value, $Res Function(_GiftReqeust) _then)
      : super(_value, (v) => _then(v as _GiftReqeust));

  @override
  _GiftReqeust get _value => super._value as _GiftReqeust;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftId = freezed,
    Object? giverUid = freezed,
    Object? requesterUid = freezed,
    Object? giftFor = freezed,
    Object? giftType = freezed,
    Object? giftImageUrl = freezed,
    Object? giftDetails = freezed,
    Object? requesterPosition = freezed,
    Object? requesterName = freezed,
    Object? requesterImageUrl = freezed,
  }) {
    return _then(_GiftReqeust(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftId: giftId == freezed
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String,
      giverUid: giverUid == freezed
          ? _value.giverUid
          : giverUid // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUid: requesterUid == freezed
          ? _value.requesterUid
          : requesterUid // ignore: cast_nullable_to_non_nullable
              as String,
      giftFor: giftFor == freezed
          ? _value.giftFor
          : giftFor // ignore: cast_nullable_to_non_nullable
              as int,
      giftType: giftType == freezed
          ? _value.giftType
          : giftType // ignore: cast_nullable_to_non_nullable
              as GiftType,
      giftImageUrl: giftImageUrl == freezed
          ? _value.giftImageUrl
          : giftImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      giftDetails: giftDetails == freezed
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as String,
      requesterPosition: requesterPosition == freezed
          ? _value.requesterPosition
          : requesterPosition // ignore: cast_nullable_to_non_nullable
              as MyPosition,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName // ignore: cast_nullable_to_non_nullable
              as String,
      requesterImageUrl: requesterImageUrl == freezed
          ? _value.requesterImageUrl
          : requesterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftReqeust implements _GiftReqeust {
  const _$_GiftReqeust(
      {this.id,
      required this.giftId,
      required this.giverUid,
      required this.requesterUid,
      this.giftFor = 0,
      @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
          required this.giftType,
      required this.giftImageUrl,
      required this.giftDetails,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required this.requesterPosition,
      required this.requesterName,
      required this.requesterImageUrl});

  factory _$_GiftReqeust.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftReqeustFromJson(json);

  @override
  final String? id;
  @override
  final String giftId;
  @override
  final String giverUid;
  @override
  final String requesterUid;
  @JsonKey(defaultValue: 0)
  @override
  final int giftFor;
  @override
  @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
  final GiftType giftType;
  @override
  final String giftImageUrl;
  @override
  final String giftDetails;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final MyPosition requesterPosition;
  @override
  final String requesterName;
  @override
  final String requesterImageUrl;

  @override
  String toString() {
    return 'GiftReqeust(id: $id, giftId: $giftId, giverUid: $giverUid, requesterUid: $requesterUid, giftFor: $giftFor, giftType: $giftType, giftImageUrl: $giftImageUrl, giftDetails: $giftDetails, requesterPosition: $requesterPosition, requesterName: $requesterName, requesterImageUrl: $requesterImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftReqeust &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftId, giftId) ||
                const DeepCollectionEquality().equals(other.giftId, giftId)) &&
            (identical(other.giverUid, giverUid) ||
                const DeepCollectionEquality()
                    .equals(other.giverUid, giverUid)) &&
            (identical(other.requesterUid, requesterUid) ||
                const DeepCollectionEquality()
                    .equals(other.requesterUid, requesterUid)) &&
            (identical(other.giftFor, giftFor) ||
                const DeepCollectionEquality()
                    .equals(other.giftFor, giftFor)) &&
            (identical(other.giftType, giftType) ||
                const DeepCollectionEquality()
                    .equals(other.giftType, giftType)) &&
            (identical(other.giftImageUrl, giftImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.giftImageUrl, giftImageUrl)) &&
            (identical(other.giftDetails, giftDetails) ||
                const DeepCollectionEquality()
                    .equals(other.giftDetails, giftDetails)) &&
            (identical(other.requesterPosition, requesterPosition) ||
                const DeepCollectionEquality()
                    .equals(other.requesterPosition, requesterPosition)) &&
            (identical(other.requesterName, requesterName) ||
                const DeepCollectionEquality()
                    .equals(other.requesterName, requesterName)) &&
            (identical(other.requesterImageUrl, requesterImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.requesterImageUrl, requesterImageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftId) ^
      const DeepCollectionEquality().hash(giverUid) ^
      const DeepCollectionEquality().hash(requesterUid) ^
      const DeepCollectionEquality().hash(giftFor) ^
      const DeepCollectionEquality().hash(giftType) ^
      const DeepCollectionEquality().hash(giftImageUrl) ^
      const DeepCollectionEquality().hash(giftDetails) ^
      const DeepCollectionEquality().hash(requesterPosition) ^
      const DeepCollectionEquality().hash(requesterName) ^
      const DeepCollectionEquality().hash(requesterImageUrl);

  @JsonKey(ignore: true)
  @override
  _$GiftReqeustCopyWith<_GiftReqeust> get copyWith =>
      __$GiftReqeustCopyWithImpl<_GiftReqeust>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftReqeustToJson(this);
  }
}

abstract class _GiftReqeust implements GiftReqeust {
  const factory _GiftReqeust(
      {String? id,
      required String giftId,
      required String giverUid,
      required String requesterUid,
      int giftFor,
      @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
          required GiftType giftType,
      required String giftImageUrl,
      required String giftDetails,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required MyPosition requesterPosition,
      required String requesterName,
      required String requesterImageUrl}) = _$_GiftReqeust;

  factory _GiftReqeust.fromJson(Map<String, dynamic> json) =
      _$_GiftReqeust.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get giftId => throw _privateConstructorUsedError;
  @override
  String get giverUid => throw _privateConstructorUsedError;
  @override
  String get requesterUid => throw _privateConstructorUsedError;
  @override
  int get giftFor => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _giftTypeFromJson, toJson: _giftTypeToJson)
  GiftType get giftType => throw _privateConstructorUsedError;
  @override
  String get giftImageUrl => throw _privateConstructorUsedError;
  @override
  String get giftDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  MyPosition get requesterPosition => throw _privateConstructorUsedError;
  @override
  String get requesterName => throw _privateConstructorUsedError;
  @override
  String get requesterImageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftReqeustCopyWith<_GiftReqeust> get copyWith =>
      throw _privateConstructorUsedError;
}
