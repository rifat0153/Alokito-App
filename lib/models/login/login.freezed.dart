// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStatusTearOff {
  const _$LoginStatusTearOff();

  LogginIn logginIn() {
    return const LogginIn();
  }

  LoggedIn loggedIn() {
    return const LoggedIn();
  }

  NotLoggedIn notLoggedIn() {
    return const NotLoggedIn();
  }

  Error error(Object error) {
    return Error(
      error,
    );
  }
}

/// @nodoc
const $LoginStatus = _$LoginStatusTearOff();

/// @nodoc
mixin _$LoginStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logginIn,
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logginIn,
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogginIn value) logginIn,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(NotLoggedIn value) notLoggedIn,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogginIn value)? logginIn,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStatusCopyWith<$Res> {
  factory $LoginStatusCopyWith(
          LoginStatus value, $Res Function(LoginStatus) then) =
      _$LoginStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStatusCopyWithImpl<$Res> implements $LoginStatusCopyWith<$Res> {
  _$LoginStatusCopyWithImpl(this._value, this._then);

  final LoginStatus _value;
  // ignore: unused_field
  final $Res Function(LoginStatus) _then;
}

/// @nodoc
abstract class $LogginInCopyWith<$Res> {
  factory $LogginInCopyWith(LogginIn value, $Res Function(LogginIn) then) =
      _$LogginInCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogginInCopyWithImpl<$Res> extends _$LoginStatusCopyWithImpl<$Res>
    implements $LogginInCopyWith<$Res> {
  _$LogginInCopyWithImpl(LogginIn _value, $Res Function(LogginIn) _then)
      : super(_value, (v) => _then(v as LogginIn));

  @override
  LogginIn get _value => super._value as LogginIn;
}

/// @nodoc

class _$LogginIn implements LogginIn {
  const _$LogginIn();

  @override
  String toString() {
    return 'LoginStatus.logginIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogginIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logginIn,
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function(Object error) error,
  }) {
    return logginIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logginIn,
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (logginIn != null) {
      return logginIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogginIn value) logginIn,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(NotLoggedIn value) notLoggedIn,
    required TResult Function(Error value) error,
  }) {
    return logginIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogginIn value)? logginIn,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (logginIn != null) {
      return logginIn(this);
    }
    return orElse();
  }
}

abstract class LogginIn implements LoginStatus {
  const factory LogginIn() = _$LogginIn;
}

/// @nodoc
abstract class $LoggedInCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) then) =
      _$LoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedInCopyWithImpl<$Res> extends _$LoginStatusCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(LoggedIn _value, $Res Function(LoggedIn) _then)
      : super(_value, (v) => _then(v as LoggedIn));

  @override
  LoggedIn get _value => super._value as LoggedIn;
}

/// @nodoc

class _$LoggedIn implements LoggedIn {
  const _$LoggedIn();

  @override
  String toString() {
    return 'LoginStatus.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logginIn,
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function(Object error) error,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logginIn,
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogginIn value) logginIn,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(NotLoggedIn value) notLoggedIn,
    required TResult Function(Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogginIn value)? logginIn,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements LoginStatus {
  const factory LoggedIn() = _$LoggedIn;
}

/// @nodoc
abstract class $NotLoggedInCopyWith<$Res> {
  factory $NotLoggedInCopyWith(
          NotLoggedIn value, $Res Function(NotLoggedIn) then) =
      _$NotLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoggedInCopyWithImpl<$Res> extends _$LoginStatusCopyWithImpl<$Res>
    implements $NotLoggedInCopyWith<$Res> {
  _$NotLoggedInCopyWithImpl(
      NotLoggedIn _value, $Res Function(NotLoggedIn) _then)
      : super(_value, (v) => _then(v as NotLoggedIn));

  @override
  NotLoggedIn get _value => super._value as NotLoggedIn;
}

/// @nodoc

class _$NotLoggedIn implements NotLoggedIn {
  const _$NotLoggedIn();

  @override
  String toString() {
    return 'LoginStatus.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logginIn,
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function(Object error) error,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logginIn,
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogginIn value) logginIn,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(NotLoggedIn value) notLoggedIn,
    required TResult Function(Error value) error,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogginIn value)? logginIn,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class NotLoggedIn implements LoginStatus {
  const factory NotLoggedIn() = _$NotLoggedIn;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LoginStatusCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'LoginStatus.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logginIn,
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logginIn,
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogginIn value) logginIn,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(NotLoggedIn value) notLoggedIn,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogginIn value)? logginIn,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LoginStatus {
  const factory Error(Object error) = _$Error;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
