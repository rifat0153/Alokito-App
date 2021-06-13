// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftRecord _$GiftRecordFromJson(Map<String, dynamic> json) {
  return _GiftRecord.fromJson(json);
}

/// @nodoc
class _$GiftRecordTearOff {
  const _$GiftRecordTearOff();

  _GiftRecord call(
      {String? id,
      @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
          required GiftReqeust giftReqeust,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftRecord(
      id: id,
      giftReqeust: giftReqeust,
      createdAt: createdAt,
    );
  }

  GiftRecord fromJson(Map<String, Object> json) {
    return GiftRecord.fromJson(json);
  }
}

/// @nodoc
const $GiftRecord = _$GiftRecordTearOff();

/// @nodoc
mixin _$GiftRecord {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
  GiftReqeust get giftReqeust => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftRecordCopyWith<GiftRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftRecordCopyWith<$Res> {
  factory $GiftRecordCopyWith(
          GiftRecord value, $Res Function(GiftRecord) then) =
      _$GiftRecordCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
          GiftReqeust giftReqeust,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $GiftReqeustCopyWith<$Res> get giftReqeust;
}

/// @nodoc
class _$GiftRecordCopyWithImpl<$Res> implements $GiftRecordCopyWith<$Res> {
  _$GiftRecordCopyWithImpl(this._value, this._then);

  final GiftRecord _value;
  // ignore: unused_field
  final $Res Function(GiftRecord) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftReqeust = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftReqeust: giftReqeust == freezed
          ? _value.giftReqeust
          : giftReqeust // ignore: cast_nullable_to_non_nullable
              as GiftReqeust,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  @override
  $GiftReqeustCopyWith<$Res> get giftReqeust {
    return $GiftReqeustCopyWith<$Res>(_value.giftReqeust, (value) {
      return _then(_value.copyWith(giftReqeust: value));
    });
  }
}

/// @nodoc
abstract class _$GiftRecordCopyWith<$Res> implements $GiftRecordCopyWith<$Res> {
  factory _$GiftRecordCopyWith(
          _GiftRecord value, $Res Function(_GiftRecord) then) =
      __$GiftRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
          GiftReqeust giftReqeust,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $GiftReqeustCopyWith<$Res> get giftReqeust;
}

/// @nodoc
class __$GiftRecordCopyWithImpl<$Res> extends _$GiftRecordCopyWithImpl<$Res>
    implements _$GiftRecordCopyWith<$Res> {
  __$GiftRecordCopyWithImpl(
      _GiftRecord _value, $Res Function(_GiftRecord) _then)
      : super(_value, (v) => _then(v as _GiftRecord));

  @override
  _GiftRecord get _value => super._value as _GiftRecord;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftReqeust = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftRecord(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftReqeust: giftReqeust == freezed
          ? _value.giftReqeust
          : giftReqeust // ignore: cast_nullable_to_non_nullable
              as GiftReqeust,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftRecord implements _GiftRecord {
  const _$_GiftRecord(
      {this.id,
      @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
          required this.giftReqeust,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_GiftRecord.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftRecordFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
  final GiftReqeust giftReqeust;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftRecord(id: $id, giftReqeust: $giftReqeust, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftRecord &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftReqeust, giftReqeust) ||
                const DeepCollectionEquality()
                    .equals(other.giftReqeust, giftReqeust)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftReqeust) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftRecordCopyWith<_GiftRecord> get copyWith =>
      __$GiftRecordCopyWithImpl<_GiftRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftRecordToJson(this);
  }
}

abstract class _GiftRecord implements GiftRecord {
  const factory _GiftRecord(
      {String? id,
      @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
          required GiftReqeust giftReqeust,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftRecord;

  factory _GiftRecord.fromJson(Map<String, dynamic> json) =
      _$_GiftRecord.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
  GiftReqeust get giftReqeust => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftRecordCopyWith<_GiftRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
