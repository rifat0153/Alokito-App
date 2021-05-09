import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_user.freezed.dart';
part 'local_user.g.dart';

@freezed
abstract class LocalUser with _$LocalUser {
  const factory LocalUser({
    String? id,
    String? firstName,
    String? lastName,
    required String userName,
    required String email,
    String? imageUrl,
    @Default('user') String role,
  }) = _LocalUser;

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);
}

@freezed
class LocalUserInfo with _$LocalUserInfo {
  const factory LocalUserInfo.data(LocalUser localUser) = Data;
  const factory LocalUserInfo.loading() = Loading;
  const factory LocalUserInfo.error(Object e, StackTrace s) = Error;
}
