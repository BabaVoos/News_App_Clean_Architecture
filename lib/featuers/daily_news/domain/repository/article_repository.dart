import '../../../../core/resources/data_state.dart';
import '../entities/article.dart';


/// The Domain Layer contains only the interfaces and no implementation.
/// The Implementation is done in the Data Layer.
abstract class ArticleRepository {
  
  Future<DataState<GetArticleResponseEntity>> getNewsArticles();

  Future<List<ArticleEntity>> getSavedArticles();

  Future<void> saveArticle(ArticleEntity article);
  
  Future<void> removeArticle(ArticleEntity article);
}