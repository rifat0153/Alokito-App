// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {String? id,
      String? text,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? created_at}) {
    return _Chat(
      id: id,
      text: text,
      created_at: created_at,
    );
  }

  Chat fromJson(Map<String, Object?> json) {
    return Chat.fromJson(json);
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? text,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? created_at});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? text,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? created_at});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {this.id,
      this.text,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          this.created_at});

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  final String? id;
  @override
  final String? text;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp? created_at;

  @override
  String toString() {
    return 'Chat(id: $id, text: $text, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text, created_at);

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(this);
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {String? id,
      String? text,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
          Timestamp? created_at}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String? get id;
  @override
  String? get text;
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get created_at;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}
