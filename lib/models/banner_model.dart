import 'dart:convert';

BannerModel BannerModelFromJson(String str) => BannerModel.fromJson(json.decode(str));

String BannerModelToJson(BannerModel data) => json.encode(data.toJson());

class BannerModel {
    bool status;
    int statusCode;
    String message;
    List<Datum> data;

    BannerModel({
        required this.status,
        required this.statusCode,
        required this.message,
        required this.data,
    });

    factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        status: json["status"],
        statusCode: json["status_code"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "status_code": statusCode,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String cardName;
    int cardType;
    String aspectRatio;
    List<ContentList> contentList;

    Datum({
        required this.cardName,
        required this.cardType,
        required this.aspectRatio,
        required this.contentList,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        cardName: json["card_name"],
        cardType: json["card_type"],
        aspectRatio: json["aspect_ratio"],
        contentList: List<ContentList>.from(json["content_list"].map((x) => ContentList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "card_name": cardName,
        "card_type": cardType,
        "aspect_ratio": aspectRatio,
        "content_list": List<dynamic>.from(contentList.map((x) => x.toJson())),
    };
}

class ContentList {
    String imageUrl;
    String name;
    String contentId;
    String aspectRatio;
    bool isAvod;
    bool isTvod;
    bool isSvod;
    String? duration;
    bool? isResume;
    String? watchedDuration;

    ContentList({
        required this.imageUrl,
        required this.name,
        required this.contentId,
        required this.aspectRatio,
        required this.isAvod,
        required this.isTvod,
        required this.isSvod,
        this.duration,
        this.isResume,
        this.watchedDuration,
    });

    factory ContentList.fromJson(Map<String, dynamic> json) => ContentList(
        imageUrl: json["image_url"],
        name: json["name"],
        contentId: json["content_id"],
        aspectRatio: json["aspect_ratio"],
        isAvod: json["is_avod"],
        isTvod: json["is_tvod"],
        isSvod: json["is_svod"],
        duration: json["duration"],
        isResume: json["is_resume"],
        watchedDuration: json["watched_duration"],
    );

    Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "name": name,
        "content_id": contentId,
        "aspect_ratio": aspectRatio,
        "is_avod": isAvod,
        "is_tvod": isTvod,
        "is_svod": isSvod,
        "duration": duration,
        "is_resume": isResume,
        "watched_duration": watchedDuration,
    };
}
