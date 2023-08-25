import 'dart:convert';

import 'package:http/http.dart';

import '../models/banner_model.dart';

class UserRepository {
  String userUrl = 'https://mocki.io/v1/783f8c69-af91-45ff-87df-e675c3f11fef';

  Future<List<BannerModel>> getUsers() async {
    Response response = await get(Uri.parse(userUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => BannerModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}