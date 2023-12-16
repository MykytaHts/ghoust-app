import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:deepstatebllog/domain/service/ghost_service.dart';

abstract class FetchArticlesUseCase {
  FetchArticlesUseCase();

  Future<List<Article>> call(int page);
}

class RemoteFetchArticlesUseCase implements FetchArticlesUseCase {
  RemoteFetchArticlesUseCase(this._service);
  final GhostService _service;

  @override
  Future<List<Article>> call(int page) async {
    return _service.fetchArticles(page);
  }
}
