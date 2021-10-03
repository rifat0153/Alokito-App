import 'package:alokito_new/models/response/my_response.dart';
import 'package:alokito_new/modules/notification/data/dto/notification_dto.dart';

abstract class NotificationRepository {


  Future<MyResponse<NotificationDto>> getNotification(int page, String userId);
}
