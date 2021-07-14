// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          GiftAskStatus giftAskStatus = GiftAskStatus.requestPending,
      bool messageForRequesterSent = false,
      bool messageForGiverrSent = false}) {
    return _GiftAskGiver(
      id: id,
      giftAskStatus: giftAskStatus,
      messageForRequesterSent: messageForRequesterSent,
      messageForGiverrSent: messageForGiverrSent,
    );
  }

  GiftAskGiver fromJson(Map<String, Object> json) {
    return GiftAskGiver.fromJson(json);
  }
}

/// @nodoc
const $GiftAskGiver = _$GiftAskGiverTearOff();

/// @nodoc
mixin _$GiftAskGiver {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
  GiftAskStatus get giftAskStatus => throw _privateConstructorUsedError;
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  bool get messageForGiverrSent => throw _privateConstructorUsedError;

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
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          GiftAskStatus giftAskStatus,
      bool messageForRequesterSent,
      bool messageForGiverrSent});
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
    Object? giftAskStatus = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
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
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          GiftAskStatus giftAskStatus,
      bool messageForRequesterSent,
      bool messageForGiverrSent});
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
    Object? giftAskStatus = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
  }) {
    return _then(_GiftAskGiver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftAskGiver implements _GiftAskGiver {
  const _$_GiftAskGiver(
      {this.id,
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          this.giftAskStatus = GiftAskStatus.requestPending,
      this.messageForRequesterSent = false,
      this.messageForGiverrSent = false});

  factory _$_GiftAskGiver.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftAskGiverFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
  final GiftAskStatus giftAskStatus;
  @JsonKey(defaultValue: false)
  @override
  final bool messageForRequesterSent;
  @JsonKey(defaultValue: false)
  @override
  final bool messageForGiverrSent;

  @override
  String toString() {
    return 'GiftAskGiver(id: $id, giftAskStatus: $giftAskStatus, messageForRequesterSent: $messageForRequesterSent, messageForGiverrSent: $messageForGiverrSent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftAskGiver &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftAskStatus, giftAskStatus) ||
                const DeepCollectionEquality()
                    .equals(other.giftAskStatus, giftAskStatus)) &&
            (identical(
                    other.messageForRequesterSent, messageForRequesterSent) ||
                const DeepCollectionEquality().equals(
                    other.messageForRequesterSent, messageForRequesterSent)) &&
            (identical(other.messageForGiverrSent, messageForGiverrSent) ||
                const DeepCollectionEquality()
                    .equals(other.messageForGiverrSent, messageForGiverrSent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftAskStatus) ^
      const DeepCollectionEquality().hash(messageForRequesterSent) ^
      const DeepCollectionEquality().hash(messageForGiverrSent);

  @JsonKey(ignore: true)
  @override
  _$GiftAskGiverCopyWith<_GiftAskGiver> get copyWith =>
      __$GiftAskGiverCopyWithImpl<_GiftAskGiver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftAskGiverToJson(this);
  }
}

abstract class _GiftAskGiver implements GiftAskGiver {
  const factory _GiftAskGiver(
      {String? id,
      @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
          GiftAskStatus giftAskStatus,
      bool messageForRequesterSent,
      bool messageForGiverrSent}) = _$_GiftAskGiver;

  factory _GiftAskGiver.fromJson(Map<String, dynamic> json) =
      _$_GiftAskGiver.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: giftAskStatusToJson, fromJson: giftAskStatusFromJson)
  GiftAskStatus get giftAskStatus => throw _privateConstructorUsedError;
  @override
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  @override
  bool get messageForGiverrSent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftAskGiverCopyWith<_GiftAskGiver> get copyWith =>
      throw _privateConstructorUsedError;
}
