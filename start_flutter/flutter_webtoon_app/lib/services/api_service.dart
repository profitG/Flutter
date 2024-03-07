import 'dart:convert';

import 'package:flutter_webtoon_app/models/webtoon_detail_model.dart';
import 'package:flutter_webtoon_app/models/webtoon_episode_model.dart';
import 'package:flutter_webtoon_app/models/webtoon_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];

    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    //statusCode == 200 은 성공했다는 뜻
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }

//하나의 detail을 가져옴 그래서 그냥 named constructor로 보냄
  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromjson(webtoon);
    }
    throw Error();
  }

//여러개의 episode들을 가져옴 그래서 List를 사용함
  static Future<List<WebtoonEpisodeModel>> getLatestEpisodes(String id) async {
    List<WebtoonEpisodeModel> episodesInstance = [];

    final url = Uri.parse("$baseUrl/$id/episodes");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> episodes = jsonDecode(response.body);

      for (var episode in episodes) {
        episodesInstance.add(WebtoonEpisodeModel.fromjson(episode));
      }
      return episodesInstance;
    }
    throw Error();
  }
}
