// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_ask_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftAskNotification _$GiftAskNotificationFromJson(Map<String, dynamic> json) {
  return _GiftAskNotification.fromJson(json);
}

/// @nodoc
class _$GiftAskNotificationTearOff {
  const _$GiftAskNotificationTearOff();

  _GiftAskNotification call(
      {String? id,
      @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
          required GiftAsk giftAsk,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) {
    return _GiftAskNotification(
      id: id,
      giftAsk: giftAsk,
      createdAt: createdAt,
    );
  }

  GiftAskNotification fromJson(Map<String, Object> json) {
    return GiftAskNotification.fromJson(json);
  }
}

/// @nodoc
const $GiftAskNotification = _$GiftAskNotificationTearOff();

/// @nodoc
mixin _$GiftAskNotification {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
  GiftAsk get giftAsk => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftAskNotificationCopyWith<GiftAskNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskNotificationCopyWith<$Res> {
  factory $GiftAskNotificationCopyWith(
          GiftAskNotification value, $Res Function(GiftAskNotification) then) =
      _$GiftAskNotificationCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
          GiftAsk giftAsk,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $GiftAskCopyWith<$Res> get giftAsk;
}

/// @nodoc
class _$GiftAskNotificationCopyWithImpl<$Res>
    implements $GiftAskNotificationCopyWith<$Res> {
  _$GiftAskNotificationCopyWithImpl(this._value, this._then);

  final GiftAskNotification _value;
  // ignore: unused_field
  final $Res Function(GiftAskNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftAsk = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftAsk: giftAsk == freezed
          ? _value.giftAsk
          : giftAsk // ignore: cast_nullable_to_non_nullable
              as GiftAsk,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  @override
  $GiftAskCopyWith<$Res> get giftAsk {
    return $GiftAskCopyWith<$Res>(_value.giftAsk, (value) {
      return _then(_value.copyWith(giftAsk: value));
    });
  }
}

/// @nodoc
abstract class _$GiftAskNotificationCopyWith<$Res>
    implements $GiftAskNotificationCopyWith<$Res> {
  factory _$GiftAskNotificationCopyWith(_GiftAskNotification value,
          $Res Function(_GiftAskNotification) then) =
      __$GiftAskNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
          GiftAsk giftAsk,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $GiftAskCopyWith<$Res> get giftAsk;
}

/// @nodoc
class __$GiftAskNotificationCopyWithImpl<$Res>
    extends _$GiftAskNotificationCopyWithImpl<$Res>
    implements _$GiftAskNotificationCopyWith<$Res> {
  __$GiftAskNotificationCopyWithImpl(
      _GiftAskNotification _value, $Res Function(_GiftAskNotification) _then)
      : super(_value, (v) => _then(v as _GiftAskNotification));

  @override
  _GiftAskNotification get _value => super._value as _GiftAskNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? giftAsk = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftAskNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      giftAsk: giftAsk == freezed
          ? _value.giftAsk
          : giftAsk // ignore: cast_nullable_to_non_nullable
              as GiftAsk,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftAskNotification implements _GiftAskNotification {
  const _$_GiftAskNotification(
      {this.id,
      @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
          required this.giftAsk,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required this.createdAt});

  factory _$_GiftAskNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftAskNotificationFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
  final GiftAsk giftAsk;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'GiftAskNotification(id: $id, giftAsk: $giftAsk, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftAskNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giftAsk, giftAsk) ||
                const DeepCollectionEquality()
                    .equals(other.giftAsk, giftAsk)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(giftAsk) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftAskNotificationCopyWith<_GiftAskNotification> get copyWith =>
      __$GiftAskNotificationCopyWithImpl<_GiftAskNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftAskNotificationToJson(this);
  }
}

abstract class _GiftAskNotification implements GiftAskNotification {
  const factory _GiftAskNotification(
      {String? id,
      @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
          required GiftAsk giftAsk,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          required Timestamp createdAt}) = _$_GiftAskNotification;

  factory _GiftAskNotification.fromJson(Map<String, dynamic> json) =
      _$_GiftAskNotification.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson)
  GiftAsk get giftAsk => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftAskNotificationCopyWith<_GiftAskNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
