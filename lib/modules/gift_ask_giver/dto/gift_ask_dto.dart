import 'dart:convert';

import '../../../models/gift_ask/gift_ask.dart';


class GiftAskDto {
  GiftAskDto({required this.total, required this.page, required this.lastPage, required this.results});

  int total;
  int page;
  int lastPage;
  List<GiftAsk> results;

  factory GiftAskDto.fromRawJson(String str) => GiftAskDto.fromJson(json.decode(str) as Map<String, dynamic>);

  factory GiftAskDto.fromJson(Map<String, dynamic> json) => GiftAskDto(
        total: json["total"] as int,
        page: json["page"] as int,
        lastPage: json["last_page"] as int,
        results: giftAskDtoToGiftList(json["results"] as List<dynamic>),
      );
}

List<GiftAsk> giftAskDtoToGiftList(List<dynamic> results) {
  final List<GiftAsk> giftList = [];

  if (results.isEmpty) {
    return giftList;
  } else {
    for (final giftDto in results) {
      if (giftDto != null) {
        giftList.add(GiftAsk.fromJson(giftDto as Map<String, dynamic>));
      }
    }
  }

  return giftList;
}
