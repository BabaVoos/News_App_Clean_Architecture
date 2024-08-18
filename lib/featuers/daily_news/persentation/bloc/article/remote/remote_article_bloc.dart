import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture/core/resources/data_state.dart';
import 'package:news_app_clean_architecture/featuers/daily_news/domain/usecases/get_article.dart';

import 'remote_article_event.dart';
import 'remote_article_state.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArticleUsecase _getArticleUsecase;

  RemoteArticleBloc(this._getArticleUsecase)
      : super(const RemoteArticlesLoading()) {
    on<GetArticles>(onGetArticles);
  }
  void onGetArticles(
      GetArticles event, Emitter<RemoteArticleState> emit) async {
    final dateState = await _getArticleUsecase();
    if (dateState is DataSuccess && dateState.data!.isNotEmpty) {
      emit(RemoteArticlesDone(dateState.data!));
    }
    if (dateState is DataError) {
      emit(RemoteArticlesError(dateState.error!));
    }
  }
}
