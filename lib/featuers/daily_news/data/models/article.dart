import '../../domain/entities/article.dart';

class GetArticleResponse extends GetArticleResponseEntity {
  const GetArticleResponse({
    super.articles,
  }); // Initialize the superclass here

  factory GetArticleResponse.fromJson(Map<String, dynamic> json) {
    return GetArticleResponse(
      articles: (json['articles'] as List?)
          ?.map((dynamic e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    super.id,
    super.author,
    super.title,
    super.description,
    super.url,
    super.urlToImage,
    super.publishedAt,
    super.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'] as int?,
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );
  }
}
