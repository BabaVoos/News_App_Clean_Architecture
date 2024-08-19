import '../../../../core/resources/data_state.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repository/article_repository.dart';

class GetArticleUsecase
    implements Usecase<DataState<GetArticleResponseEntity>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUsecase(this._articleRepository);

  @override
  Future<DataState<GetArticleResponseEntity>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
