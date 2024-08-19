import 'package:equatable/equatable.dart';

class GetArticleResponseEntity extends Equatable {
  final List<ArticleEntity>? articles;
  const GetArticleResponseEntity({this.articles});

  @override
  List<Object?> get props => [articles];
}

class ArticleEntity extends Equatable {
  final int? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  /// Normally, in Dart, two instances of a class are only considered equal if they refer to the exact same instance in memory.
  /// this is particularly useful when you want to compare instances of the ArticleEntity class by
  /// value rather than by reference, for example, to check if two articles are the same
  /// based on their content rather than their memory location.
  /// When two ArticleEntity objects are compared using ==, these properties will
  /// be compared to determine if the two objects are considered equal.
  @override
  List<Object?> get props => [
        id,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];
}
