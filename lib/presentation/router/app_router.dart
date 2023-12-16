import 'package:auto_route/auto_route.dart';
import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:deepstatebllog/presentation/page/article_details/article_details_page.dart';
import 'package:deepstatebllog/presentation/page/auth/auth_page.dart';
import 'package:deepstatebllog/presentation/page/home/home_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: ArticleDetailsRoute.page),
        AutoRoute(page: AuthRoute.page)
      ];
}
