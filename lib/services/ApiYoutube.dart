import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert';
import 'package:youtube_flutter_sample/models/Video.dart';

class ApiYoutube {

  final String _urlBbase = dotenv.env['YOUTUBE_API_URL'];
  final String _key = dotenv.env['YOUTUBE_API_KEY'];

  Future<List<Video>> search(String search) async {

    http.Response response = await http.get(
        _urlBbase + "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$_key"
            "&q=$search"
    );

    if(response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      List<Video> videos = Video.parseListJson(data, "items");
      return videos;
    }
    return [];
  }
}