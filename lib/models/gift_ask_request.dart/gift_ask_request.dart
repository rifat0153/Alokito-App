import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../gift_ask/gift_ask.dart';
import '../user/local_user.dart';

part 'gift_ask_request.freezed.dart';
part 'gift_ask_request.g.dart';

@freezed
class GiftAskRequest with _$GiftAskRequest {
  factory GiftAskRequest({
    String? id,
    String? giverId,
    required String comment,
    @Default(false) bool messageForRequesterSent,
    @Default(false) bool messageForGiverSent,
    @Default('')  String    messageForRequester,
    @Default('')  String    messageForGiver,
    @Default(GiftAskRequestStatus.pending())
    @JsonKey(fromJson: giftAskRequestStatusFromJson, toJson: giftAskRequestStatusToJson)
        GiftAskRequestStatus giftAskRequestStatus,
    @JsonKey(fromJson: giftAskFromMap, toJson: giftAskToMap) required GiftAsk giftAsk,
    @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap) required LocalUser giver,
    required DateTime createdAt,
  }) = _GiftAskRequest;

  factory GiftAskRequest.fromJson(Map<String, dynamic> json) => _$GiftAskRequestFromJson(json);
}

@freezed
abstract class GiftAskRequestStatus with _$GiftAskRequestStatus {
  const factory GiftAskRequestStatus.pending() = Pending;
  const factory GiftAskRequestStatus.confirmed() = Confirmed;
  const factory GiftAskRequestStatus.canceledByGiver() = CanceledByGiver;
  const factory GiftAskRequestStatus.canceledByRequester() = CanceledByRequester;
  const factory GiftAskRequestStatus.accepted() = Accepted;
  const factory GiftAskRequestStatus.delivered() = Delivered;

  factory GiftAskRequestStatus.fromJson(Map<String, dynamic> json) => _$GiftAskRequestStatusFromJson(json);
}

String giftAskRequestStatusToJson(GiftAskRequestStatus giftAskRequestStatus) {
  if (giftAskRequestStatus == const GiftAskRequestStatus.pending()) {
    return 'pending';
  } else if (giftAskRequestStatus == const GiftAskRequestStatus.confirmed()) {
    return 'confirmed';
  } else if (giftAskRequestStatus == const GiftAskRequestStatus.canceledByGiver()) {
    return 'canceledByGiver';
  } else if (giftAskRequestStatus == const GiftAskRequestStatus.canceledByRequester()) {
    return 'canceledByRequester';
  } else if (giftAskRequestStatus == const GiftAskRequestStatus.accepted()) {
    return 'accepted';
  } else if (giftAskRequestStatus == const GiftAskRequestStatus.delivered()) {
    return 'delivered';
  } else {
    return 'pending';
  }
}

GiftAskRequestStatus giftAskRequestStatusFromJson(String giftAskRequestStatus) {
  switch (giftAskRequestStatus) {
    case 'pending':
      return const GiftAskRequestStatus.pending();
    case 'confirmed':
      return const GiftAskRequestStatus.confirmed();
    case 'canceledByGiver':
      return const GiftAskRequestStatus.canceledByGiver();
    case 'canceledByRequester':
      return const GiftAskRequestStatus.canceledByRequester();
    case 'accepted':
      return const GiftAskRequestStatus.accepted();
    case 'delivered':
      return const GiftAskRequestStatus.delivered();

    default:
      return const GiftAskRequestStatus.pending();
  }
}

@freezed
class GiftAskRequestNotificationUnion with _$GiftAskRequestNotificationUnion {
  const factory GiftAskRequestNotificationUnion.data(GiftAskRequest giftAskRequest) = Data;
  const factory GiftAskRequestNotificationUnion.loading() = Loading;
  const factory GiftAskRequestNotificationUnion.error(Object err) = Error;
}

@freezed
class GiftAskRequestState with _$GiftAskRequestState {
  const factory GiftAskRequestState.data(GiftAskRequest giftAskRequest) = GiftAskRequestData;
  const factory GiftAskRequestState.loading() = GiftAskRequestLoading;
  const factory GiftAskRequestState.error(Object err) = GiftAskRequestError;
}

@freezed
class GiftAskRequestListState with _$GiftAskRequestListState {
  const factory GiftAskRequestListState.data(List<GiftAskRequest> giftAskRequestList) = DataState;
  const factory GiftAskRequestListState.loading() = LoadingState;
  const factory GiftAskRequestListState.error(Object err) = ErrorState;
}
