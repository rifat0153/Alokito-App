import 'dart:io';

import 'package:alokito_new/modules/notification/data/dto/notification_dto.dart';
import 'package:alokito_new/models/response/my_response.dart';
import 'package:alokito_new/modules/notification/domain/repository/notification_repository.dart';
import 'package:get/get.dart';

class NotificationRepositoryImpl extends GetConnect implements NotificationRepository {
  @override
  Future<MyResponse<NotificationDto>> getNotification(int page, String userId) async {
    try {
      final response = await get("$baseUrl/notification",
          query: Map.from({'page': page, 'userId': userId}),
          decoder: (data) => NotificationDto.fromJson(data as Map<String, dynamic>));

      return MyResponse.data(response.body!);

    } on IOException catch (_) {
      return const MyResponse.error('Server could not be reached');
    } catch (e) {
      return const MyResponse.error('Something went wrong');
    }
  }
}
