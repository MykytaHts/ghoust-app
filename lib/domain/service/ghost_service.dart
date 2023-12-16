import 'package:deepstatebllog/domain/entity/article.dart';

abstract class GhostService {
  Future<List<Article>> fetchArticles(int page);
  Future<Article> fetchArticleDetails(String articleId);
}
