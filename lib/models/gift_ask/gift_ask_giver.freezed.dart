// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gift_ask_giver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftAskGiver _$GiftAskGiverFromJson(Map<String, dynamic> json) {
  return _GiftAskGiver.fromJson(json);
}

/// @nodoc
class _$GiftAskGiverTearOff {
  const _$GiftAskGiverTearOff();

  _GiftAskGiver call(
      {String? id,
      bool requestComplete = false,
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          required GiftAskStatus giftAskStatus,
      bool messageForRequesterSent = false,
      bool messageForGiverrSent = false,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser giver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester}) {
    return _GiftAskGiver(
      id: id,
      requestComplete: requestComplete,
      giftAskStatus: giftAskStatus,
      messageForRequesterSent: messageForRequesterSent,
      messageForGiverrSent: messageForGiverrSent,
      giver: giver,
      requester: requester,
    );
  }

  GiftAskGiver fromJson(Map<String, Object?> json) {
    return GiftAskGiver.fromJson(json);
  }
}

/// @nodoc
const $GiftAskGiver = _$GiftAskGiverTearOff();

/// @nodoc
mixin _$GiftAskGiver {
  String? get id => throw _privateConstructorUsedError;
  bool get requestComplete => throw _privateConstructorUsedError;
  @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
  GiftAskStatus get giftAskStatus => throw _privateConstructorUsedError;
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  bool get messageForGiverrSent => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get giver => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftAskGiverCopyWith<GiftAskGiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskGiverCopyWith<$Res> {
  factory $GiftAskGiverCopyWith(
          GiftAskGiver value, $Res Function(GiftAskGiver) then) =
      _$GiftAskGiverCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      bool requestComplete,
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          GiftAskStatus giftAskStatus,
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser giver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester});

  $LocalUserCopyWith<$Res> get giver;
  $LocalUserCopyWith<$Res> get requester;
}

/// @nodoc
class _$GiftAskGiverCopyWithImpl<$Res> implements $GiftAskGiverCopyWith<$Res> {
  _$GiftAskGiverCopyWithImpl(this._value, this._then);

