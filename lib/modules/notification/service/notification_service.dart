import 'dart:io';

import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:get/get.dart';

import '../../../models/response/my_response.dart';
import 'notification_dto.dart';

abstract class BaseNotificationService {
  Future<MyNotificationListStatus> getNotifications({
    required String userId,
    required int page,
    int limit = 10,
  });
}

class NotificationService extends GetConnect implements BaseNotificationService {
  NotificationService();

  @override
  Future<MyNotificationListStatus> getNotifications({
    required String userId,
    required int page,
    int limit = 10,
  }) async {
    print('Notification Service called');

    try {
      final response = await get(
        '${MyConfig.baseUrl}/notification?user=$userId&page=$page',
        decoder: (data) => NotificationDto.fromJson(data as Map<String, dynamic>),
      ).timeout(const Duration(seconds: myTimeout));

      print(response.body!.results.length);

      return MyNotificationListStatus.data(response.body!.results);
    } on HttpException catch (e) {
      return MyNotificationListStatus.error(e.message);
    } on IOException catch (_) {
      return const MyNotificationListStatus.error('Could not reach server. Please check your internet connection');
    } catch (e, s) {
      print(e);
      print(s);
      return const MyNotificationListStatus.error('An unexpected error occurred');
    }
  }
}
