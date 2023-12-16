// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ArticleDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticleDetailsPage(
          key: args.key,
          article: args.article,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };
}

/// generated route for
/// [ArticleDetailsPage]
class ArticleDetailsRoute extends PageRouteInfo<ArticleDetailsRouteArgs> {
  ArticleDetailsRoute({
    Key? key,
    required Article article,
    List<PageRouteInfo>? children,
  }) : super(
          ArticleDetailsRoute.name,
          args: ArticleDetailsRouteArgs(
            key: key,
            article: article,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleDetailsRoute';

  static const PageInfo<ArticleDetailsRouteArgs> page =
      PageInfo<ArticleDetailsRouteArgs>(name);
}

class ArticleDetailsRouteArgs {
  const ArticleDetailsRouteArgs({
    this.key,
    required this.article,
  });

  final Key? key;

  final Article article;

  @override
  String toString() {
    return 'ArticleDetailsRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
