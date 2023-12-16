part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loading(List<Article> oldArticles) = _Loading;
  const factory ArticleState.loaded(List<Article> articles) = _Loaded;
}
