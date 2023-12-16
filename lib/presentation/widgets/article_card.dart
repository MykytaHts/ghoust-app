import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            article.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        if (article.articleImage != null)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Image.network(
              article.articleImage!,
              loadingBuilder: (context, child, loadingProgress) =>
                  (loadingProgress == null)
                      ? child
                      : const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                          ),
                        ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(DateFormat().format(DateTime.parse(article.publishedAt))),
        ),
      ]),
    );
  }
}
