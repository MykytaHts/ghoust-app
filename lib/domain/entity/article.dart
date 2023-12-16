class Article {
  Article({
    required this.id,
    required this.articleContent,
    required this.authorId,
    required this.title,
    required this.publishedAt,
    required this.articleImage,
    required this.excerpt,
    required this.readingTime,
  });
  final String id;
  final String authorId;
  final String title;
  final String? articleImage;
  final String publishedAt;
  final String excerpt;
  final int readingTime;
  final String articleContent;
}
