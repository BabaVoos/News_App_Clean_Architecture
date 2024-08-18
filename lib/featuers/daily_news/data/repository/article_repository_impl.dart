import 'package:news_app_clean_architecture/featuers/daily_news/data/models/article.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