  final GiftAskGiver _value;
  // ignore: unused_field
  final $Res Function(GiftAskGiver) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? requestComplete = freezed,
    Object? giftAskStatus = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
    Object? giver = freezed,
    Object? requester = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      requestComplete: requestComplete == freezed
          ? _value.requestComplete
          : requestComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      giftAskStatus: giftAskStatus == freezed
          ? _value.giftAskStatus
          : giftAskStatus // ignore: cast_nullable_to_non_nullable
              as GiftAskStatus,
      messageForRequesterSent: messageForRequesterSent == freezed
          ? _value.messageForRequesterSent
          : messageForRequesterSent // ignore: cast_nullable_to_non_nullable
              as bool,
      messageForGiverrSent: messageForGiverrSent == freezed
          ? _value.messageForGiverrSent
          : messageForGiverrSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giver: giver == freezed
          ? _value.giver
          : giver // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as LocalUser,
    ));
  }

  @override
  $LocalUserCopyWith<$Res> get giver {
    return $LocalUserCopyWith<$Res>(_value.giver, (value) {
      return _then(_value.copyWith(giver: value));
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
abstract class _$GiftAskGiverCopyWith<$Res>
    implements $GiftAskGiverCopyWith<$Res> {
  factory _$GiftAskGiverCopyWith(
          _GiftAskGiver value, $Res Function(_GiftAskGiver) then) =
      __$GiftAskGiverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      bool requestComplete,
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          GiftAskStatus giftAskStatus,
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser giver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester});

  @override
  $LocalUserCopyWith<$Res> get giver;
  @override
  $LocalUserCopyWith<$Res> get requester;
}

/// @nodoc
class __$GiftAskGiverCopyWithImpl<$Res> extends _$GiftAskGiverCopyWithImpl<$Res>
    implements _$GiftAskGiverCopyWith<$Res> {
  __$GiftAskGiverCopyWithImpl(
      _GiftAskGiver _value, $Res Function(_GiftAskGiver) _then)
      : super(_value, (v) => _then(v as _GiftAskGiver));

  @override
  _GiftAskGiver get _value => super._value as _GiftAskGiver;

  @override
  $Res call({
    Object? id = freezed,
    Object? requestComplete = freezed,
    Object? giftAskStatus = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
    Object? giver = freezed,
    Object? requester = freezed,
  }) {
    return _then(_GiftAskGiver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      requestComplete: requestComplete == freezed
          ? _value.requestComplete
          : requestComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      giftAskStatus: giftAskStatus == freezed
          ? _value.giftAskStatus
          : giftAskStatus // ignore: cast_nullable_to_non_nullable
              as GiftAskStatus,
      messageForRequesterSent: messageForRequesterSent == freezed
          ? _value.messageForRequesterSent
          : messageForRequesterSent // ignore: cast_nullable_to_non_nullable
              as bool,
      messageForGiverrSent: messageForGiverrSent == freezed
          ? _value.messageForGiverrSent
          : messageForGiverrSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giver: giver == freezed
          ? _value.giver
          : giver // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as LocalUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftAskGiver implements _GiftAskGiver {
  const _$_GiftAskGiver(
      {this.id,
      this.requestComplete = false,
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          required this.giftAskStatus,
      this.messageForRequesterSent = false,
      this.messageForGiverrSent = false,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required this.giver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required this.requester});

  factory _$_GiftAskGiver.fromJson(Map<String, dynamic> json) =>
      _$$_GiftAskGiverFromJson(json);

  @override
  final String? id;
  @JsonKey()
  @override
  final bool requestComplete;
  @override
  @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
  final GiftAskStatus giftAskStatus;
  @JsonKey()
  @override
  final bool messageForRequesterSent;
  @JsonKey()
  @override
  final bool messageForGiverrSent;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  final LocalUser giver;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  final LocalUser requester;

  @override
  String toString() {
    return 'GiftAskGiver(id: $id, requestComplete: $requestComplete, giftAskStatus: $giftAskStatus, messageForRequesterSent: $messageForRequesterSent, messageForGiverrSent: $messageForGiverrSent, giver: $giver, requester: $requester)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GiftAskGiver &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.requestComplete, requestComplete) &&
            const DeepCollectionEquality()
                .equals(other.giftAskStatus, giftAskStatus) &&
            const DeepCollectionEquality().equals(
                other.messageForRequesterSent, messageForRequesterSent) &&
            const DeepCollectionEquality()
                .equals(other.messageForGiverrSent, messageForGiverrSent) &&
            const DeepCollectionEquality().equals(other.giver, giver) &&
            const DeepCollectionEquality().equals(other.requester, requester));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(requestComplete),
      const DeepCollectionEquality().hash(giftAskStatus),
      const DeepCollectionEquality().hash(messageForRequesterSent),
      const DeepCollectionEquality().hash(messageForGiverrSent),
      const DeepCollectionEquality().hash(giver),
      const DeepCollectionEquality().hash(requester));

  @JsonKey(ignore: true)
  @override
  _$GiftAskGiverCopyWith<_GiftAskGiver> get copyWith =>
      __$GiftAskGiverCopyWithImpl<_GiftAskGiver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GiftAskGiverToJson(this);
  }
}

abstract class _GiftAskGiver implements GiftAskGiver {
  const factory _GiftAskGiver(
      {String? id,
      bool requestComplete,
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          required GiftAskStatus giftAskStatus,
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser giver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          required LocalUser requester}) = _$_GiftAskGiver;

  factory _GiftAskGiver.fromJson(Map<String, dynamic> json) =
      _$_GiftAskGiver.fromJson;

  @override
  String? get id;
  @override
  bool get requestComplete;
  @override
  @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
  GiftAskStatus get giftAskStatus;
  @override
  bool get messageForRequesterSent;
  @override
  bool get messageForGiverrSent;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get giver;
  @override
  @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
  LocalUser get requester;
  @override
  @JsonKey(ignore: true)
  _$GiftAskGiverCopyWith<_GiftAskGiver> get copyWith =>
      throw _privateConstructorUsedError;
}
