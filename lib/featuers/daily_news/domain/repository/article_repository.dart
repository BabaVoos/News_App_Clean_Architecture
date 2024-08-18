import 'package:news_app_clean_architecture/core/resources/data_state.dart';
import 'package:news_app_clean_architecture/featuers/daily_news/domain/entities/article.dart';


/// The Domain Layer contains only the interfaces and no implementation.
/// The Implementation is done in the Data Layer.
abstract class ArticleRepository {
  
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
  
}