// lib/widgets/news_list.dart
import 'package:flutter/material.dart';
import 'package:news_z/modules/news/data/models/m_news.dart';
import 'package:news_z/modules/news/ui/widgets/w_news_card.dart';


class NewsList extends StatelessWidget {
  final List<News> noticias;

  const NewsList({super.key, required this.noticias});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isLargeScreen = constraints.maxWidth > 600;
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isLargeScreen ? 2 : 1,
            childAspectRatio: isLargeScreen ? 1.5 : 1,
          ),
          itemCount: noticias.length,
          itemBuilder: (context, index) {
            return NewsCard(news: noticias[index]);
          },
        );
      },
    );
  }
}
