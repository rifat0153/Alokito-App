// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
class _$ChatRoomTearOff {
  const _$ChatRoomTearOff();

  _ChatRoom call(
      {required String relatedDocId,
      String? roomType,
      Map<String, String>? names,
      Map<String, String>? images,
      List<String>? users,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? createdAt}) {
    return _ChatRoom(
      relatedDocId: relatedDocId,
      roomType: roomType,
      names: names,
      images: images,
      users: users,
      createdAt: createdAt,
    );
  }

  ChatRoom fromJson(Map<String, Object?> json) {
    return ChatRoom.fromJson(json);
  }
}

/// @nodoc
const $ChatRoom = _$ChatRoomTearOff();

/// @nodoc
mixin _$ChatRoom {
  String get relatedDocId => throw _privateConstructorUsedError;
  String? get roomType => throw _privateConstructorUsedError;
  Map<String, String>? get names => throw _privateConstructorUsedError;
  Map<String, String>? get images => throw _privateConstructorUsedError;
  List<String>? get users => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res>;
  $Res call(
      {String relatedDocId,
      String? roomType,
      Map<String, String>? names,
      Map<String, String>? images,
      List<String>? users,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? createdAt});
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res> implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  final ChatRoom _value;
  // ignore: unused_field
  final $Res Function(ChatRoom) _then;

  @override
  $Res call({
    Object? relatedDocId = freezed,
    Object? roomType = freezed,
    Object? names = freezed,
    Object? images = freezed,
    Object? users = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      relatedDocId: relatedDocId == freezed
          ? _value.relatedDocId
          : relatedDocId // ignore: cast_nullable_to_non_nullable
              as String,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      names: names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
abstract class _$ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$ChatRoomCopyWith(_ChatRoom value, $Res Function(_ChatRoom) then) =
      __$ChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String relatedDocId,
      String? roomType,
      Map<String, String>? names,
      Map<String, String>? images,
      List<String>? users,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? createdAt});
}

