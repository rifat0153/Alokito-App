import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_receiver.freezed.dart';
part 'gift_receiver.g.dart';

@freezed
class GiftReceiver with _$GiftReceiver {
  GiftReceiver._();

  factory GiftReceiver({
    String? id,
    String? giverId,
    required String comment,
    @Default(GiftRequestStatus.requestDelivered)
    @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
        GiftRequestStatus giftRequestStatus,
    @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson) required GiftGiver giftGiver,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson) required LocalUser requester,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp createdAt,
  }) = _GiftReceiver;

  factory GiftReceiver.fromJson(Map<String, dynamic> json) => _$GiftReceiverFromJson(json);
}
