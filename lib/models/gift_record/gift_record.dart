import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_record.freezed.dart';
part 'gift_record.g.dart';

@freezed
class GiftRecord with _$GiftRecord {
  const factory GiftRecord({
    String? id,
    @JsonKey(fromJson: giftReqeustFromJson, toJson: giftRequestToJson)
        required GiftReqeust giftReqeust,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
        required Timestamp createdAt,
  }) = _GiftRecord;

  factory GiftRecord.fromJson(Map<String, dynamic> json) =>
      _$GiftRecordFromJson(json);
}
