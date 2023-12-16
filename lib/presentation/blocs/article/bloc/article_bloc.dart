import 'package:bloc/bloc.dart';
import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:deepstatebllog/domain/usecase/fetch_articles_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_event.dart';
part 'article_state.dart';
part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc(this._fetchArticlesUseCase) : super(const _Initial()) {
    on<ArticleEvent>((event, emit) async {
      await event.when(
        fetchArticles: (page) async {
          await _fetchArticles(emit, page);
        },
      );
    });
  }

  Future<void> _fetchArticles(Emitter<ArticleState> emit, int page) async {
    final currentState = state;
    if (currentState is _Loading) return;
    List<Article> loadedArticles = [];
    if (currentState is _Loaded) {
      loadedArticles = currentState.articles;
    }
    emit(_Loading(loadedArticles));
    await _fetchArticlesUseCase.call(page).then((newArticles) {
      page++;
      List<Article> articles = [...(state as _Loading).oldArticles];
      articles.addAll(newArticles);
      if (isClosed) return;
      emit(_Loaded(articles));
    });
  }

  final FetchArticlesUseCase _fetchArticlesUseCase;
}
