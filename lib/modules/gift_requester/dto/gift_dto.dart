import 'dart:convert';

import '../../../models/gift_giver/gift.dart';

class GiftDto {
  GiftDto({required this.total, required this.page, required this.lastPage, required this.results});

  int total;
  int page;
  int lastPage;
  List<Gift> results;

  factory GiftDto.fromRawJson(String str) => GiftDto.fromJson(json.decode(str) as Map<String, dynamic>);

  factory GiftDto.fromJson(Map<String, dynamic> json) => GiftDto(
        total: json["total"] as int,
        page: json["page"] as int,
        lastPage: json["last_page"] as int,
        results: giftDtoToGiftList(json["results"] as List<dynamic>),
      );
}

List<Gift> giftDtoToGiftList(List<dynamic> results) {
  return results
      .map(
        (giftDto) => Gift.fromJson(giftDto as Map<String, dynamic>),
      )
      .toList();
}
