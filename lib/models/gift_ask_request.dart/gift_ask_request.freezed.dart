// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_ask_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftAskRequest _$GiftAskRequestFromJson(Map<String, dynamic> json) {
  return _GiftAskRequest.fromJson(json);
}

/// @nodoc
class _$GiftAskRequestTearOff {
  const _$GiftAskRequestTearOff();

  _GiftAskRequest call(
      {String? id,
      String? giverId,
      required String comment,
      bool messageForRequesterSent = false,
      bool messageForGiverSent = false,
      @JsonKey(fromJson: giftAskRequestStatusFromJson, toJson: giftAskRequestStatusToJson)
          GiftAskRequestStatus
              giftAskRequestStatus = const GiftAskRequestStatus.pending(),
      @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
          required GiftAsk giftAsk,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          required LocalUser giver,
      required DateTime createdAt}) {
    return _GiftAskRequest(
      id: id,
      giverId: giverId,
      comment: comment,
      messageForRequesterSent: messageForRequesterSent,
      messageForGiverSent: messageForGiverSent,
      giftAskRequestStatus: giftAskRequestStatus,
      giftAsk: giftAsk,
      giver: giver,
      createdAt: createdAt,
    );
  }

  GiftAskRequest fromJson(Map<String, Object> json) {
    return GiftAskRequest.fromJson(json);
  }
}

/// @nodoc
const $GiftAskRequest = _$GiftAskRequestTearOff();

/// @nodoc
mixin _$GiftAskRequest {
  String? get id => throw _privateConstructorUsedError;
  String? get giverId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  bool get messageForGiverSent => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: giftAskRequestStatusFromJson,
      toJson: giftAskRequestStatusToJson)
  GiftAskRequestStatus get giftAskRequestStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
  GiftAsk get giftAsk => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  LocalUser get giver => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftAskRequestCopyWith<GiftAskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskRequestCopyWith<$Res> {
  factory $GiftAskRequestCopyWith(
          GiftAskRequest value, $Res Function(GiftAskRequest) then) =
      _$GiftAskRequestCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? giverId,
      String comment,
      bool messageForRequesterSent,
      bool messageForGiverSent,
      @JsonKey(fromJson: giftAskRequestStatusFromJson, toJson: giftAskRequestStatusToJson)
          GiftAskRequestStatus giftAskRequestStatus,
      @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
          GiftAsk giftAsk,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          LocalUser giver,
      DateTime createdAt});

  $GiftAskRequestStatusCopyWith<$Res> get giftAskRequestStatus;
  $GiftAskCopyWith<$Res> get giftAsk;
  $LocalUserCopyWith<$Res> get giver;
}

/// @nodoc
class _$GiftAskRequestCopyWithImpl<$Res>
    implements $GiftAskRequestCopyWith<$Res> {
  _$GiftAskRequestCopyWithImpl(this._value, this._then);

  final GiftAskRequest _value;
  // ignore: unused_field
  final $Res Function(GiftAskRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giverId = freezed,
    Object? comment = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverSent = freezed,
    Object? giftAskRequestStatus = freezed,
    Object? giftAsk = freezed,
    Object? giver = freezed,
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
      messageForRequesterSent: messageForRequesterSent == freezed
          ? _value.messageForRequesterSent
          : messageForRequesterSent // ignore: cast_nullable_to_non_nullable
              as bool,
      messageForGiverSent: messageForGiverSent == freezed
          ? _value.messageForGiverSent
          : messageForGiverSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giftAskRequestStatus: giftAskRequestStatus == freezed
          ? _value.giftAskRequestStatus
          : giftAskRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftAskRequestStatus,
      giftAsk: giftAsk == freezed
          ? _value.giftAsk
          : giftAsk // ignore: cast_nullable_to_non_nullable
              as GiftAsk,
      giver: giver == freezed
          ? _value.giver
          : giver // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $GiftAskRequestStatusCopyWith<$Res> get giftAskRequestStatus {
    return $GiftAskRequestStatusCopyWith<$Res>(_value.giftAskRequestStatus,
        (value) {
      return _then(_value.copyWith(giftAskRequestStatus: value));
    });
  }

  @override
  $GiftAskCopyWith<$Res> get giftAsk {
    return $GiftAskCopyWith<$Res>(_value.giftAsk, (value) {
      return _then(_value.copyWith(giftAsk: value));
    });
  }

  @override
  $LocalUserCopyWith<$Res> get giver {
    return $LocalUserCopyWith<$Res>(_value.giver, (value) {
      return _then(_value.copyWith(giver: value));
    });
  }
}

