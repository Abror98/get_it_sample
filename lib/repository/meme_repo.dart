
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it_sample/domain/models.dart';
import 'package:http/http.dart' as http;

class MemeRepo{
  static const TIME = 10;

  Future<Meme> getMeme() async {
    http.Response response = await http.get("https://some-random-api.ml/meme").timeout(Duration(seconds: TIME));
    Map<String, dynamic> singleMemeJson = jsonDecode(response.body);
    return Meme.fromJson(singleMemeJson);
  }

  // Future<Meme> getMeme() async{
  //   var dio = Dio();
  //   Response response = await dio.get("https://some-random-api.ml/meme").timeout(Duration(seconds: TIME));
  //   Meme meme = memeFromJson(response.data);
  //   return meme;
  // }
}