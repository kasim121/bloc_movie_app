import 'dart:convert';
import 'dart:developer';

import 'package:bloc_api_app/models/banner_details_model.dart';

import 'package:http/http.dart' as http;

import '../models/banner_model.dart';

class AccRepo {
  String error = '';

 BannerModel? bannerModel;
  BannerDetailsModel? bannerDetailsModel;
 static Future<List<Datum>> fetchBanerList() async {
    try {
      final response = await http.get(Uri.parse('https://mocki.io/v1/783f8c69-af91-45ff-87df-e675c3f11fef'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final bannerModel = BannerModel.fromJson(jsonResponse);
        return bannerModel.data;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }
 static Future<List<DatumList>> fetchBannerContentList() async {
    try {
      final response = await http.get(Uri.parse('https://mocki.io/v1/783f8c69-af91-45ff-87df-e675c3f11fef'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final bannerDetailsModel = BannerDetailsModel.fromJson(jsonResponse);
        return bannerDetailsModel.data;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }


}
