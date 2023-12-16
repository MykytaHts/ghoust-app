import 'package:deepstatebllog/assembly/factory.dart';
import 'package:deepstatebllog/data/entity/article_dto.dart';
import 'package:deepstatebllog/domain/entity/article.dart';

class ArticleFromDtoFactory implements Factory<Article, ArticleDto> {
  @override
  Article create(ArticleDto param) => Article(
        id: param.id,
        articleContent: param.articleContent,
        authorId: param.authorId,
        title: param.title,
        publishedAt: param.publishedAt,
        articleImage: param.articleImage,
        excerpt: param.excerpt,
        readingTime: param.readingTime,
      );
}