/// @nodoc
abstract class _$GiftAskRequestCopyWith<$Res>
    implements $GiftAskRequestCopyWith<$Res> {
  factory _$GiftAskRequestCopyWith(
          _GiftAskRequest value, $Res Function(_GiftAskRequest) then) =
      __$GiftAskRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? giverId,
      String comment,
      bool messageForRequesterSent,
      bool messageForGiverSent,
      @JsonKey(fromJson: giftAskRequestStatusFromJson, toJson: giftAskRequestStatusToJson)
          GiftAskRequestStatus giftAskRequestStatus,
      @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
          GiftAsk giftAsk,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          LocalUser giver,
      DateTime createdAt});

  @override
  $GiftAskRequestStatusCopyWith<$Res> get giftAskRequestStatus;
  @override
  $GiftAskCopyWith<$Res> get giftAsk;
  @override
  $LocalUserCopyWith<$Res> get giver;
}

/// @nodoc
class __$GiftAskRequestCopyWithImpl<$Res>
    extends _$GiftAskRequestCopyWithImpl<$Res>
    implements _$GiftAskRequestCopyWith<$Res> {
  __$GiftAskRequestCopyWithImpl(
      _GiftAskRequest _value, $Res Function(_GiftAskRequest) _then)
      : super(_value, (v) => _then(v as _GiftAskRequest));

  @override
  _GiftAskRequest get _value => super._value as _GiftAskRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? giverId = freezed,
    Object? comment = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverSent = freezed,
    Object? giftAskRequestStatus = freezed,
    Object? giftAsk = freezed,
    Object? giver = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftAskRequest(
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
      messageForRequesterSent: messageForRequesterSent == freezed
          ? _value.messageForRequesterSent
          : messageForRequesterSent // ignore: cast_nullable_to_non_nullable
              as bool,
      messageForGiverSent: messageForGiverSent == freezed
          ? _value.messageForGiverSent
          : messageForGiverSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giftAskRequestStatus: giftAskRequestStatus == freezed
          ? _value.giftAskRequestStatus
          : giftAskRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftAskRequestStatus,
      giftAsk: giftAsk == freezed
          ? _value.giftAsk
          : giftAsk // ignore: cast_nullable_to_non_nullable
              as GiftAsk,
      giver: giver == freezed
          ? _value.giver
          : giver // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GiftAskRequest implements _GiftAskRequest {
  _$_GiftAskRequest(
      {this.id,
      this.giverId,
      required this.comment,
      this.messageForRequesterSent = false,
      this.messageForGiverSent = false,
      @JsonKey(fromJson: giftAskRequestStatusFromJson, toJson: giftAskRequestStatusToJson)
          this.giftAskRequestStatus = const GiftAskRequestStatus.pending(),
      @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
          required this.giftAsk,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          required this.giver,
      required this.createdAt});

  factory _$_GiftAskRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftAskRequestFromJson(json);

  @override
  final String? id;
  @override
  final String? giverId;
  @override
  final String comment;
  @JsonKey(defaultValue: false)
  @override
  final bool messageForRequesterSent;
  @JsonKey(defaultValue: false)
  @override
  final bool messageForGiverSent;
  @override
  @JsonKey(
      fromJson: giftAskRequestStatusFromJson,
      toJson: giftAskRequestStatusToJson)
  final GiftAskRequestStatus giftAskRequestStatus;
  @override
  @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
  final GiftAsk giftAsk;
  @override
  @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  final LocalUser giver;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'GiftAskRequest(id: $id, giverId: $giverId, comment: $comment, messageForRequesterSent: $messageForRequesterSent, messageForGiverSent: $messageForGiverSent, giftAskRequestStatus: $giftAskRequestStatus, giftAsk: $giftAsk, giver: $giver, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftAskRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.giverId, giverId) ||
                const DeepCollectionEquality()
                    .equals(other.giverId, giverId)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(
                    other.messageForRequesterSent, messageForRequesterSent) ||
                const DeepCollectionEquality().equals(
                    other.messageForRequesterSent, messageForRequesterSent)) &&
            (identical(other.messageForGiverSent, messageForGiverSent) ||
                const DeepCollectionEquality()
                    .equals(other.messageForGiverSent, messageForGiverSent)) &&
            (identical(other.giftAskRequestStatus, giftAskRequestStatus) ||
                const DeepCollectionEquality().equals(
                    other.giftAskRequestStatus, giftAskRequestStatus)) &&
            (identical(other.giftAsk, giftAsk) ||
                const DeepCollectionEquality()
                    .equals(other.giftAsk, giftAsk)) &&
            (identical(other.giver, giver) ||
                const DeepCollectionEquality().equals(other.giver, giver)) &&
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
      const DeepCollectionEquality().hash(messageForRequesterSent) ^
      const DeepCollectionEquality().hash(messageForGiverSent) ^
      const DeepCollectionEquality().hash(giftAskRequestStatus) ^
      const DeepCollectionEquality().hash(giftAsk) ^
      const DeepCollectionEquality().hash(giver) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftAskRequestCopyWith<_GiftAskRequest> get copyWith =>
      __$GiftAskRequestCopyWithImpl<_GiftAskRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftAskRequestToJson(this);
  }
}

