import 'package:deepstatebllog/assembly/factory.dart';
import 'package:deepstatebllog/data/entity/article_dto.dart';
import 'package:deepstatebllog/data/gateway/ghost_gateway.dart';
import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:deepstatebllog/domain/service/ghost_service.dart';

class RemoteGhostRepository implements GhostService {
  final GhostGateway _gateway;
  final Factory<ArticleDto, Map<String, dynamic>> _dtoFactory;
  final Factory<Article, ArticleDto> _factory;

  RemoteGhostRepository(this._gateway, this._dtoFactory, this._factory);
  @override
  Future<List<Article>> fetchArticles(int page) async {
    return _gateway.fetchPosts(page).then((posts) {
      final temp = posts.map((post) => _dtoFactory.create(post)).toList();
      return temp.map((tempPost) => _factory.create(tempPost)).toList();
    });
  }

  @override
  Future<Article> fetchArticleDetails(String articleId) async {
    return _gateway.fetchDetailedArticle(articleId).then((article) {
      final temp = _dtoFactory.create(article);
      return _factory.create(temp);
    });
  }
}
