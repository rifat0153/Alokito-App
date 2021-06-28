// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftReqeust _$_$_GiftReqeustFromJson(Map<String, dynamic> json) {
  return _$_GiftReqeust(
    id: json['id'] as String?,
    giverId: json['giverId'] as String?,
    giftRequestStatus: _$enumDecodeNullable(
            _$GiftRequestStatusEnumMap, json['giftRequestStatus']) ??
        GiftRequestStatus.requestDelivered,
    requester: localUserFromJson(json['requester'] as Map<String, dynamic>),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftReqeustToJson(_$_GiftReqeust instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giverId': instance.giverId,
      'giftRequestStatus':
          _$GiftRequestStatusEnumMap[instance.giftRequestStatus],
      'requester': localUserToJson(instance.requester),
      'createdAt': timestampToJson(instance.createdAt),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$GiftRequestStatusEnumMap = {
  GiftRequestStatus.requestPending: 'requestPending',
  GiftRequestStatus.requestConfirmed: 'requestConfirmed',
  GiftRequestStatus.requestCanceledByGiver: 'requestCanceledByGiver',
  GiftRequestStatus.requestCanceledByRequester: 'requestCanceledByRequester',
  GiftRequestStatus.requestComplete: 'requestComplete',
  GiftRequestStatus.requestDelivered: 'requestDelivered',
};
