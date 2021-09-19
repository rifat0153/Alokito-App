import 'gift_request/gift_request.dart';
import 'my_enums.dart';
import 'user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'gift_ask/gift_ask.dart';

//* Testing Freezed for request status


// *Test 



int giftAskStatusToJson(GiftAskStatus giftAskStatus) {
  switch (giftAskStatus) {
    case GiftAskStatus.requestPending:
      return 0;
    case GiftAskStatus.requestConfirmed:
      return 1;
    case GiftAskStatus.requestCanceledByGiver:
      return 2;
    case GiftAskStatus.requestCanceledByRequester:
      return 3;
    case GiftAskStatus.requestAccepted:
      return 4;
    case GiftAskStatus.requestDelivered:
      return 5;
    default:
      return -1;
  }
}

GiftAskStatus giftAskStatusFromJson(int json) {
  switch (json) {
    case 0:
      return GiftAskStatus.requestPending;
    case 1:
      return GiftAskStatus.requestConfirmed;
    case 2:
      return GiftAskStatus.requestCanceledByGiver;
    case 3:
      return GiftAskStatus.requestCanceledByRequester;
    case 4:
      return GiftAskStatus.requestAccepted;
    case 5:
      return GiftAskStatus.requestDelivered;
    default:
      return GiftAskStatus.requestPending;
  }
}

// int giftRequestStatusToJson(GiftRequestStatus giftRequestStatus) {
//   switch (giftRequestStatus) {
//     case GiftRequestStatus.requestPending:
//       return 0;
//     case GiftRequestStatus.requestConfirmed:
//       return 1;
//     case GiftRequestStatus.requestCanceledByGiver:
//       return 2;
//     case GiftRequestStatus.requestCanceledByRequester:
//       return 3;
//     case GiftRequestStatus.requestAccepted:
//       return 4;
//     case GiftRequestStatus.requestDelivered:
//       return 5;
//     default:
//       return -1;
//   }
// }

// GiftRequestStatus giftRequestStatusFromJson(int json) {
//   switch (json) {
//     case 0:
//       return GiftRequestStatus.requestPending;
//     case 1:
//       return GiftRequestStatus.requestConfirmed;
//     case 2:
//       return GiftRequestStatus.requestCanceledByGiver;
//     case 3:
//       return GiftRequestStatus.requestCanceledByRequester;
//     case 4:
//       return GiftRequestStatus.requestAccepted;
//     case 5:
//       return GiftRequestStatus.requestDelivered;
//     default:
//       return GiftRequestStatus.requestPending;
//   }
// }

int notificationTypeToJson(NotificationType notificationType) {
  switch (notificationType) {
    case NotificationType.giftGiver:
      return 0;
    case NotificationType.giftAsk:
      return 1;
    case NotificationType.text:
      return 2;
    default:
      return -1;
  }
}

NotificationType notificationTypeFromJson(int json) {
  switch (json) {
    case 0:
      return NotificationType.giftGiver;
    case 1:
      return NotificationType.giftAsk;
    case 2:
      return NotificationType.text;
    default:
      return NotificationType.error;
  }
}

int giftTypeToJson(GiftType giftType) {
  switch (giftType) {
    case GiftType.anyRetailItem:
      return 0;
    case GiftType.packageFor3Days:
      return 1;
    case GiftType.packageFor7Days:
      return 2;
    case GiftType.customizedPackage:
      return 3;
  }
}

GiftType giftTypeFromJson(int json) {
  switch (json) {
    case 0:
      return GiftType.anyRetailItem;
    case 1:
      return GiftType.packageFor3Days;
    case 2:
      return GiftType.packageFor7Days;
    case 3:
      return GiftType.customizedPackage;
    default:
      return GiftType.anyRetailItem;
  }
}

int giftAskTypeToJson(GiftAskType giftAskType) {
  switch (giftAskType) {
    case GiftAskType.food:
      return 0;
    case GiftAskType.medicine:
      return 1;
    case GiftAskType.others:
      return 2;
    case GiftAskType.error:
      return 3;
  }
}

GiftAskType giftAskTypeFromJson(int json) {
  switch (json) {
    case 0:
      return GiftAskType.food;
    case 1:
      return GiftAskType.medicine;
    case 2:
      return GiftAskType.others;
    default:
      return GiftAskType.error;
  }
}
