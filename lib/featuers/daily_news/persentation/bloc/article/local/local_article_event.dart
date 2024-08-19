import 'package:equatable/equatable.dart';
import '../../../../domain/entities/article.dart';

abstract class LocalArticleEvent extends Equatable {
  final ArticleEntity? article;

  const LocalArticleEvent({this.article});

  @override
  List<Object> get props => [article!];
}

class GetSavedArticles extends LocalArticleEvent {
  const GetSavedArticles() : super();
}

class SaveArticle extends LocalArticleEvent {
  const SaveArticle({required ArticleEntity article}) : super(article: article);
}

class RemoveArticle extends LocalArticleEvent {
  const RemoveArticle({required ArticleEntity article})
      : super(article: article);
}
