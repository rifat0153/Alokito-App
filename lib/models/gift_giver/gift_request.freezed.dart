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
      String? giverId,
      GiftRequestStatus giftRequestStatus = GiftRequestStatus.requestDelivered,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftReqeust(
      id: id,
      giverId: giverId,
      giftRequestStatus: giftRequestStatus,
      requester: requester,
      createdAt: createdAt,
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
  String? get giverId => throw _privateConstructorUsedError;
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

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
      String? giverId,
      GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $LocalUserCopyWith<$Res> get requester;
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
    Object? giverId = freezed,
    Object? giftRequestStatus = freezed,
    Object? requester = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giverId: giverId == freezed
          ? _value.giverId
          : giverId // ignore: cast_nullable_to_non_nullable
              as String?,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as LocalUser,
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
      String? giverId,
      GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $LocalUserCopyWith<$Res> get requester;
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
    Object? giverId = freezed,
    Object? giftRequestStatus = freezed,
    Object? requester = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftReqeust(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giverId: giverId == freezed
          ? _value.giverId
          : giverId // ignore: cast_nullable_to_non_nullable
              as String?,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftReqeust extends _GiftReqeust {
  const _$_GiftReqeust(
      {this.id,
      this.giverId,
      this.giftRequestStatus = GiftRequestStatus.requestDelivered,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required this.requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt})
      : super._();

  factory _$_GiftReqeust.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftReqeustFromJson(json);

  @override
  final String? id;
  @override
  final String? giverId;
  @JsonKey(defaultValue: GiftRequestStatus.requestDelivered)
  @override
  final GiftRequestStatus giftRequestStatus;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  final LocalUser requester;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftReqeust(id: $id, giverId: $giverId, giftRequestStatus: $giftRequestStatus, requester: $requester, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftReqeust &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giverId, giverId) ||
                const DeepCollectionEquality()
                    .equals(other.giverId, giverId)) &&
            (identical(other.giftRequestStatus, giftRequestStatus) ||
                const DeepCollectionEquality()
                    .equals(other.giftRequestStatus, giftRequestStatus)) &&
            (identical(other.requester, requester) ||
                const DeepCollectionEquality()
                    .equals(other.requester, requester)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giverId) ^
      const DeepCollectionEquality().hash(giftRequestStatus) ^
      const DeepCollectionEquality().hash(requester) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftReqeustCopyWith<_GiftReqeust> get copyWith =>
      __$GiftReqeustCopyWithImpl<_GiftReqeust>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftReqeustToJson(this);
  }
}

abstract class _GiftReqeust extends GiftReqeust {
  const factory _GiftReqeust(
      {String? id,
      String? giverId,
      GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftReqeust;
  const _GiftReqeust._() : super._();

  factory _GiftReqeust.fromJson(Map<String, dynamic> json) =
      _$_GiftReqeust.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get giverId => throw _privateConstructorUsedError;
  @override
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftReqeustCopyWith<_GiftReqeust> get copyWith =>
      throw _privateConstructorUsedError;
}
