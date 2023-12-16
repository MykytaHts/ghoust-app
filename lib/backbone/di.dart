import 'package:deepstatebllog/assembly/entity/article.dart';
import 'package:deepstatebllog/assembly/factory.dart';
import 'package:deepstatebllog/assembly/model/article_factory.dart';
import 'package:deepstatebllog/data/entity/article_dto.dart';
import 'package:deepstatebllog/data/gateway/firebase_gateway.dart';
import 'package:deepstatebllog/data/gateway/ghost_gateway.dart';
import 'package:deepstatebllog/data/service/firebase_auth_service.dart';
import 'package:deepstatebllog/data/service/ghost_service.dart';
import 'package:deepstatebllog/domain/entity/article.dart';
import 'package:deepstatebllog/domain/service/auth_service.dart';
import 'package:deepstatebllog/domain/service/ghost_service.dart';
import 'package:deepstatebllog/domain/usecase/fetch_articles_usecase.dart';
import 'package:deepstatebllog/domain/usecase/get_current_user_stream_usecase.dart';
import 'package:deepstatebllog/domain/usecase/sign_in_with_email_usecase.dart';
import 'package:deepstatebllog/domain/usecase/sign_up_with_email_usecase.dart';
import 'package:deepstatebllog/domain/usecase/sign_out_usecase.dart';
import 'package:deepstatebllog/presentation/blocs/article/bloc/article_bloc.dart';
import 'package:deepstatebllog/presentation/blocs/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;
Future<void> init() async {
  _registerGateways();
  _registerServices();
  _registerFactories();
  _registerUseCases();
  _registerBlocs();
}

void _registerServices() {
  sl
    ..registerLazySingleton<GhostService>(
        () => RemoteGhostRepository(sl.get(), sl.get(), sl.get()))
    ..registerLazySingleton<AuthService>(() => FirebaseAuthService(sl.get()));
}

void _registerGateways() {
  sl.registerLazySingleton<GhostGateway>(GhostGateway.new);
  sl.registerLazySingleton<FirebaseGateway>(FirebaseGateway.new);
}

void _registerFactories() {
  sl
    ..registerLazySingleton<Factory<Article, ArticleDto>>(
      ArticleFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<ArticleDto, Map<String, dynamic>>>(
      ArticleDtoFromJsonFactory.new,
    );
}

void _registerUseCases() {
  sl
    ..registerLazySingleton<FetchArticlesUseCase>(
        () => RemoteFetchArticlesUseCase(sl.get()))
    ..registerLazySingleton<SignInWithEmailUseCase>(
        () => RemoteSignInWithEmailUseCase(sl.get()))
    ..registerLazySingleton<SignUpWithEmailUseCase>(
        () => RemoteSignUpWithEmailUseCase(sl.get()))
    ..registerLazySingleton<SignOutUseCase>(
        () => RemoteSignOutUseCase(sl.get()))
    ..registerLazySingleton<GetCurrentUserStreamUseCase>(
        () => RemoteGetCurrentUserStreamUseCase(sl.get()));
}

void _registerBlocs() {
  sl
    ..registerLazySingleton<ArticleBloc>(
      () => ArticleBloc(
        sl.get(),
      ),
    )
    ..registerLazySingleton<AuthBloc>(
      () => AuthBloc(sl.get(), sl.get(), sl.get(), sl.get()),
    );
}
