import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/article.dart';
import '../bloc/article/remote/remote_article_bloc.dart';
import '../bloc/article/remote/remote_article_state.dart';
import 'article_tile.dart';

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
                onArticlePressed: (article) =>
                    _onArticlePressed(context, article),
                onRemove: (article) => _onArticlePressed(context, state.articles![index]),
              );
            },
            itemCount: state.articles!.length,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  void _onArticlePressed(BuildContext context, ArticleEntity article) {
    Navigator.pushNamed(context, '/ArticleDetails', arguments: article);
  }
}
