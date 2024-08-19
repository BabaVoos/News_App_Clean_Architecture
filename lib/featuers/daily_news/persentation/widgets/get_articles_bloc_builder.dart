import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture/featuers/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_architecture/featuers/daily_news/persentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:news_app_clean_architecture/featuers/daily_news/persentation/bloc/article/remote/remote_article_state.dart';
import 'package:news_app_clean_architecture/featuers/daily_news/persentation/widgets/article_tile.dart';

class GetArticlesBlocBuilder extends StatelessWidget {
  const GetArticlesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteArticleBloc, RemoteArticleState>(
      builder: (_, state) {
        if (state is RemoteArticlesLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is RemoteArticlesError) {
          return const Center(
            child: Icon(Icons.refresh),
          );
        }

        if (state is RemoteArticlesDone) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ArticleWidget(
                article: state.articles![index],
                isRemovable: true,
                onArticlePressed: (ArticleEntity articleEntity) {},
                onRemove: (ArticleEntity articleEntity) {},
              );
            },
            itemCount: state.articles!.length,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
