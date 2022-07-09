// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'help_ask_create_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HelpAskCreateEventTearOff {
  const _$HelpAskCreateEventTearOff();

  _HelpAskCreateEvent_setDetails setDetails(String objective) {
    return _HelpAskCreateEvent_setDetails(
      objective,
    );
  }

  _HelpAskCreateEvent_setLocation setLocation(LatLng latLng) {
    return _HelpAskCreateEvent_setLocation(
      latLng,
    );
  }

  _HelpAskCreateEvent_create create() {
    return const _HelpAskCreateEvent_create();
  }
}

/// @nodoc
const $HelpAskCreateEvent = _$HelpAskCreateEventTearOff();

/// @nodoc
mixin _$HelpAskCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objective) setDetails,
    required TResult Function(LatLng latLng) setLocation,
    required TResult Function() create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HelpAskCreateEvent_setDetails value) setDetails,
    required TResult Function(_HelpAskCreateEvent_setLocation value)
        setLocation,
    required TResult Function(_HelpAskCreateEvent_create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpAskCreateEventCopyWith<$Res> {
  factory $HelpAskCreateEventCopyWith(
          HelpAskCreateEvent value, $Res Function(HelpAskCreateEvent) then) =
      _$HelpAskCreateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HelpAskCreateEventCopyWithImpl<$Res>
    implements $HelpAskCreateEventCopyWith<$Res> {
  _$HelpAskCreateEventCopyWithImpl(this._value, this._then);

  final HelpAskCreateEvent _value;
  // ignore: unused_field
  final $Res Function(HelpAskCreateEvent) _then;
}

/// @nodoc
abstract class _$HelpAskCreateEvent_setDetailsCopyWith<$Res> {
  factory _$HelpAskCreateEvent_setDetailsCopyWith(
          _HelpAskCreateEvent_setDetails value,
          $Res Function(_HelpAskCreateEvent_setDetails) then) =
      __$HelpAskCreateEvent_setDetailsCopyWithImpl<$Res>;
  $Res call({String objective});
}

/// @nodoc
class __$HelpAskCreateEvent_setDetailsCopyWithImpl<$Res>
    extends _$HelpAskCreateEventCopyWithImpl<$Res>
    implements _$HelpAskCreateEvent_setDetailsCopyWith<$Res> {
  __$HelpAskCreateEvent_setDetailsCopyWithImpl(
      _HelpAskCreateEvent_setDetails _value,
      $Res Function(_HelpAskCreateEvent_setDetails) _then)
      : super(_value, (v) => _then(v as _HelpAskCreateEvent_setDetails));

  @override
  _HelpAskCreateEvent_setDetails get _value =>
      super._value as _HelpAskCreateEvent_setDetails;

  @override
  $Res call({
    Object? objective = freezed,
  }) {
    return _then(_HelpAskCreateEvent_setDetails(
      objective == freezed
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HelpAskCreateEvent_setDetails
    implements _HelpAskCreateEvent_setDetails {
  const _$_HelpAskCreateEvent_setDetails(this.objective);

  @override
  final String objective;

  @override
  String toString() {
    return 'HelpAskCreateEvent.setDetails(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpAskCreateEvent_setDetails &&
            const DeepCollectionEquality().equals(other.objective, objective));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(objective));

  @JsonKey(ignore: true)
  @override
  _$HelpAskCreateEvent_setDetailsCopyWith<_HelpAskCreateEvent_setDetails>
      get copyWith => __$HelpAskCreateEvent_setDetailsCopyWithImpl<
          _HelpAskCreateEvent_setDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objective) setDetails,
    required TResult Function(LatLng latLng) setLocation,
    required TResult Function() create,
  }) {
    return setDetails(objective);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
  }) {
    return setDetails?.call(objective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (setDetails != null) {
      return setDetails(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HelpAskCreateEvent_setDetails value) setDetails,
    required TResult Function(_HelpAskCreateEvent_setLocation value)
        setLocation,
    required TResult Function(_HelpAskCreateEvent_create value) create,
  }) {
    return setDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
  }) {
    return setDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
    required TResult orElse(),
  }) {
    if (setDetails != null) {
      return setDetails(this);
    }
    return orElse();
  }
}

abstract class _HelpAskCreateEvent_setDetails implements HelpAskCreateEvent {
  const factory _HelpAskCreateEvent_setDetails(String objective) =
      _$_HelpAskCreateEvent_setDetails;

