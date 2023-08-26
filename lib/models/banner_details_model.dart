// To parse this JSON data, do
//
//     final bannerDetailsModel = bannerDetailsModelFromJson(jsonString);

import 'dart:convert';

BannerDetailsModel bannerDetailsModelFromJson(String str) => BannerDetailsModel.fromJson(json.decode(str));

String bannerDetailsModelToJson(BannerDetailsModel data) => json.encode(data.toJson());

class BannerDetailsModel {
    bool status;
    int statusCode;
    String message;
    List<DatumList> data;

    BannerDetailsModel({
        required this.status,
        required this.statusCode,
        required this.message,
        required this.data,
    });

    factory BannerDetailsModel.fromJson(Map<String, dynamic> json) => BannerDetailsModel(
        status: json["status"],
        statusCode: json["status_code"],
        message: json["message"],
        data: List<DatumList>.from(json["data"].map((x) => DatumList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "status_code": statusCode,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DatumList {
    String cardName;
    int cardType;
    String aspectRatio;
    List<ContentList> contentList;

    DatumList({
        required this.cardName,
        required this.cardType,
        required this.aspectRatio,
        required this.contentList,
    });

    factory DatumList.fromJson(Map<String, dynamic> json) => DatumList(
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
    bool? isResume;
    String? duration;
    String? watchedDuration;

    ContentList({
        required this.imageUrl,
        required this.name,
        required this.contentId,
        required this.aspectRatio,
        required this.isAvod,
        required this.isTvod,
        required this.isSvod,
        this.isResume,
        this.duration,
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
        isResume: json["is_resume"],
        duration: json["duration"],
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
        "is_resume": isResume,
        "duration": duration,
        "watched_duration": watchedDuration,
    };
}
