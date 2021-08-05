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
      bool messageForRequesterSent = false,
      bool messageForGiverrSent = false,
      @JsonKey(fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
          GiftReceiverStatus
              giftReceiverStatus = const GiftReceiverStatus.pending(),
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
      messageForRequesterSent: messageForRequesterSent,
      messageForGiverrSent: messageForGiverrSent,
      giftReceiverStatus: giftReceiverStatus,
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
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  bool get messageForGiverrSent => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
  GiftReceiverStatus get giftReceiverStatus =>
      throw _privateConstructorUsedError;
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
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
          GiftReceiverStatus giftReceiverStatus,
      @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
          GiftGiver giftGiver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  $GiftReceiverStatusCopyWith<$Res> get giftReceiverStatus;
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
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
    Object? giftReceiverStatus = freezed,
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
      messageForRequesterSent: messageForRequesterSent == freezed
          ? _value.messageForRequesterSent
          : messageForRequesterSent // ignore: cast_nullable_to_non_nullable
              as bool,
      messageForGiverrSent: messageForGiverrSent == freezed
          ? _value.messageForGiverrSent
          : messageForGiverrSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giftReceiverStatus: giftReceiverStatus == freezed
          ? _value.giftReceiverStatus
          : giftReceiverStatus // ignore: cast_nullable_to_non_nullable
              as GiftReceiverStatus,
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
  $GiftReceiverStatusCopyWith<$Res> get giftReceiverStatus {
    return $GiftReceiverStatusCopyWith<$Res>(_value.giftReceiverStatus,
        (value) {
      return _then(_value.copyWith(giftReceiverStatus: value));
    });
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
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
          GiftReceiverStatus giftReceiverStatus,
      @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson)
          GiftGiver giftGiver,
      @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
          LocalUser requester,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp createdAt});

  @override
  $GiftReceiverStatusCopyWith<$Res> get giftReceiverStatus;
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
    Object? messageForRequesterSent = freezed,
    Object? messageForGiverrSent = freezed,
    Object? giftReceiverStatus = freezed,
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
      messageForRequesterSent: messageForRequesterSent == freezed
          ? _value.messageForRequesterSent
          : messageForRequesterSent // ignore: cast_nullable_to_non_nullable
              as bool,
      messageForGiverrSent: messageForGiverrSent == freezed
          ? _value.messageForGiverrSent
          : messageForGiverrSent // ignore: cast_nullable_to_non_nullable
              as bool,
      giftReceiverStatus: giftReceiverStatus == freezed
          ? _value.giftReceiverStatus
          : giftReceiverStatus // ignore: cast_nullable_to_non_nullable
              as GiftReceiverStatus,
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
      this.messageForRequesterSent = false,
      this.messageForGiverrSent = false,
      @JsonKey(fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
          this.giftReceiverStatus = const GiftReceiverStatus.pending(),
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
  @JsonKey(defaultValue: false)
  @override
  final bool messageForRequesterSent;
  @JsonKey(defaultValue: false)
  @override
  final bool messageForGiverrSent;
  @override
  @JsonKey(
      fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
  final GiftReceiverStatus giftReceiverStatus;
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
    return 'GiftReceiver(id: $id, giverId: $giverId, comment: $comment, messageForRequesterSent: $messageForRequesterSent, messageForGiverrSent: $messageForGiverrSent, giftReceiverStatus: $giftReceiverStatus, giftGiver: $giftGiver, requester: $requester, createdAt: $createdAt)';
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
            (identical(
                    other.messageForRequesterSent, messageForRequesterSent) ||
                const DeepCollectionEquality().equals(
                    other.messageForRequesterSent, messageForRequesterSent)) &&
            (identical(other.messageForGiverrSent, messageForGiverrSent) ||
                const DeepCollectionEquality().equals(
                    other.messageForGiverrSent, messageForGiverrSent)) &&
            (identical(other.giftReceiverStatus, giftReceiverStatus) ||
                const DeepCollectionEquality()
                    .equals(other.giftReceiverStatus, giftReceiverStatus)) &&
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
      const DeepCollectionEquality().hash(messageForRequesterSent) ^
      const DeepCollectionEquality().hash(messageForGiverrSent) ^
      const DeepCollectionEquality().hash(giftReceiverStatus) ^
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
      bool messageForRequesterSent,
      bool messageForGiverrSent,
      @JsonKey(fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
          GiftReceiverStatus giftReceiverStatus,
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
  bool get messageForRequesterSent => throw _privateConstructorUsedError;
  @override
  bool get messageForGiverrSent => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
  GiftReceiverStatus get giftReceiverStatus =>
      throw _privateConstructorUsedError;
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

/// @nodoc
class _$GiftReceiverStatusTearOff {
  const _$GiftReceiverStatusTearOff();

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

  Aceepted aceepted() {
    return const Aceepted();
  }

  Delivered delivered() {
    return const Delivered();
  }
}

/// @nodoc
const $GiftReceiverStatus = _$GiftReceiverStatusTearOff();

/// @nodoc
mixin _$GiftReceiverStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() canceledByGiver,
    required TResult Function() canceledByRequester,
    required TResult Function() aceepted,
    required TResult Function() delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? aceepted,
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
    required TResult Function(Aceepted value) aceepted,
    required TResult Function(Delivered value) delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Aceepted value)? aceepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftReceiverStatusCopyWith<$Res> {
  factory $GiftReceiverStatusCopyWith(
          GiftReceiverStatus value, $Res Function(GiftReceiverStatus) then) =
      _$GiftReceiverStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$GiftReceiverStatusCopyWithImpl<$Res>
    implements $GiftReceiverStatusCopyWith<$Res> {
  _$GiftReceiverStatusCopyWithImpl(this._value, this._then);

  final GiftReceiverStatus _value;
  // ignore: unused_field
  final $Res Function(GiftReceiverStatus) _then;
}

/// @nodoc
abstract class $PendingCopyWith<$Res> {
  factory $PendingCopyWith(Pending value, $Res Function(Pending) then) =
      _$PendingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PendingCopyWithImpl<$Res> extends _$GiftReceiverStatusCopyWithImpl<$Res>
    implements $PendingCopyWith<$Res> {
  _$PendingCopyWithImpl(Pending _value, $Res Function(Pending) _then)
      : super(_value, (v) => _then(v as Pending));

  @override
  Pending get _value => super._value as Pending;
}

/// @nodoc

class _$Pending implements Pending {
  const _$Pending();

  @override
  String toString() {
    return 'GiftReceiverStatus.pending()';
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
    required TResult Function() aceepted,
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
    TResult Function()? aceepted,
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
    required TResult Function(Aceepted value) aceepted,
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
    TResult Function(Aceepted value)? aceepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class Pending implements GiftReceiverStatus {
  const factory Pending() = _$Pending;
}

/// @nodoc
abstract class $ConfirmedCopyWith<$Res> {
  factory $ConfirmedCopyWith(Confirmed value, $Res Function(Confirmed) then) =
      _$ConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmedCopyWithImpl<$Res>
    extends _$GiftReceiverStatusCopyWithImpl<$Res>
    implements $ConfirmedCopyWith<$Res> {
  _$ConfirmedCopyWithImpl(Confirmed _value, $Res Function(Confirmed) _then)
      : super(_value, (v) => _then(v as Confirmed));

  @override
  Confirmed get _value => super._value as Confirmed;
}

/// @nodoc

class _$Confirmed implements Confirmed {
  const _$Confirmed();

  @override
  String toString() {
    return 'GiftReceiverStatus.confirmed()';
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
    required TResult Function() aceepted,
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
    TResult Function()? aceepted,
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
    required TResult Function(Aceepted value) aceepted,
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
    TResult Function(Aceepted value)? aceepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class Confirmed implements GiftReceiverStatus {
  const factory Confirmed() = _$Confirmed;
}

/// @nodoc
abstract class $CanceledByGiverCopyWith<$Res> {
  factory $CanceledByGiverCopyWith(
          CanceledByGiver value, $Res Function(CanceledByGiver) then) =
      _$CanceledByGiverCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledByGiverCopyWithImpl<$Res>
    extends _$GiftReceiverStatusCopyWithImpl<$Res>
    implements $CanceledByGiverCopyWith<$Res> {
  _$CanceledByGiverCopyWithImpl(
      CanceledByGiver _value, $Res Function(CanceledByGiver) _then)
      : super(_value, (v) => _then(v as CanceledByGiver));

  @override
  CanceledByGiver get _value => super._value as CanceledByGiver;
}

/// @nodoc

class _$CanceledByGiver implements CanceledByGiver {
  const _$CanceledByGiver();

  @override
  String toString() {
    return 'GiftReceiverStatus.canceledByGiver()';
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
    required TResult Function() aceepted,
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
    TResult Function()? aceepted,
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
    required TResult Function(Aceepted value) aceepted,
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
    TResult Function(Aceepted value)? aceepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (canceledByGiver != null) {
      return canceledByGiver(this);
    }
    return orElse();
  }
}

abstract class CanceledByGiver implements GiftReceiverStatus {
  const factory CanceledByGiver() = _$CanceledByGiver;
}

/// @nodoc
abstract class $CanceledByRequesterCopyWith<$Res> {
  factory $CanceledByRequesterCopyWith(
          CanceledByRequester value, $Res Function(CanceledByRequester) then) =
      _$CanceledByRequesterCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledByRequesterCopyWithImpl<$Res>
    extends _$GiftReceiverStatusCopyWithImpl<$Res>
    implements $CanceledByRequesterCopyWith<$Res> {
  _$CanceledByRequesterCopyWithImpl(
      CanceledByRequester _value, $Res Function(CanceledByRequester) _then)
      : super(_value, (v) => _then(v as CanceledByRequester));

  @override
  CanceledByRequester get _value => super._value as CanceledByRequester;
}

/// @nodoc

class _$CanceledByRequester implements CanceledByRequester {
  const _$CanceledByRequester();

  @override
  String toString() {
    return 'GiftReceiverStatus.canceledByRequester()';
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
    required TResult Function() aceepted,
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
    TResult Function()? aceepted,
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
    required TResult Function(Aceepted value) aceepted,
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
    TResult Function(Aceepted value)? aceepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (canceledByRequester != null) {
      return canceledByRequester(this);
    }
    return orElse();
  }
}

abstract class CanceledByRequester implements GiftReceiverStatus {
  const factory CanceledByRequester() = _$CanceledByRequester;
}

/// @nodoc
abstract class $AceeptedCopyWith<$Res> {
  factory $AceeptedCopyWith(Aceepted value, $Res Function(Aceepted) then) =
      _$AceeptedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AceeptedCopyWithImpl<$Res>
    extends _$GiftReceiverStatusCopyWithImpl<$Res>
    implements $AceeptedCopyWith<$Res> {
  _$AceeptedCopyWithImpl(Aceepted _value, $Res Function(Aceepted) _then)
      : super(_value, (v) => _then(v as Aceepted));

  @override
  Aceepted get _value => super._value as Aceepted;
}

/// @nodoc

class _$Aceepted implements Aceepted {
  const _$Aceepted();

  @override
  String toString() {
    return 'GiftReceiverStatus.aceepted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Aceepted);
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
    required TResult Function() aceepted,
    required TResult Function() delivered,
  }) {
    return aceepted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? canceledByGiver,
    TResult Function()? canceledByRequester,
    TResult Function()? aceepted,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (aceepted != null) {
      return aceepted();
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
    required TResult Function(Aceepted value) aceepted,
    required TResult Function(Delivered value) delivered,
  }) {
    return aceepted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pending value)? pending,
    TResult Function(Confirmed value)? confirmed,
    TResult Function(CanceledByGiver value)? canceledByGiver,
    TResult Function(CanceledByRequester value)? canceledByRequester,
    TResult Function(Aceepted value)? aceepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (aceepted != null) {
      return aceepted(this);
    }
    return orElse();
  }
}

abstract class Aceepted implements GiftReceiverStatus {
  const factory Aceepted() = _$Aceepted;
}

/// @nodoc
abstract class $DeliveredCopyWith<$Res> {
  factory $DeliveredCopyWith(Delivered value, $Res Function(Delivered) then) =
      _$DeliveredCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeliveredCopyWithImpl<$Res>
    extends _$GiftReceiverStatusCopyWithImpl<$Res>
    implements $DeliveredCopyWith<$Res> {
  _$DeliveredCopyWithImpl(Delivered _value, $Res Function(Delivered) _then)
      : super(_value, (v) => _then(v as Delivered));

  @override
  Delivered get _value => super._value as Delivered;
}

/// @nodoc

class _$Delivered implements Delivered {
  const _$Delivered();

  @override
  String toString() {
    return 'GiftReceiverStatus.delivered()';
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
    required TResult Function() aceepted,
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
    TResult Function()? aceepted,
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
    required TResult Function(Aceepted value) aceepted,
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
    TResult Function(Aceepted value)? aceepted,
    TResult Function(Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (delivered != null) {
      return delivered(this);
    }
    return orElse();
  }
}

abstract class Delivered implements GiftReceiverStatus {
  const factory Delivered() = _$Delivered;
}
