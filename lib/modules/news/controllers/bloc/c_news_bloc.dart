import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_z/modules/news/controllers/bloc/c_news_event.dart';
import 'package:news_z/modules/news/controllers/bloc/c_news_state.dart';
import 'package:news_z/modules/news/data/repositories/r_news.dart';


class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository newsRepository;

  NewsBloc(this.newsRepository) : super(NewsLoading()) {
    on<FetchNewsByCategory>(_onFetchNewsByCategory);
  }

  void _onFetchNewsByCategory(FetchNewsByCategory event, Emitter<NewsState> emit) async {
    emit(NewsLoading());
    try {
      final noticias = await newsRepository.getNoticiasByCategoria(event.categoriaId);
      emit(NewsLoaded(noticias));
    } catch (e) {
      emit(NewsError(e.toString()));
    }
  }
}