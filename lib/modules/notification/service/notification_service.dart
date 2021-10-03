import 'dart:io';

import 'package:alokito_new/models/response/my_response.dart';
import 'package:alokito_new/modules/notification/service/notification_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

abstract class BaseNotificationService {
  Future<MyResponse<NotificationDto>> getNotifications({
    required String userId,
    required int page,
    int limit = 10,
  });
}

class NotificationService extends GetConnect implements BaseNotificationService {
  NotificationService();

  @override
  Future<MyResponse<NotificationDto>> getNotifications({
    required String userId,
    required int page,
    int limit = 10,
  }) async {
    try {
      final response = await get('$baseUrl/notification',
          query: {'user': userId, 'page': page},
          decoder: (data) => NotificationDto.fromJson(data as Map<String, dynamic>));

      return MyResponse<NotificationDto>.data(response.body!);
    } on HttpException catch (e) {
      return MyResponse.error(e.message);
    } on IOException catch (_) {
      return const MyResponse<NotificationDto>.error(
          'Could not reach server. Please check your internet connection');
    } catch (e) {
      return const MyResponse<NotificationDto>.error('An unexpected error occurred');
    }
  }
}
