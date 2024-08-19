import 'package:flutter/material.dart';
import '../../featuers/daily_news/domain/entities/article.dart';
import '../../featuers/daily_news/persentation/pages/article_details/article_details.dart';
import '../../featuers/daily_news/persentation/pages/home/daily_news.dart';
import '../../featuers/daily_news/persentation/pages/saved_articles/saved_artciles.dart';



class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const DailyNews());

      case '/ArticleDetails':
        return _materialRoute(ArticleDetailsView(article: settings.arguments as ArticleEntity));

      case '/SavedArticles':
        return _materialRoute(const SavedArticles());
        
      default:
        return _materialRoute(const DailyNews());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