  String get objective;
  @JsonKey(ignore: true)
  _$HelpAskCreateEvent_setDetailsCopyWith<_HelpAskCreateEvent_setDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HelpAskCreateEvent_setLocationCopyWith<$Res> {
  factory _$HelpAskCreateEvent_setLocationCopyWith(
          _HelpAskCreateEvent_setLocation value,
          $Res Function(_HelpAskCreateEvent_setLocation) then) =
      __$HelpAskCreateEvent_setLocationCopyWithImpl<$Res>;
  $Res call({LatLng latLng});
}

/// @nodoc
class __$HelpAskCreateEvent_setLocationCopyWithImpl<$Res>
    extends _$HelpAskCreateEventCopyWithImpl<$Res>
    implements _$HelpAskCreateEvent_setLocationCopyWith<$Res> {
  __$HelpAskCreateEvent_setLocationCopyWithImpl(
      _HelpAskCreateEvent_setLocation _value,
      $Res Function(_HelpAskCreateEvent_setLocation) _then)
      : super(_value, (v) => _then(v as _HelpAskCreateEvent_setLocation));

  @override
  _HelpAskCreateEvent_setLocation get _value =>
      super._value as _HelpAskCreateEvent_setLocation;

  @override
  $Res call({
    Object? latLng = freezed,
  }) {
    return _then(_HelpAskCreateEvent_setLocation(
      latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_HelpAskCreateEvent_setLocation
    implements _HelpAskCreateEvent_setLocation {
  const _$_HelpAskCreateEvent_setLocation(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'HelpAskCreateEvent.setLocation(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpAskCreateEvent_setLocation &&
            const DeepCollectionEquality().equals(other.latLng, latLng));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(latLng));

  @JsonKey(ignore: true)
  @override
  _$HelpAskCreateEvent_setLocationCopyWith<_HelpAskCreateEvent_setLocation>
      get copyWith => __$HelpAskCreateEvent_setLocationCopyWithImpl<
          _HelpAskCreateEvent_setLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objective) setDetails,
    required TResult Function(LatLng latLng) setLocation,
    required TResult Function() create,
  }) {
    return setLocation(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
  }) {
    return setLocation?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HelpAskCreateEvent_setDetails value) setDetails,
    required TResult Function(_HelpAskCreateEvent_setLocation value)
        setLocation,
    required TResult Function(_HelpAskCreateEvent_create value) create,
  }) {
    return setLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
  }) {
    return setLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(this);
    }
    return orElse();
  }
}

abstract class _HelpAskCreateEvent_setLocation implements HelpAskCreateEvent {
  const factory _HelpAskCreateEvent_setLocation(LatLng latLng) =
      _$_HelpAskCreateEvent_setLocation;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$HelpAskCreateEvent_setLocationCopyWith<_HelpAskCreateEvent_setLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HelpAskCreateEvent_createCopyWith<$Res> {
  factory _$HelpAskCreateEvent_createCopyWith(_HelpAskCreateEvent_create value,
          $Res Function(_HelpAskCreateEvent_create) then) =
      __$HelpAskCreateEvent_createCopyWithImpl<$Res>;
}

/// @nodoc
class __$HelpAskCreateEvent_createCopyWithImpl<$Res>
    extends _$HelpAskCreateEventCopyWithImpl<$Res>
    implements _$HelpAskCreateEvent_createCopyWith<$Res> {
  __$HelpAskCreateEvent_createCopyWithImpl(_HelpAskCreateEvent_create _value,
      $Res Function(_HelpAskCreateEvent_create) _then)
      : super(_value, (v) => _then(v as _HelpAskCreateEvent_create));

  @override
  _HelpAskCreateEvent_create get _value =>
      super._value as _HelpAskCreateEvent_create;
}

/// @nodoc

class _$_HelpAskCreateEvent_create implements _HelpAskCreateEvent_create {
  const _$_HelpAskCreateEvent_create();

  @override
  String toString() {
    return 'HelpAskCreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpAskCreateEvent_create);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String objective) setDetails,
    required TResult Function(LatLng latLng) setLocation,
    required TResult Function() create,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String objective)? setDetails,
    TResult Function(LatLng latLng)? setLocation,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HelpAskCreateEvent_setDetails value) setDetails,
    required TResult Function(_HelpAskCreateEvent_setLocation value)
        setLocation,
    required TResult Function(_HelpAskCreateEvent_create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HelpAskCreateEvent_setDetails value)? setDetails,
    TResult Function(_HelpAskCreateEvent_setLocation value)? setLocation,
    TResult Function(_HelpAskCreateEvent_create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _HelpAskCreateEvent_create implements HelpAskCreateEvent {
  const factory _HelpAskCreateEvent_create() = _$_HelpAskCreateEvent_create;
}