/// @nodoc
class __$ChatRoomCopyWithImpl<$Res> extends _$ChatRoomCopyWithImpl<$Res>
    implements _$ChatRoomCopyWith<$Res> {
  __$ChatRoomCopyWithImpl(_ChatRoom _value, $Res Function(_ChatRoom) _then)
      : super(_value, (v) => _then(v as _ChatRoom));

  @override
  _ChatRoom get _value => super._value as _ChatRoom;

  @override
  $Res call({
    Object? relatedDocId = freezed,
    Object? roomType = freezed,
    Object? names = freezed,
    Object? images = freezed,
    Object? users = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_ChatRoom(
      relatedDocId: relatedDocId == freezed
          ? _value.relatedDocId
          : relatedDocId // ignore: cast_nullable_to_non_nullable
              as String,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      names: names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoom implements _ChatRoom {
  _$_ChatRoom(
      {required this.relatedDocId,
      this.roomType,
      this.names,
      this.images,
      this.users,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          this.createdAt});

  factory _$_ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomFromJson(json);

  @override
  final String relatedDocId;
  @override
  final String? roomType;
  @override
  final Map<String, String>? names;
  @override
  final Map<String, String>? images;
  @override
  final List<String>? users;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp? createdAt;

  @override
  String toString() {
    return 'ChatRoom(relatedDocId: $relatedDocId, roomType: $roomType, names: $names, images: $images, users: $users, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRoom &&
            const DeepCollectionEquality()
                .equals(other.relatedDocId, relatedDocId) &&
            const DeepCollectionEquality().equals(other.roomType, roomType) &&
            const DeepCollectionEquality().equals(other.names, names) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(relatedDocId),
      const DeepCollectionEquality().hash(roomType),
      const DeepCollectionEquality().hash(names),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      __$ChatRoomCopyWithImpl<_ChatRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomToJson(this);
  }
}

abstract class _ChatRoom implements ChatRoom {
  factory _ChatRoom(
      {required String relatedDocId,
      String? roomType,
      Map<String, String>? names,
      Map<String, String>? images,
      List<String>? users,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? createdAt}) = _$_ChatRoom;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) = _$_ChatRoom.fromJson;

  @override
  String get relatedDocId;
  @override
  String? get roomType;
  @override
  Map<String, String>? get names;
  @override
  Map<String, String>? get images;
  @override
  List<String>? get users;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatRoomListUnionTearOff {
  const _$ChatRoomListUnionTearOff();

  ListSuccess data({required List<ChatRoom> chatRooms}) {
    return ListSuccess(
      chatRooms: chatRooms,
    );
  }

  ListEmpty empty() {
    return const ListEmpty();
  }

  ListLoading loading() {
    return const ListLoading();
  }

  ListError error(Object e) {
    return ListError(
      e,
    );
  }
}

/// @nodoc
const $ChatRoomListUnion = _$ChatRoomListUnionTearOff();

/// @nodoc
mixin _$ChatRoomListUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListSuccess value) data,
    required TResult Function(ListEmpty value) empty,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomListUnionCopyWith<$Res> {
  factory $ChatRoomListUnionCopyWith(
          ChatRoomListUnion value, $Res Function(ChatRoomListUnion) then) =
      _$ChatRoomListUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoomListUnionCopyWithImpl<$Res>
    implements $ChatRoomListUnionCopyWith<$Res> {
  _$ChatRoomListUnionCopyWithImpl(this._value, this._then);

  final ChatRoomListUnion _value;
  // ignore: unused_field
  final $Res Function(ChatRoomListUnion) _then;
}

/// @nodoc
abstract class $ListSuccessCopyWith<$Res> {
  factory $ListSuccessCopyWith(
          ListSuccess value, $Res Function(ListSuccess) then) =
      _$ListSuccessCopyWithImpl<$Res>;
  $Res call({List<ChatRoom> chatRooms});
}

/// @nodoc
class _$ListSuccessCopyWithImpl<$Res>
    extends _$ChatRoomListUnionCopyWithImpl<$Res>
    implements $ListSuccessCopyWith<$Res> {
  _$ListSuccessCopyWithImpl(
      ListSuccess _value, $Res Function(ListSuccess) _then)
      : super(_value, (v) => _then(v as ListSuccess));

  @override
  ListSuccess get _value => super._value as ListSuccess;

  @override
  $Res call({
    Object? chatRooms = freezed,
  }) {
    return _then(ListSuccess(
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoom>,
    ));
  }
}

/// @nodoc

class _$ListSuccess implements ListSuccess {
  const _$ListSuccess({required this.chatRooms});

  @override
  final List<ChatRoom> chatRooms;

  @override
  String toString() {
    return 'ChatRoomListUnion.data(chatRooms: $chatRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListSuccess &&
            const DeepCollectionEquality().equals(other.chatRooms, chatRooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatRooms));

  @JsonKey(ignore: true)
  @override
  $ListSuccessCopyWith<ListSuccess> get copyWith =>
      _$ListSuccessCopyWithImpl<ListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return data(chatRooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) {
    return data?.call(chatRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(chatRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListSuccess value) data,
    required TResult Function(ListEmpty value) empty,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ListSuccess implements ChatRoomListUnion {
  const factory ListSuccess({required List<ChatRoom> chatRooms}) =
      _$ListSuccess;

  List<ChatRoom> get chatRooms;
  @JsonKey(ignore: true)
  $ListSuccessCopyWith<ListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEmptyCopyWith<$Res> {
  factory $ListEmptyCopyWith(ListEmpty value, $Res Function(ListEmpty) then) =
      _$ListEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListEmptyCopyWithImpl<$Res>
    extends _$ChatRoomListUnionCopyWithImpl<$Res>
    implements $ListEmptyCopyWith<$Res> {
  _$ListEmptyCopyWithImpl(ListEmpty _value, $Res Function(ListEmpty) _then)
      : super(_value, (v) => _then(v as ListEmpty));

  @override
  ListEmpty get _value => super._value as ListEmpty;
}

/// @nodoc

class _$ListEmpty implements ListEmpty {
  const _$ListEmpty();

  @override
  String toString() {
    return 'ChatRoomListUnion.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListSuccess value) data,
    required TResult Function(ListEmpty value) empty,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ListEmpty implements ChatRoomListUnion {
  const factory ListEmpty() = _$ListEmpty;
}

/// @nodoc
abstract class $ListLoadingCopyWith<$Res> {
  factory $ListLoadingCopyWith(
          ListLoading value, $Res Function(ListLoading) then) =
      _$ListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListLoadingCopyWithImpl<$Res>
    extends _$ChatRoomListUnionCopyWithImpl<$Res>
    implements $ListLoadingCopyWith<$Res> {
  _$ListLoadingCopyWithImpl(
      ListLoading _value, $Res Function(ListLoading) _then)
      : super(_value, (v) => _then(v as ListLoading));

  @override
  ListLoading get _value => super._value as ListLoading;
}

/// @nodoc

class _$ListLoading implements ListLoading {
  const _$ListLoading();

  @override
  String toString() {
    return 'ChatRoomListUnion.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
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
    required TResult Function(ListSuccess value) data,
    required TResult Function(ListEmpty value) empty,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListLoading implements ChatRoomListUnion {
  const factory ListLoading() = _$ListLoading;
}

/// @nodoc
abstract class $ListErrorCopyWith<$Res> {
  factory $ListErrorCopyWith(ListError value, $Res Function(ListError) then) =
      _$ListErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class _$ListErrorCopyWithImpl<$Res>
    extends _$ChatRoomListUnionCopyWithImpl<$Res>
    implements $ListErrorCopyWith<$Res> {
  _$ListErrorCopyWithImpl(ListError _value, $Res Function(ListError) _then)
      : super(_value, (v) => _then(v as ListError));

  @override
  ListError get _value => super._value as ListError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(ListError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$ListError implements ListError {
  const _$ListError(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'ChatRoomListUnion.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListError &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  $ListErrorCopyWith<ListError> get copyWith =>
      _$ListErrorCopyWithImpl<ListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListSuccess value) data,
    required TResult Function(ListEmpty value) empty,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListSuccess value)? data,
    TResult Function(ListEmpty value)? empty,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListError implements ChatRoomListUnion {
  const factory ListError(Object e) = _$ListError;

  Object get e;
  @JsonKey(ignore: true)
  $ListErrorCopyWith<ListError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatRoomCreateUnionTearOff {
  const _$ChatRoomCreateUnionTearOff();

  CreateSuccess success() {
    return const CreateSuccess();
  }

  CreateLoding loading() {
    return const CreateLoding();
  }

  CreateError error(Object e) {
    return CreateError(
      e,
    );
  }
}

/// @nodoc
const $ChatRoomCreateUnion = _$ChatRoomCreateUnionTearOff();

/// @nodoc
mixin _$ChatRoomCreateUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateSuccess value) success,
    required TResult Function(CreateLoding value) loading,
    required TResult Function(CreateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCreateUnionCopyWith<$Res> {
  factory $ChatRoomCreateUnionCopyWith(
          ChatRoomCreateUnion value, $Res Function(ChatRoomCreateUnion) then) =
      _$ChatRoomCreateUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoomCreateUnionCopyWithImpl<$Res>
    implements $ChatRoomCreateUnionCopyWith<$Res> {
  _$ChatRoomCreateUnionCopyWithImpl(this._value, this._then);

  final ChatRoomCreateUnion _value;
  // ignore: unused_field
  final $Res Function(ChatRoomCreateUnion) _then;
}

/// @nodoc
abstract class $CreateSuccessCopyWith<$Res> {
  factory $CreateSuccessCopyWith(
          CreateSuccess value, $Res Function(CreateSuccess) then) =
      _$CreateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateSuccessCopyWithImpl<$Res>
    extends _$ChatRoomCreateUnionCopyWithImpl<$Res>
    implements $CreateSuccessCopyWith<$Res> {
  _$CreateSuccessCopyWithImpl(
      CreateSuccess _value, $Res Function(CreateSuccess) _then)
      : super(_value, (v) => _then(v as CreateSuccess));

  @override
  CreateSuccess get _value => super._value as CreateSuccess;
}

/// @nodoc

class _$CreateSuccess implements CreateSuccess {
  const _$CreateSuccess();

  @override
  String toString() {
    return 'ChatRoomCreateUnion.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateSuccess value) success,
    required TResult Function(CreateLoding value) loading,
    required TResult Function(CreateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateSuccess implements ChatRoomCreateUnion {
  const factory CreateSuccess() = _$CreateSuccess;
}

/// @nodoc
abstract class $CreateLodingCopyWith<$Res> {
  factory $CreateLodingCopyWith(
          CreateLoding value, $Res Function(CreateLoding) then) =
      _$CreateLodingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateLodingCopyWithImpl<$Res>
    extends _$ChatRoomCreateUnionCopyWithImpl<$Res>
    implements $CreateLodingCopyWith<$Res> {
  _$CreateLodingCopyWithImpl(
      CreateLoding _value, $Res Function(CreateLoding) _then)
      : super(_value, (v) => _then(v as CreateLoding));

  @override
  CreateLoding get _value => super._value as CreateLoding;
}

/// @nodoc

class _$CreateLoding implements CreateLoding {
  const _$CreateLoding();

  @override
  String toString() {
    return 'ChatRoomCreateUnion.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateLoding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
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
    required TResult Function(CreateSuccess value) success,
    required TResult Function(CreateLoding value) loading,
    required TResult Function(CreateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateLoding implements ChatRoomCreateUnion {
  const factory CreateLoding() = _$CreateLoding;
}

/// @nodoc
abstract class $CreateErrorCopyWith<$Res> {
  factory $CreateErrorCopyWith(
          CreateError value, $Res Function(CreateError) then) =
      _$CreateErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class _$CreateErrorCopyWithImpl<$Res>
    extends _$ChatRoomCreateUnionCopyWithImpl<$Res>
    implements $CreateErrorCopyWith<$Res> {
  _$CreateErrorCopyWithImpl(
      CreateError _value, $Res Function(CreateError) _then)
      : super(_value, (v) => _then(v as CreateError));

  @override
  CreateError get _value => super._value as CreateError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(CreateError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$CreateError implements CreateError {
  const _$CreateError(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'ChatRoomCreateUnion.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateError &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  $CreateErrorCopyWith<CreateError> get copyWith =>
      _$CreateErrorCopyWithImpl<CreateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Object e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateSuccess value) success,
    required TResult Function(CreateLoding value) loading,
    required TResult Function(CreateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateSuccess value)? success,
    TResult Function(CreateLoding value)? loading,
    TResult Function(CreateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateError implements ChatRoomCreateUnion {
  const factory CreateError(Object e) = _$CreateError;

  Object get e;
  @JsonKey(ignore: true)
  $CreateErrorCopyWith<CreateError> get copyWith =>
      throw _privateConstructorUsedError;
}
