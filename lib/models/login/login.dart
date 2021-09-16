import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

@freezed
class LoginStatus with _$LoginStatus {
  const factory LoginStatus.logginIn() = LogginIn;
  const factory LoginStatus.loggedIn() = LoggedIn;
  const factory LoginStatus.notLoggedIn() = NotLoggedIn;
  const factory LoginStatus.error(Object error) = Error;
}

@freezed
class RegStatus with _$RegStatus {
  const factory RegStatus.registering() = Registering;
  const factory RegStatus.registered() = Registered;
  const factory RegStatus.notRegistered() = NotRegistered;
  const factory RegStatus.error(Object error) = RegError;
}


