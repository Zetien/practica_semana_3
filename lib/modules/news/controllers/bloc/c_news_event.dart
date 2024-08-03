import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object> get props => [];
}

class FetchNewsByCategory extends NewsEvent {
  final int categoriaId;

  const FetchNewsByCategory(this.categoriaId);

  @override
  List<Object> get props => [categoriaId];
}