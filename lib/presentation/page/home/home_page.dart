import 'package:auto_route/auto_route.dart';
import 'package:deepstatebllog/backbone/di.dart';
import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:deepstatebllog/presentation/blocs/auth/auth_bloc.dart';
import 'package:deepstatebllog/presentation/router/app_router.dart';

import 'package:deepstatebllog/presentation/widgets/article_card.dart';
import 'package:deepstatebllog/presentation/widgets/profile_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:deepstatebllog/presentation/blocs/article/bloc/article_bloc.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = sl<ArticleBloc>();
  final _authBloc = sl<AuthBloc>();
  int page = 1;
  final _controller = ScrollController();
  List<Article> articles = [];

  @override
  void dispose() {
    _controller
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_controller.hasClients) return;
    final maxScroll = _controller.position.maxScrollExtent;
    final currentScroll = _controller.position.pixels;
    if (currentScroll == maxScroll) {
      page++;
      _bloc.add(FetchArticlesEvent(page));
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    _authBloc.add(const GetCurrentUserEvent());
    _bloc.add(FetchArticlesEvent(page));
  }

  @override
  Widget build(BuildContext _) {
    return SafeArea(
      child: Scaffold(
        drawer: BlocBuilder<AuthBloc, AuthState>(
          bloc: _authBloc,
          builder: (context, state) {
            return Drawer(
              shape: Border.all(color: Colors.transparent),
              child: Column(children: [
                ProfileCard(
                  email: state.when(
                    authenticated: (user) => user.email,
                    unauthenticated: (error) => null,
                  ),
                ),
                const Spacer(),
                state.when(
                  authenticated: (user) => TextButton(
                      onPressed: () => _authBloc.add(const SignOutEvent()),
                      child: const Text('Sign out')),
                  unauthenticated: (error) => TextButton(
                      onPressed: () =>
                          context.router.navigate(const AuthRoute()),
                      child: const Text('Sign in/Sign up')),
                )
              ]),
            );
          },
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Builder(builder: (ctx) {
            return AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: const Text(
                'DeepStateUA',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              leading: GestureDetector(
                onTap: () => Scaffold.of(ctx).openDrawer(),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              actions: [
                GestureDetector(
                  // onTap: () => showDateRangePicker(
                  //         context: context,
                  //         firstDate:
                  //             DateTime.now().subtract(Duration(days: 1000)),
                  //         lastDate: DateTime(2050))
                  //     .then((value) {
                  //   if (value != null) {
                  //     articles = articles
                  //         .where((article) => (DateFormat.yMMMMd()
                  //                 .parse(article.publishedAt)
                  //                 .isBefore(value.end) &&
                  //             DateFormat.yMMMMd()
                  //                 .parse(article.publishedAt)
                  //                 .isAfter(value.start)))
                  //         .toList();
                  //   }
                  // }),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.date_range,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            );
          }),
        ),
        body: BlocBuilder<ArticleBloc, ArticleState>(
          bloc: _bloc,
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: (articles) {
                if (articles.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return _buildListView(articles);
                }
              },
              loaded: (newArticles) {
                articles.clear();
                articles.addAll(newArticles);
                return _buildListView(articles);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildListView(List<Article> articles) {
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        controller: _controller,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => context.router
                .navigate(ArticleDetailsRoute(article: articles[index])),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ArticleCard(article: articles[index]),
            ),
          );
        },
        itemCount: articles.length,
      ),
    );
  }
}
