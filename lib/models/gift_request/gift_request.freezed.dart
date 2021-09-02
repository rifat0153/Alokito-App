// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftRequest _$GiftRequestFromJson(Map<String, dynamic> json) {
  return _GiftRequest.fromJson(json);
}

/// @nodoc
class _$GiftRequestTearOff {
  const _$GiftRequestTearOff();

  _GiftRequest call(
      {String? id,
      String? giverId,
      required String comment,
      bool messageForRequesterSent = false,
      bool messageForGiverrSent = false,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus
              giftRequestStatus = const GiftRequestStatus.pending(),
      @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
          required Gift gift,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          required LocalUser requester,
      required DateTime createdAt}) {
    return _GiftRequest(
      id: id,
      giverId: giverId,
      comment: comment,
      messageForRequesterSent: messageForRequesterSent,
      messageForGiverrSent: messageForGiverrSent,
      giftRequestStatus: giftRequestStatus,
      gift: gift,
      requester: requester,
      createdAt: createdAt,
    );
  }

  GiftRequest fromJson(Map<String, Object> json) {
    return GiftRequest.fromJson(json);
  }
}

/// @nodoc
const $GiftRequest = _$GiftRequestTearOff();

/// @nodoc
mixin _$GiftRequest {
  String? get id => throw _privateConstructorUsedError;
  String? get giverId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  bool get messageForGiverrSent => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
  Gift get gift => throw _privateConstructorUsedError;
  @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  LocalUser get requester => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftRequestCopyWith<GiftRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftRequestCopyWith<$Res> {
  factory $GiftRequestCopyWith(
          GiftRequest value, $Res Function(GiftRequest) then) =
      _$GiftRequestCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? giverId,
      String comment,
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
          Gift gift,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          LocalUser requester,
      DateTime createdAt});

  $GiftRequestStatusCopyWith<$Res> get giftRequestStatus;
  $GiftCopyWith<$Res> get gift;
  $LocalUserCopyWith<$Res> get requester;
}

/// @nodoc
class _$GiftRequestCopyWithImpl<$Res> implements $GiftRequestCopyWith<$Res> {
  _$GiftRequestCopyWithImpl(this._value, this._then);

