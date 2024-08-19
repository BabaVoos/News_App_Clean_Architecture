import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'core/resources/dio_factory.dart';
import 'featuers/daily_news/data/data_sources/remote/news_api_service.dart';
import 'featuers/daily_news/data/repository/article_repository_impl.dart';
import 'featuers/daily_news/domain/repository/article_repository.dart';
import 'featuers/daily_news/domain/usecases/get_article.dart';
import 'featuers/daily_news/persentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  Dio dio = DioFactory.getDio();
  sl.registerSingleton<Dio>(dio);
  // with Singleton, it keeps a single instance of the registerd class for the rest of the
  // app lifetime and will always return you that instance when you request it.

  // Dependencies
  sl.registerSingleton<NewsApiService>(
    NewsApiService(sl()),
  );

  sl.registerSingleton<ArticleRepository>(
    ArticleRepositoryImpl(sl()),
  );

  // UseCases
  sl.registerSingleton<GetArticleUsecase>(
    GetArticleUsecase(sl()),
  );

  // With Factory Registration, when you request an instance of a class from get_it,
  // it will create a new instance every time.

  // Blocs
  sl.registerFactory<RemoteArticleBloc>(
    () => RemoteArticleBloc(sl()),
  );
}
