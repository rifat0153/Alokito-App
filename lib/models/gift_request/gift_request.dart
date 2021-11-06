import 'package:alokito_new/models/gift/gift.dart';

import '../user/local_user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_request.freezed.dart';
part 'gift_request.g.dart';

@freezed
class GiftRequest with _$GiftRequest {
  factory GiftRequest({
    String? id,
    String? giverId,
    required String comment,
    @Default(false) bool messageForRequesterSent,
    @Default(false) bool messageForGiverSent,
    @Default('') String messageForRequester,
    @Default('') String messageForGiver,
    @Default(GiftRequestStatus.pending())
    @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
        GiftRequestStatus giftRequestStatus,
    @JsonKey(fromJson: giftFromMap, toJson: giftToMap) required Gift gift,
    @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap) required LocalUser requester,
    required DateTime createdAt,
  }) = _GiftRequest;

  factory GiftRequest.fromJson(Map<String, dynamic> json) => _$GiftRequestFromJson(json);
}

@freezed
abstract class GiftRequestStatus with _$GiftRequestStatus {
  const factory GiftRequestStatus.pending() = Pending;
  const factory GiftRequestStatus.confirmed() = Confirmed;
  const factory GiftRequestStatus.canceledByGiver() = CanceledByGiver;
  const factory GiftRequestStatus.canceledByRequester() = CanceledByRequester;
  const factory GiftRequestStatus.accepted() = Accepted;
  const factory GiftRequestStatus.delivered() = Delivered;

  factory GiftRequestStatus.fromJson(Map<String, dynamic> json) => _$GiftRequestStatusFromJson(json);
}

String giftRequestStatusToJson(GiftRequestStatus giftRequestStatus) {
  if (giftRequestStatus == const GiftRequestStatus.pending()) {
    return 'pending';
  } else if (giftRequestStatus == const GiftRequestStatus.confirmed()) {
    return 'confirmed';
  } else if (giftRequestStatus == const GiftRequestStatus.canceledByGiver()) {
    return 'canceledByGiver';
  } else if (giftRequestStatus == const GiftRequestStatus.canceledByRequester()) {
    return 'canceledByRequester';
  } else if (giftRequestStatus == const GiftRequestStatus.accepted()) {
    return 'accepted';
  } else if (giftRequestStatus == const GiftRequestStatus.delivered()) {
    return 'delivered';
  } else {
    return 'pending';
  }
}

GiftRequestStatus giftRequestStatusFromJson(String giftRequestStatus) {
  switch (giftRequestStatus) {
    case 'pending':
      return const GiftRequestStatus.pending();
    case 'confirmed':
      return const GiftRequestStatus.confirmed();
    case 'canceledByGiver':
      return const GiftRequestStatus.canceledByGiver();
    case 'canceledByRequester':
      return const GiftRequestStatus.canceledByRequester();
    case 'accepted':
      return const GiftRequestStatus.accepted();
    case 'delivered':
      return const GiftRequestStatus.delivered();

    default:
      return const GiftRequestStatus.pending();
  }
}

@freezed
class GiftRequestNotificationUnion with _$GiftRequestNotificationUnion {
  const factory GiftRequestNotificationUnion.dataa(GiftRequest giftRequest) = Data;
  const factory GiftRequestNotificationUnion.loading() = Loading;
  const factory GiftRequestNotificationUnion.error(Object err) = Error;
}

@freezed
class GiftRequestState with _$GiftRequestState {
  const factory GiftRequestState.data(GiftRequest giftRequest) = GiftRequestData;
  const factory GiftRequestState.loading() = GiftRequestLoading;
  const factory GiftRequestState.error(Object err) = GiftRequestError;
}

@freezed
class GiftRequestListState with _$GiftRequestListState {
  const factory GiftRequestListState.data(List<GiftRequest> giftRequestList) = DataState;
  const factory GiftRequestListState.loading() = LoadingState;
  const factory GiftRequestListState.error(Object err) = ErrorState;
}