  final GiftRequest _value;
  // ignore: unused_field
  final $Res Function(GiftRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? giverId = freezed,
    Object? comment = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
    Object? giftRequestStatus = freezed,
    Object? gift = freezed,
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
      messageForRequesterSent: messageForRequesterSent == freezed
          ? _value.messageForRequesterSent
          : messageForRequesterSent // ignore: cast_nullable_to_non_nullable
              as bool,
      messageForGiverrSent: messageForGiverrSent == freezed
          ? _value.messageForGiverrSent
          : messageForGiverrSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as LocalUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $GiftRequestStatusCopyWith<$Res> get giftRequestStatus {
    return $GiftRequestStatusCopyWith<$Res>(_value.giftRequestStatus, (value) {
      return _then(_value.copyWith(giftRequestStatus: value));
    });
  }

  @override
  $GiftCopyWith<$Res> get gift {
    return $GiftCopyWith<$Res>(_value.gift, (value) {
      return _then(_value.copyWith(gift: value));
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
abstract class _$GiftRequestCopyWith<$Res>
    implements $GiftRequestCopyWith<$Res> {
  factory _$GiftRequestCopyWith(
          _GiftRequest value, $Res Function(_GiftRequest) then) =
      __$GiftRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? giverId,
      String comment,
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
          Gift gift,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          LocalUser requester,
      DateTime createdAt});

  @override
  $GiftRequestStatusCopyWith<$Res> get giftRequestStatus;
  @override
  $GiftCopyWith<$Res> get gift;
  @override
  $LocalUserCopyWith<$Res> get requester;
}

/// @nodoc
class __$GiftRequestCopyWithImpl<$Res> extends _$GiftRequestCopyWithImpl<$Res>
    implements _$GiftRequestCopyWith<$Res> {
  __$GiftRequestCopyWithImpl(
      _GiftRequest _value, $Res Function(_GiftRequest) _then)
      : super(_value, (v) => _then(v as _GiftRequest));

  @override
  _GiftRequest get _value => super._value as _GiftRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? giverId = freezed,
    Object? comment = freezed,
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
    Object? giftRequestStatus = freezed,
    Object? gift = freezed,
    Object? requester = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GiftRequest(
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
      messageForGiverrSent: messageForGiverrSent == freezed
          ? _value.messageForGiverrSent
          : messageForGiverrSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giftRequestStatus: giftRequestStatus == freezed
          ? _value.giftRequestStatus
          : giftRequestStatus // ignore: cast_nullable_to_non_nullable
              as GiftRequestStatus,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
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
class _$_GiftRequest implements _GiftRequest {
  _$_GiftRequest(
      {this.id,
      this.giverId,
      required this.comment,
      this.messageForRequesterSent = false,
      this.messageForGiverrSent = false,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          this.giftRequestStatus = const GiftRequestStatus.pending(),
      @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
          required this.gift,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          required this.requester,
      required this.createdAt});

  factory _$_GiftRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftRequestFromJson(json);

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
  final bool messageForGiverrSent;
  @override
  @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
  final GiftRequestStatus giftRequestStatus;
  @override
  @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
  final Gift gift;
  @override
  @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  final LocalUser requester;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'GiftRequest(id: $id, giverId: $giverId, comment: $comment, messageForRequesterSent: $messageForRequesterSent, messageForGiverrSent: $messageForGiverrSent, giftRequestStatus: $giftRequestStatus, gift: $gift, requester: $requester, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftRequest &&
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
            (identical(other.messageForGiverrSent, messageForGiverrSent) ||
                const DeepCollectionEquality().equals(
                    other.messageForGiverrSent, messageForGiverrSent)) &&
            (identical(other.giftRequestStatus, giftRequestStatus) ||
                const DeepCollectionEquality()
                    .equals(other.giftRequestStatus, giftRequestStatus)) &&
            (identical(other.gift, gift) ||
                const DeepCollectionEquality().equals(other.gift, gift)) &&
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
      const DeepCollectionEquality().hash(messageForRequesterSent) ^
      const DeepCollectionEquality().hash(messageForGiverrSent) ^
      const DeepCollectionEquality().hash(giftRequestStatus) ^
      const DeepCollectionEquality().hash(gift) ^
      const DeepCollectionEquality().hash(requester) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GiftRequestCopyWith<_GiftRequest> get copyWith =>
      __$GiftRequestCopyWithImpl<_GiftRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftRequestToJson(this);
  }
}

abstract class _GiftRequest implements GiftRequest {
  factory _GiftRequest(
      {String? id,
      String? giverId,
      required String comment,
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
          GiftRequestStatus giftRequestStatus,
      @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
          required Gift gift,
      @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
          required LocalUser requester,
      required DateTime createdAt}) = _$_GiftRequest;

  factory _GiftRequest.fromJson(Map<String, dynamic> json) =
      _$_GiftRequest.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get giverId => throw _privateConstructorUsedError;
  @override
  String get comment => throw _privateConstructorUsedError;
  @override
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  @override
  bool get messageForGiverrSent => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
  GiftRequestStatus get giftRequestStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: giftFromMap, toJson: giftToMap)
  Gift get gift => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap)
  LocalUser get requester => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftRequestCopyWith<_GiftRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftRequestStatus _$GiftRequestStatusFromJson(Map<String, dynamic> json) {
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
class _$GiftRequestStatusTearOff {
  const _$GiftRequestStatusTearOff();

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

  GiftRequestStatus fromJson(Map<String, Object> json) {
    return GiftRequestStatus.fromJson(json);
  }
}

/// @nodoc
const $GiftRequestStatus = _$GiftRequestStatusTearOff();

/// @nodoc
mixin _$GiftRequestStatus {
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
abstract class $GiftRequestStatusCopyWith<$Res> {
  factory $GiftRequestStatusCopyWith(
          GiftRequestStatus value, $Res Function(GiftRequestStatus) then) =
      _$GiftRequestStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftRequestStatusCopyWithImpl<$Res>
    implements $GiftRequestStatusCopyWith<$Res> {
  _$GiftRequestStatusCopyWithImpl(this._value, this._then);

  final GiftRequestStatus _value;
  // ignore: unused_field
  final $Res Function(GiftRequestStatus) _then;
}

/// @nodoc
abstract class $PendingCopyWith<$Res> {
  factory $PendingCopyWith(Pending value, $Res Function(Pending) then) =
      _$PendingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PendingCopyWithImpl<$Res> extends _$GiftRequestStatusCopyWithImpl<$Res>
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
    return 'GiftRequestStatus.pending()';
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

abstract class Pending implements GiftRequestStatus {
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
    extends _$GiftRequestStatusCopyWithImpl<$Res>
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
    return 'GiftRequestStatus.confirmed()';
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

abstract class Confirmed implements GiftRequestStatus {
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
    extends _$GiftRequestStatusCopyWithImpl<$Res>
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
    return 'GiftRequestStatus.canceledByGiver()';
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

abstract class CanceledByGiver implements GiftRequestStatus {
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
    extends _$GiftRequestStatusCopyWithImpl<$Res>
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
    return 'GiftRequestStatus.canceledByRequester()';
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

abstract class CanceledByRequester implements GiftRequestStatus {
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
class _$AcceptedCopyWithImpl<$Res> extends _$GiftRequestStatusCopyWithImpl<$Res>
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
    return 'GiftRequestStatus.accepted()';
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

abstract class Accepted implements GiftRequestStatus {
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
    extends _$GiftRequestStatusCopyWithImpl<$Res>
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
    return 'GiftRequestStatus.delivered()';
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

abstract class Delivered implements GiftRequestStatus {
  const factory Delivered() = _$Delivered;

  factory Delivered.fromJson(Map<String, dynamic> json) = _$Delivered.fromJson;
}

/// @nodoc
class _$GiftRequestNotificationUnionTearOff {
  const _$GiftRequestNotificationUnionTearOff();

  Data dataa(GiftRequest giftRequest) {
    return Data(
      giftRequest,
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
const $GiftRequestNotificationUnion = _$GiftRequestNotificationUnionTearOff();

/// @nodoc
mixin _$GiftRequestNotificationUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftRequest giftRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftRequest giftRequest)? dataa,
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
abstract class $GiftRequestNotificationUnionCopyWith<$Res> {
  factory $GiftRequestNotificationUnionCopyWith(
          GiftRequestNotificationUnion value,
          $Res Function(GiftRequestNotificationUnion) then) =
      _$GiftRequestNotificationUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftRequestNotificationUnionCopyWithImpl<$Res>
    implements $GiftRequestNotificationUnionCopyWith<$Res> {
  _$GiftRequestNotificationUnionCopyWithImpl(this._value, this._then);

  final GiftRequestNotificationUnion _value;
  // ignore: unused_field
  final $Res Function(GiftRequestNotificationUnion) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({GiftRequest giftRequest});

  $GiftRequestCopyWith<$Res> get giftRequest;
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$GiftRequestNotificationUnionCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? giftRequest = freezed,
  }) {
    return _then(Data(
      giftRequest == freezed
          ? _value.giftRequest
          : giftRequest // ignore: cast_nullable_to_non_nullable
              as GiftRequest,
    ));
  }

  @override
  $GiftRequestCopyWith<$Res> get giftRequest {
    return $GiftRequestCopyWith<$Res>(_value.giftRequest, (value) {
      return _then(_value.copyWith(giftRequest: value));
    });
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.giftRequest);

  @override
  final GiftRequest giftRequest;

  @override
  String toString() {
    return 'GiftRequestNotificationUnion.dataa(giftRequest: $giftRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.giftRequest, giftRequest) ||
                const DeepCollectionEquality()
                    .equals(other.giftRequest, giftRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(giftRequest);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GiftRequest giftRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return dataa(giftRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftRequest giftRequest)? dataa,
    TResult Function()? loading,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (dataa != null) {
      return dataa(giftRequest);
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

abstract class Data implements GiftRequestNotificationUnion {
  const factory Data(GiftRequest giftRequest) = _$Data;

  GiftRequest get giftRequest => throw _privateConstructorUsedError;
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
    extends _$GiftRequestNotificationUnionCopyWithImpl<$Res>
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
    return 'GiftRequestNotificationUnion.loading()';
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
    required TResult Function(GiftRequest giftRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftRequest giftRequest)? dataa,
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

abstract class Loading implements GiftRequestNotificationUnion {
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
    extends _$GiftRequestNotificationUnionCopyWithImpl<$Res>
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
    return 'GiftRequestNotificationUnion.error(err: $err)';
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
    required TResult Function(GiftRequest giftRequest) dataa,
    required TResult Function() loading,
    required TResult Function(Object err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftRequest giftRequest)? dataa,
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

abstract class Error implements GiftRequestNotificationUnion {
  const factory Error(Object err) = _$Error;

  Object get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