abstract class _GiftAskRequest implements GiftAskRequest {
  factory _GiftAskRequest(
      {String? id,
      String? giverId,
      required String comment,
      bool messageForRequesterSent,
      bool messageForGiverSent,
      @JsonKey(fromJson: giftAskRequestStatusFromJson, toJson: giftAskRequestStatusToJson)
          GiftAskRequestStatus giftAskRequestStatus,
      @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
          required GiftAsk giftAsk,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          required LocalUser giver,
      required DateTime createdAt}) = _$_GiftAskRequest;

  factory _GiftAskRequest.fromJson(Map<String, dynamic> json) =
      _$_GiftAskRequest.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get giverId => throw _privateConstructorUsedError;
  @override
  String get comment => throw _privateConstructorUsedError;
  @override
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  @override
  bool get messageForGiverSent => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      fromJson: giftAskRequestStatusFromJson,
      toJson: giftAskRequestStatusToJson)
  GiftAskRequestStatus get giftAskRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap)
  GiftAsk get giftAsk => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  LocalUser get giver => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftAskRequestCopyWith<_GiftAskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftAskRequestStatus _$GiftAskRequestStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'pending':
      return Pending.fromJson(json);
    case 'confirmed':
      return Confirmed.fromJson(json);
    case 'canceledByGiver':
      return CanceledByGiver.fromJson(json);
    case 'canceledByRequester':
      return CanceledByRequester.fromJson(json);
    case 'accepted':
      return Accepted.fromJson(json);
    case 'delivered':
      return Delivered.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GiftAskRequestStatusTearOff {
  const _$GiftAskRequestStatusTearOff();

  Pending pending() {
    return const Pending();
  }

  Confirmed confirmed() {
    return const Confirmed();
  }

  CanceledByGiver canceledByGiver() {
    return const CanceledByGiver();
  }

  CanceledByRequester canceledByRequester() {
    return const CanceledByRequester();
  }

  Accepted accepted() {
    return const Accepted();
  }

  Delivered delivered() {
    return const Delivered();
  }

  GiftAskRequestStatus fromJson(Map<String, Object> json) {
    return GiftAskRequestStatus.fromJson(json);
  }
}

/// @nodoc
const $GiftAskRequestStatus = _$GiftAskRequestStatusTearOff();

/// @nodoc
mixin _$GiftAskRequestStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() accepted,
    required TResult Function() delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? accepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pending value) pending,
    required TResult Function(Confirmed value) confirmed,
    required TResult Function(CanceledByGiver value) canceledByGiver,
    required TResult Function(CanceledByRequester value) canceledByRequester,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Delivered value) delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Accepted value)? accepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskRequestStatusCopyWith<$Res> {
  factory $GiftAskRequestStatusCopyWith(GiftAskRequestStatus value,
          $Res Function(GiftAskRequestStatus) then) =
      _$GiftAskRequestStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskRequestStatusCopyWithImpl<$Res>
    implements $GiftAskRequestStatusCopyWith<$Res> {
  _$GiftAskRequestStatusCopyWithImpl(this._value, this._then);

  final GiftAskRequestStatus _value;
  // ignore: unused_field
  final $Res Function(GiftAskRequestStatus) _then;
}

/// @nodoc
abstract class $PendingCopyWith<$Res> {
  factory $PendingCopyWith(Pending value, $Res Function(Pending) then) =
      _$PendingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PendingCopyWithImpl<$Res>
    extends _$GiftAskRequestStatusCopyWithImpl<$Res>
    implements $PendingCopyWith<$Res> {
  _$PendingCopyWithImpl(Pending _value, $Res Function(Pending) _then)
      : super(_value, (v) => _then(v as Pending));

  @override
  Pending get _value => super._value as Pending;
}

/// @nodoc
@JsonSerializable()
class _$Pending implements Pending {
  const _$Pending();

  factory _$Pending.fromJson(Map<String, dynamic> json) =>
      _$_$PendingFromJson(json);

  @override
  String toString() {
    return 'GiftAskRequestStatus.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Pending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() accepted,
    required TResult Function() delivered,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? accepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pending value) pending,
    required TResult Function(Confirmed value) confirmed,
    required TResult Function(CanceledByGiver value) canceledByGiver,
    required TResult Function(CanceledByRequester value) canceledByRequester,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Delivered value) delivered,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Accepted value)? accepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PendingToJson(this)..['runtimeType'] = 'pending';
  }
}

