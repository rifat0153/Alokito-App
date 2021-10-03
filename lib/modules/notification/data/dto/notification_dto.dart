import 'dart:convert';

NotificationDto giftDtoFromJson(String str) => NotificationDto.fromJson(json.decode(str) as Map<String, dynamic >);

String giftDtoToJson(NotificationDto data) => json.encode(data.toJson());

class NotificationDto {
    NotificationDto({
         required this.id,
         required this.relatedDocId,
         required this.text,
         required this.user,
         required this.notificationType,
         required this.createdAt,
         required this.updatedAt,
         required this.modelToPopulate,
         required this.giftDtoId,
    });

    String id;
    RelatedDocId relatedDocId;
    String text;
    String user;
    String notificationType;
    DateTime createdAt;
    DateTime updatedAt;
    String modelToPopulate;
    String giftDtoId;

    factory NotificationDto.fromJson(Map<String, dynamic> json) => NotificationDto(
        id: json["_id"]  as String,
        relatedDocId: RelatedDocId.fromJson(json["relatedDocId"] as Map<String, dynamic>) ,
        text: json["text"] as String,
        user: json["user"] as String,
        notificationType: json["notificationType"] as String,
        createdAt: DateTime.parse(json["createdAt"] as String) ,
        updatedAt: DateTime.parse(json["updatedAt"] as String) ,
        modelToPopulate: json["modelToPopulate"] as String,
        giftDtoId: json["id"] as String,
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "relatedDocId": relatedDocId.toJson(),
        "text": text,
        "user": user,
        "notificationType": notificationType,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "modelToPopulate": modelToPopulate,
        "id": giftDtoId,
    };
}

class RelatedDocId {
    RelatedDocId({
        required this.imageUrl,
        required this.id,
    });

    String imageUrl;
    String id;

    factory RelatedDocId.fromJson(Map<String, dynamic> json) => RelatedDocId(
        imageUrl: json["imageUrl"] as String,
        id: json["id"] as String,
    );

    Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "id": id,
    };
}
