import 'dart:convert';

import 'package:deepstatebllog/backbone/urls.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

class GhostGateway {
  final contentKey = dotenv.env['contentKey'] ?? '';
  final adminKey = dotenv.env['adminKey'] ?? '';
  Future<List<dynamic>> fetchPosts(int page) async {
    final res = await get(
      Uri.parse(
        '$baseUrl/content/posts?key=$contentKey&page=$page',
      ),
    );
    final List<dynamic> temp = jsonDecode(res.body)['posts'];

    return temp;
  }

  Future<dynamic> fetchDetailedArticle(String postId) async {
    final res =
        await get(Uri.parse('$baseUrl/content/posts/$postId?key=$contentKey'));
    return res;
  }
}
