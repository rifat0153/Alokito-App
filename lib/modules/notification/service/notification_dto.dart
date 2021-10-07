// To parse this JSON data, do
//
//     final notificationDto = notificationDtoFromJson(jsonString);

import 'dart:convert';

import 'package:alokito_new/models/notification/notification.dart';

NotificationDto notificationDtoFromJson(String str) =>
    NotificationDto.fromJson(json.decode(str) as Map<String, dynamic>);

class NotificationDto {
  NotificationDto({
    required this.total,
    required this.page,
    required this.lastPage,
    required this.results,
  });

  int total;
  int page;
  int lastPage;
  List<MyNotification> results;

  factory NotificationDto.fromJson(Map<String, dynamic> json) => NotificationDto(
        total: json["total"] as int, page: json["page"] as int, lastPage: json["last_page"] as int,
        results: dtoToNotificationList(json['results'] as List<dynamic>),
        // results: [],
      );
}

List<MyNotification> dtoToNotificationList(List<dynamic> list) {
  return list.map((e) => MyNotification.fromJson(e as Map<String, dynamic>)).toList();
}
