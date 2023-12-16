import 'package:deepstatebllog/assembly/factory.dart';
import 'package:deepstatebllog/data/entity/article_dto.dart';

class ArticleDtoFromJsonFactory
    implements Factory<ArticleDto, Map<String, dynamic>> {
  @override
  ArticleDto create(Map<String, dynamic> param) => ArticleDto(
      articleImage: param['feature_image'] as String?,
      id: param['id'] as String,
      authorId: param['uuid'] as String,
      title: param['title'] as String,
      publishedAt: param['published_at'] as String,
      excerpt: param['excerpt'] as String,
      articleContent: param['html'] as String,
      readingTime: param["reading_time"]);
}