abstract class Pending implements GiftAskRequestStatus {
  const factory Pending() = _$Pending;

  factory Pending.fromJson(Map<String, dynamic> json) = _$Pending.fromJson;
}

/// @nodoc
abstract class $ConfirmedCopyWith<$Res> {
  factory $ConfirmedCopyWith(Confirmed value, $Res Function(Confirmed) then) =
      _$ConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmedCopyWithImpl<$Res>
    extends _$GiftAskRequestStatusCopyWithImpl<$Res>
    implements $ConfirmedCopyWith<$Res> {
  _$ConfirmedCopyWithImpl(Confirmed _value, $Res Function(Confirmed) _then)
      : super(_value, (v) => _then(v as Confirmed));

  @override
  Confirmed get _value => super._value as Confirmed;
}

/// @nodoc
@JsonSerializable()
class _$Confirmed implements Confirmed {
  const _$Confirmed();

  factory _$Confirmed.fromJson(Map<String, dynamic> json) =>
      _$_$ConfirmedFromJson(json);

  @override
  String toString() {
    return 'GiftAskRequestStatus.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Confirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() accepted,
    required TResult Function() delivered,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? accepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pending value) pending,
    required TResult Function(Confirmed value) confirmed,
    required TResult Function(CanceledByGiver value) canceledByGiver,
    required TResult Function(CanceledByRequester value) canceledByRequester,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Delivered value) delivered,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Accepted value)? accepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ConfirmedToJson(this)..['runtimeType'] = 'confirmed';
  }
}

abstract class Confirmed implements GiftAskRequestStatus {
  const factory Confirmed() = _$Confirmed;

  factory Confirmed.fromJson(Map<String, dynamic> json) = _$Confirmed.fromJson;
}

/// @nodoc
abstract class $CanceledByGiverCopyWith<$Res> {
  factory $CanceledByGiverCopyWith(
          CanceledByGiver value, $Res Function(CanceledByGiver) then) =
      _$CanceledByGiverCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledByGiverCopyWithImpl<$Res>
    extends _$GiftAskRequestStatusCopyWithImpl<$Res>
    implements $CanceledByGiverCopyWith<$Res> {
  _$CanceledByGiverCopyWithImpl(
      CanceledByGiver _value, $Res Function(CanceledByGiver) _then)
      : super(_value, (v) => _then(v as CanceledByGiver));

  @override
  CanceledByGiver get _value => super._value as CanceledByGiver;
}

/// @nodoc
@JsonSerializable()
class _$CanceledByGiver implements CanceledByGiver {
  const _$CanceledByGiver();

  factory _$CanceledByGiver.fromJson(Map<String, dynamic> json) =>
      _$_$CanceledByGiverFromJson(json);

