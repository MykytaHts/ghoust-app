import 'package:auto_route/auto_route.dart';
import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(article.title),
        ),
        body: SingleChildScrollView(
          child: Html(
            style: {
              'img': Style(
                  width: Width(MediaQuery.of(context).size.width),
                  alignment: Alignment.center,
                  height: Height(MediaQuery.of(context).size.height * 0.3))
            },
            data: article.articleContent,
          ),
        ),
      ),
    );
  }
}
