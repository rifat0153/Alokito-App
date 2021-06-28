import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_request.freezed.dart';
part 'gift_request.g.dart';

@freezed
class GiftReqeust with _$GiftReqeust {
  GiftReqeust._();
  const factory GiftReqeust({
    String? id,
    String? giverId,
    @Default(GiftRequestStatus.requestDelivered) GiftRequestStatus giftRequestStatus,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson)
        required LocalUser requester,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp createdAt,
  }) = _GiftReqeust;

  factory GiftReqeust.fromJson(Map<String, dynamic> json) => _$GiftReqeustFromJson(json);
}