  @override
  String toString() {
    return 'GiftAskRequestStatus.canceledByGiver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CanceledByGiver);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() accepted,
    required TResult Function() delivered,
  }) {
    return canceledByGiver();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? accepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (canceledByGiver != null) {
      return canceledByGiver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pending value) pending,
    required TResult Function(Confirmed value) confirmed,
    required TResult Function(CanceledByGiver value) canceledByGiver,
    required TResult Function(CanceledByRequester value) canceledByRequester,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Delivered value) delivered,
  }) {
    return canceledByGiver(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Accepted value)? accepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (canceledByGiver != null) {
      return canceledByGiver(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CanceledByGiverToJson(this)..['runtimeType'] = 'canceledByGiver';
  }
}

abstract class CanceledByGiver implements GiftAskRequestStatus {
  const factory CanceledByGiver() = _$CanceledByGiver;

  factory CanceledByGiver.fromJson(Map<String, dynamic> json) =
      _$CanceledByGiver.fromJson;
}

/// @nodoc
abstract class $CanceledByRequesterCopyWith<$Res> {
  factory $CanceledByRequesterCopyWith(
          CanceledByRequester value, $Res Function(CanceledByRequester) then) =
      _$CanceledByRequesterCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledByRequesterCopyWithImpl<$Res>
    extends _$GiftAskRequestStatusCopyWithImpl<$Res>
    implements $CanceledByRequesterCopyWith<$Res> {
  _$CanceledByRequesterCopyWithImpl(
      CanceledByRequester _value, $Res Function(CanceledByRequester) _then)
      : super(_value, (v) => _then(v as CanceledByRequester));

  @override
  CanceledByRequester get _value => super._value as CanceledByRequester;
}

/// @nodoc
@JsonSerializable()
class _$CanceledByRequester implements CanceledByRequester {
  const _$CanceledByRequester();

  factory _$CanceledByRequester.fromJson(Map<String, dynamic> json) =>
      _$_$CanceledByRequesterFromJson(json);

  @override
  String toString() {
    return 'GiftAskRequestStatus.canceledByRequester()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CanceledByRequester);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() accepted,
    required TResult Function() delivered,
  }) {
    return canceledByRequester();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? accepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (canceledByRequester != null) {
      return canceledByRequester();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pending value) pending,
    required TResult Function(Confirmed value) confirmed,
    required TResult Function(CanceledByGiver value) canceledByGiver,
    required TResult Function(CanceledByRequester value) canceledByRequester,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Delivered value) delivered,
  }) {
    return canceledByRequester(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Accepted value)? accepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (canceledByRequester != null) {
      return canceledByRequester(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CanceledByRequesterToJson(this)
      ..['runtimeType'] = 'canceledByRequester';
  }
}

abstract class CanceledByRequester implements GiftAskRequestStatus {
  const factory CanceledByRequester() = _$CanceledByRequester;

  factory CanceledByRequester.fromJson(Map<String, dynamic> json) =
      _$CanceledByRequester.fromJson;
}

/// @nodoc
abstract class $AcceptedCopyWith<$Res> {
  factory $AcceptedCopyWith(Accepted value, $Res Function(Accepted) then) =
      _$AcceptedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AcceptedCopyWithImpl<$Res>
    extends _$GiftAskRequestStatusCopyWithImpl<$Res>
    implements $AcceptedCopyWith<$Res> {
  _$AcceptedCopyWithImpl(Accepted _value, $Res Function(Accepted) _then)
      : super(_value, (v) => _then(v as Accepted));

  @override
  Accepted get _value => super._value as Accepted;
}

/// @nodoc
@JsonSerializable()
class _$Accepted implements Accepted {
  const _$Accepted();

  factory _$Accepted.fromJson(Map<String, dynamic> json) =>
      _$_$AcceptedFromJson(json);

  @override
  String toString() {
    return 'GiftAskRequestStatus.accepted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Accepted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() accepted,
    required TResult Function() delivered,
  }) {
    return accepted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? accepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pending value) pending,
    required TResult Function(Confirmed value) confirmed,
    required TResult Function(CanceledByGiver value) canceledByGiver,
    required TResult Function(CanceledByRequester value) canceledByRequester,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Delivered value) delivered,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Accepted value)? accepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AcceptedToJson(this)..['runtimeType'] = 'accepted';
  }
}

abstract class Accepted implements GiftAskRequestStatus {
  const factory Accepted() = _$Accepted;

  factory Accepted.fromJson(Map<String, dynamic> json) = _$Accepted.fromJson;
}

/// @nodoc
abstract class $DeliveredCopyWith<$Res> {
  factory $DeliveredCopyWith(Delivered value, $Res Function(Delivered) then) =
      _$DeliveredCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeliveredCopyWithImpl<$Res>
    extends _$GiftAskRequestStatusCopyWithImpl<$Res>
    implements $DeliveredCopyWith<$Res> {
  _$DeliveredCopyWithImpl(Delivered _value, $Res Function(Delivered) _then)
      : super(_value, (v) => _then(v as Delivered));

  @override
  Delivered get _value => super._value as Delivered;
}

/// @nodoc
@JsonSerializable()
class _$Delivered implements Delivered {
  const _$Delivered();

  factory _$Delivered.fromJson(Map<String, dynamic> json) =>
      _$_$DeliveredFromJson(json);

  @override
  String toString() {
    return 'GiftAskRequestStatus.delivered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Delivered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() accepted,
    required TResult Function() delivered,
  }) {
    return delivered();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? accepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (delivered != null) {
      return delivered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pending value) pending,
    required TResult Function(Confirmed value) confirmed,
    required TResult Function(CanceledByGiver value) canceledByGiver,
    required TResult Function(CanceledByRequester value) canceledByRequester,
    required TResult Function(Accepted value) accepted,
    required TResult Function(Delivered value) delivered,
  }) {
    return delivered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Accepted value)? accepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (delivered != null) {
      return delivered(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DeliveredToJson(this)..['runtimeType'] = 'delivered';
  }
}

abstract class Delivered implements GiftAskRequestStatus {
  const factory Delivered() = _$Delivered;

  factory Delivered.fromJson(Map<String, dynamic> json) = _$Delivered.fromJson;
}

/// @nodoc
class _$GiftAskRequestNotificationUnionTearOff {
  const _$GiftAskRequestNotificationUnionTearOff();

  Data dataa(GiftAskRequest giftAskRequest) {
    return Data(
      giftAskRequest,
    );
  }

  Loading loading() {
    return const Loading();
  }

