// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_receiver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftReceiver _$GiftReceiverFromJson(Map<String, dynamic> json) {
  return _GiftReceiver.fromJson(json);
}

/// @nodoc
class _$GiftReceiverTearOff {
  const _$GiftReceiverTearOff();

  _GiftReceiver call(
      {String? id,
      String? giverId,
      required String comment,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus
              giftRequestStatus = GiftRequestStatus.requestDelivered,
      @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
          required GiftGiver giftGiver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftReceiver(
      id: id,
      giverId: giverId,
      comment: comment,
      giftRequestStatus: giftRequestStatus,
      giftGiver: giftGiver,
      requester: requester,
      createdAt: createdAt,
    );
  }

  GiftReceiver fromJson(Map<String, Object> json) {
    return GiftReceiver.fromJson(json);
  }
}

/// @nodoc
const $GiftReceiver = _$GiftReceiverTearOff();

/// @nodoc
mixin _$GiftReceiver {
  String? get id => throw _privateConstructorUsedError;
  String? get giverId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
  GiftGiver get giftGiver => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftReceiverCopyWith<GiftReceiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftReceiverCopyWith<$Res> {
  factory $GiftReceiverCopyWith(
          GiftReceiver value, $Res Function(GiftReceiver) then) =
      _$GiftReceiverCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? giverId,
      String comment,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
          GiftGiver giftGiver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $GiftGiverCopyWith<$Res> get giftGiver;
  $LocalUserCopyWith<$Res> get requester;
}

/// @nodoc
class _$GiftReceiverCopyWithImpl<$Res> implements $GiftReceiverCopyWith<$Res> {
  _$GiftReceiverCopyWithImpl(this._value, this._then);

  final GiftReceiver _value;
  // ignore: unused_field
  final $Res Function(GiftReceiver) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giverId = freezed,
    Object? comment = freezed,
    Object? giftRequestStatus = freezed,
    Object? giftGiver = freezed,
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
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      giftGiver: giftGiver == freezed
          ? _value.giftGiver
          : giftGiver // ignore: cast_nullable_to_non_nullable
              as GiftGiver,
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
  $GiftGiverCopyWith<$Res> get giftGiver {
    return $GiftGiverCopyWith<$Res>(_value.giftGiver, (value) {
      return _then(_value.copyWith(giftGiver: value));
    });
  }

  @override
  $LocalUserCopyWith<$Res> get requester {
    return $LocalUserCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value));
    });
  }
}

/// @nodoc
abstract class _$GiftReceiverCopyWith<$Res>
    implements $GiftReceiverCopyWith<$Res> {
  factory _$GiftReceiverCopyWith(
          _GiftReceiver value, $Res Function(_GiftReceiver) then) =
      __$GiftReceiverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? giverId,
      String comment,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
          GiftGiver giftGiver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $GiftGiverCopyWith<$Res> get giftGiver;
  @override
  $LocalUserCopyWith<$Res> get requester;
}

/// @nodoc
class __$GiftReceiverCopyWithImpl<$Res> extends _$GiftReceiverCopyWithImpl<$Res>
    implements _$GiftReceiverCopyWith<$Res> {
  __$GiftReceiverCopyWithImpl(
      _GiftReceiver _value, $Res Function(_GiftReceiver) _then)
      : super(_value, (v) => _then(v as _GiftReceiver));

  @override
  _GiftReceiver get _value => super._value as _GiftReceiver;

  @override
  $Res call({
    Object? id = freezed,
    Object? giverId = freezed,
    Object? comment = freezed,
    Object? giftRequestStatus = freezed,
    Object? giftGiver = freezed,
    Object? requester = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftReceiver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giverId: giverId == freezed
          ? _value.giverId
          : giverId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      giftGiver: giftGiver == freezed
          ? _value.giftGiver
          : giftGiver // ignore: cast_nullable_to_non_nullable
              as GiftGiver,
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
class _$_GiftReceiver extends _GiftReceiver {
  _$_GiftReceiver(
      {this.id,
      this.giverId,
      required this.comment,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          this.giftRequestStatus = GiftRequestStatus.requestDelivered,
      @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
          required this.giftGiver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required this.requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt})
      : super._();

  factory _$_GiftReceiver.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftReceiverFromJson(json);

  @override
  final String? id;
  @override
  final String? giverId;
  @override
  final String comment;
  @override
  @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
  final GiftRequestStatus giftRequestStatus;
  @override
  @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
  final GiftGiver giftGiver;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  final LocalUser requester;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftReceiver(id: $id, giverId: $giverId, comment: $comment, giftRequestStatus: $giftRequestStatus, giftGiver: $giftGiver, requester: $requester, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftReceiver &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giverId, giverId) ||
                const DeepCollectionEquality()
                    .equals(other.giverId, giverId)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.giftRequestStatus, giftRequestStatus) ||
                const DeepCollectionEquality()
                    .equals(other.giftRequestStatus, giftRequestStatus)) &&
            (identical(other.giftGiver, giftGiver) ||
                const DeepCollectionEquality()
                    .equals(other.giftGiver, giftGiver)) &&
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
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(giftRequestStatus) ^
      const DeepCollectionEquality().hash(giftGiver) ^
      const DeepCollectionEquality().hash(requester) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftReceiverCopyWith<_GiftReceiver> get copyWith =>
      __$GiftReceiverCopyWithImpl<_GiftReceiver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftReceiverToJson(this);
  }
}

abstract class _GiftReceiver extends GiftReceiver {
  factory _GiftReceiver(
      {String? id,
      String? giverId,
      required String comment,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
          required GiftGiver giftGiver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftReceiver;
  _GiftReceiver._() : super._();

  factory _GiftReceiver.fromJson(Map<String, dynamic> json) =
      _$_GiftReceiver.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get giverId => throw _privateConstructorUsedError;
  @override
  String get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
  GiftGiver get giftGiver => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftReceiverCopyWith<_GiftReceiver> get copyWith =>
      throw _privateConstructorUsedError;
}
