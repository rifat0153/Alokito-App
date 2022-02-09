import 'dart:convert';

import 'package:alokito_new/models/gift/gift.dart';

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
  final List<Gift> giftList = [];

  if (results.isEmpty) {
    print('New Gift List is empty');
    return giftList;
  } else {
    for (final giftDto in results) {
      if (giftDto != null) {
        giftList.add(Gift.fromJson(giftDto as Map<String, dynamic>));
      }
    }
  }

  return giftList;
}