  Error error(Object err) {
    return Error(
      err,
    );
  }
}

/// @nodoc
const $GiftAskRequestNotificationUnion =
    _$GiftAskRequestNotificationUnionTearOff();

/// @nodoc
mixin _$GiftAskRequestNotificationUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskRequest giftAskRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? dataa,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) dataa,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? dataa,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskRequestNotificationUnionCopyWith<$Res> {
  factory $GiftAskRequestNotificationUnionCopyWith(
          GiftAskRequestNotificationUnion value,
          $Res Function(GiftAskRequestNotificationUnion) then) =
      _$GiftAskRequestNotificationUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskRequestNotificationUnionCopyWithImpl<$Res>
    implements $GiftAskRequestNotificationUnionCopyWith<$Res> {
  _$GiftAskRequestNotificationUnionCopyWithImpl(this._value, this._then);

  final GiftAskRequestNotificationUnion _value;
  // ignore: unused_field
  final $Res Function(GiftAskRequestNotificationUnion) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({GiftAskRequest giftAskRequest});

  $GiftAskRequestCopyWith<$Res> get giftAskRequest;
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$GiftAskRequestNotificationUnionCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? giftAskRequest = freezed,
  }) {
    return _then(Data(
      giftAskRequest == freezed
          ? _value.giftAskRequest
          : giftAskRequest // ignore: cast_nullable_to_non_nullable
              as GiftAskRequest,
    ));
  }

  @override
  $GiftAskRequestCopyWith<$Res> get giftAskRequest {
    return $GiftAskRequestCopyWith<$Res>(_value.giftAskRequest, (value) {
      return _then(_value.copyWith(giftAskRequest: value));
    });
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.giftAskRequest);

  @override
  final GiftAskRequest giftAskRequest;

  @override
  String toString() {
    return 'GiftAskRequestNotificationUnion.dataa(giftAskRequest: $giftAskRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.giftAskRequest, giftAskRequest) ||
                const DeepCollectionEquality()
                    .equals(other.giftAskRequest, giftAskRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(giftAskRequest);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskRequest giftAskRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return dataa(giftAskRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? dataa,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (dataa != null) {
      return dataa(giftAskRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) dataa,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return dataa(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? dataa,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (dataa != null) {
      return dataa(this);
    }
    return orElse();
  }
}

abstract class Data implements GiftAskRequestNotificationUnion {
  const factory Data(GiftAskRequest giftAskRequest) = _$Data;

  GiftAskRequest get giftAskRequest => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$GiftAskRequestNotificationUnionCopyWithImpl<$Res>
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
    return 'GiftAskRequestNotificationUnion.loading()';
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
    required TResult Function(GiftAskRequest giftAskRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? dataa,
    TResult Function()? loading,
    TResult Function(Object err)? error,
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
    required TResult Function(Data value) dataa,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? dataa,
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

abstract class Loading implements GiftAskRequestNotificationUnion {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object err});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    extends _$GiftAskRequestNotificationUnionCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(Error(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'GiftAskRequestNotificationUnion.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskRequest giftAskRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? dataa,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) dataa,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? dataa,
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

abstract class Error implements GiftAskRequestNotificationUnion {
  const factory Error(Object err) = _$Error;

  Object get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GiftAskRequestStateTearOff {
  const _$GiftAskRequestStateTearOff();

  GiftAskRequestData data(GiftAskRequest giftAskRequest) {
    return GiftAskRequestData(
      giftAskRequest,
    );
  }

  GiftAskRequestLoading loading() {
    return const GiftAskRequestLoading();
  }

  GiftAskRequestError error(Object err) {
    return GiftAskRequestError(
      err,
    );
  }
}

/// @nodoc
const $GiftAskRequestState = _$GiftAskRequestStateTearOff();

/// @nodoc
mixin _$GiftAskRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskRequest giftAskRequest) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GiftAskRequestData value) data,
    required TResult Function(GiftAskRequestLoading value) loading,
    required TResult Function(GiftAskRequestError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GiftAskRequestData value)? data,
    TResult Function(GiftAskRequestLoading value)? loading,
    TResult Function(GiftAskRequestError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskRequestStateCopyWith<$Res> {
  factory $GiftAskRequestStateCopyWith(
          GiftAskRequestState value, $Res Function(GiftAskRequestState) then) =
      _$GiftAskRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskRequestStateCopyWithImpl<$Res>
    implements $GiftAskRequestStateCopyWith<$Res> {
  _$GiftAskRequestStateCopyWithImpl(this._value, this._then);

  final GiftAskRequestState _value;
  // ignore: unused_field
  final $Res Function(GiftAskRequestState) _then;
}

/// @nodoc
abstract class $GiftAskRequestDataCopyWith<$Res> {
  factory $GiftAskRequestDataCopyWith(
          GiftAskRequestData value, $Res Function(GiftAskRequestData) then) =
      _$GiftAskRequestDataCopyWithImpl<$Res>;
  $Res call({GiftAskRequest giftAskRequest});

  $GiftAskRequestCopyWith<$Res> get giftAskRequest;
}

/// @nodoc
class _$GiftAskRequestDataCopyWithImpl<$Res>
    extends _$GiftAskRequestStateCopyWithImpl<$Res>
    implements $GiftAskRequestDataCopyWith<$Res> {
  _$GiftAskRequestDataCopyWithImpl(
      GiftAskRequestData _value, $Res Function(GiftAskRequestData) _then)
      : super(_value, (v) => _then(v as GiftAskRequestData));

  @override
  GiftAskRequestData get _value => super._value as GiftAskRequestData;

  @override
  $Res call({
    Object? giftAskRequest = freezed,
  }) {
    return _then(GiftAskRequestData(
      giftAskRequest == freezed
          ? _value.giftAskRequest
          : giftAskRequest // ignore: cast_nullable_to_non_nullable
              as GiftAskRequest,
    ));
  }

  @override
  $GiftAskRequestCopyWith<$Res> get giftAskRequest {
    return $GiftAskRequestCopyWith<$Res>(_value.giftAskRequest, (value) {
      return _then(_value.copyWith(giftAskRequest: value));
    });
  }
}

/// @nodoc

class _$GiftAskRequestData implements GiftAskRequestData {
  const _$GiftAskRequestData(this.giftAskRequest);

  @override
  final GiftAskRequest giftAskRequest;

  @override
  String toString() {
    return 'GiftAskRequestState.data(giftAskRequest: $giftAskRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GiftAskRequestData &&
            (identical(other.giftAskRequest, giftAskRequest) ||
                const DeepCollectionEquality()
                    .equals(other.giftAskRequest, giftAskRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(giftAskRequest);

  @JsonKey(ignore: true)
  @override
  $GiftAskRequestDataCopyWith<GiftAskRequestData> get copyWith =>
      _$GiftAskRequestDataCopyWithImpl<GiftAskRequestData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskRequest giftAskRequest) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return data(giftAskRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(giftAskRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GiftAskRequestData value) data,
    required TResult Function(GiftAskRequestLoading value) loading,
    required TResult Function(GiftAskRequestError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GiftAskRequestData value)? data,
    TResult Function(GiftAskRequestLoading value)? loading,
    TResult Function(GiftAskRequestError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class GiftAskRequestData implements GiftAskRequestState {
  const factory GiftAskRequestData(GiftAskRequest giftAskRequest) =
      _$GiftAskRequestData;

  GiftAskRequest get giftAskRequest => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftAskRequestDataCopyWith<GiftAskRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskRequestLoadingCopyWith<$Res> {
  factory $GiftAskRequestLoadingCopyWith(GiftAskRequestLoading value,
          $Res Function(GiftAskRequestLoading) then) =
      _$GiftAskRequestLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskRequestLoadingCopyWithImpl<$Res>
    extends _$GiftAskRequestStateCopyWithImpl<$Res>
    implements $GiftAskRequestLoadingCopyWith<$Res> {
  _$GiftAskRequestLoadingCopyWithImpl(
      GiftAskRequestLoading _value, $Res Function(GiftAskRequestLoading) _then)
      : super(_value, (v) => _then(v as GiftAskRequestLoading));

  @override
  GiftAskRequestLoading get _value => super._value as GiftAskRequestLoading;
}

/// @nodoc

class _$GiftAskRequestLoading implements GiftAskRequestLoading {
  const _$GiftAskRequestLoading();

  @override
  String toString() {
    return 'GiftAskRequestState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GiftAskRequestLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskRequest giftAskRequest) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
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
    required TResult Function(GiftAskRequestData value) data,
    required TResult Function(GiftAskRequestLoading value) loading,
    required TResult Function(GiftAskRequestError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GiftAskRequestData value)? data,
    TResult Function(GiftAskRequestLoading value)? loading,
    TResult Function(GiftAskRequestError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GiftAskRequestLoading implements GiftAskRequestState {
  const factory GiftAskRequestLoading() = _$GiftAskRequestLoading;
}

/// @nodoc
abstract class $GiftAskRequestErrorCopyWith<$Res> {
  factory $GiftAskRequestErrorCopyWith(
          GiftAskRequestError value, $Res Function(GiftAskRequestError) then) =
      _$GiftAskRequestErrorCopyWithImpl<$Res>;
  $Res call({Object err});
}

/// @nodoc
class _$GiftAskRequestErrorCopyWithImpl<$Res>
    extends _$GiftAskRequestStateCopyWithImpl<$Res>
    implements $GiftAskRequestErrorCopyWith<$Res> {
  _$GiftAskRequestErrorCopyWithImpl(
      GiftAskRequestError _value, $Res Function(GiftAskRequestError) _then)
      : super(_value, (v) => _then(v as GiftAskRequestError));

  @override
  GiftAskRequestError get _value => super._value as GiftAskRequestError;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(GiftAskRequestError(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$GiftAskRequestError implements GiftAskRequestError {
  const _$GiftAskRequestError(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'GiftAskRequestState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GiftAskRequestError &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  $GiftAskRequestErrorCopyWith<GiftAskRequestError> get copyWith =>
      _$GiftAskRequestErrorCopyWithImpl<GiftAskRequestError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftAskRequest giftAskRequest) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftAskRequest giftAskRequest)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GiftAskRequestData value) data,
    required TResult Function(GiftAskRequestLoading value) loading,
    required TResult Function(GiftAskRequestError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GiftAskRequestData value)? data,
    TResult Function(GiftAskRequestLoading value)? loading,
    TResult Function(GiftAskRequestError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GiftAskRequestError implements GiftAskRequestState {
  const factory GiftAskRequestError(Object err) = _$GiftAskRequestError;

  Object get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftAskRequestErrorCopyWith<GiftAskRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GiftAskRequestListStateTearOff {
  const _$GiftAskRequestListStateTearOff();

  DataState data(List<GiftAskRequest> giftAskRequestList) {
    return DataState(
      giftAskRequestList,
    );
  }

  LoadingState loading() {
    return const LoadingState();
  }

  ErrorState error(Object err) {
    return ErrorState(
      err,
    );
  }
}

/// @nodoc
const $GiftAskRequestListState = _$GiftAskRequestListStateTearOff();

/// @nodoc
mixin _$GiftAskRequestListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAskRequest> giftAskRequestList) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAskRequest> giftAskRequestList)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftAskRequestListStateCopyWith<$Res> {
  factory $GiftAskRequestListStateCopyWith(GiftAskRequestListState value,
          $Res Function(GiftAskRequestListState) then) =
      _$GiftAskRequestListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftAskRequestListStateCopyWithImpl<$Res>
    implements $GiftAskRequestListStateCopyWith<$Res> {
  _$GiftAskRequestListStateCopyWithImpl(this._value, this._then);

  final GiftAskRequestListState _value;
  // ignore: unused_field
  final $Res Function(GiftAskRequestListState) _then;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res>;
  $Res call({List<GiftAskRequest> giftAskRequestList});
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res>
    extends _$GiftAskRequestListStateCopyWithImpl<$Res>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(DataState _value, $Res Function(DataState) _then)
      : super(_value, (v) => _then(v as DataState));

  @override
  DataState get _value => super._value as DataState;

  @override
  $Res call({
    Object? giftAskRequestList = freezed,
  }) {
    return _then(DataState(
      giftAskRequestList == freezed
          ? _value.giftAskRequestList
          : giftAskRequestList // ignore: cast_nullable_to_non_nullable
              as List<GiftAskRequest>,
    ));
  }
}

/// @nodoc

class _$DataState implements DataState {
  const _$DataState(this.giftAskRequestList);

  @override
  final List<GiftAskRequest> giftAskRequestList;

  @override
  String toString() {
    return 'GiftAskRequestListState.data(giftAskRequestList: $giftAskRequestList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataState &&
            (identical(other.giftAskRequestList, giftAskRequestList) ||
                const DeepCollectionEquality()
                    .equals(other.giftAskRequestList, giftAskRequestList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(giftAskRequestList);

  @JsonKey(ignore: true)
  @override
  $DataStateCopyWith<DataState> get copyWith =>
      _$DataStateCopyWithImpl<DataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAskRequest> giftAskRequestList) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return data(giftAskRequestList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAskRequest> giftAskRequestList)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(giftAskRequestList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataState implements GiftAskRequestListState {
  const factory DataState(List<GiftAskRequest> giftAskRequestList) =
      _$DataState;

  List<GiftAskRequest> get giftAskRequestList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStateCopyWith<DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res>
    extends _$GiftAskRequestListStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'GiftAskRequestListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAskRequest> giftAskRequestList) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAskRequest> giftAskRequestList)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
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
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements GiftAskRequestListState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({Object err});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    extends _$GiftAskRequestListStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(ErrorState(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'GiftAskRequestListState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorState &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GiftAskRequest> giftAskRequestList) data,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GiftAskRequest> giftAskRequestList)? data,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements GiftAskRequestListState {
  const factory ErrorState(Object err) = _$ErrorState;

  Object get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
