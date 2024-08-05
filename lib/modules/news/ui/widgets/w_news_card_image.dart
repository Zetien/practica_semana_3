import 'package:flutter/material.dart';
import 'package:news_z/modules/news/data/models/m_news.dart';


class NewsCardImage extends StatelessWidget {
  const NewsCardImage({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15.0),
        topRight: Radius.circular(15.0),
        bottomLeft: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0)
      ),
      child: Image.network(
                    news.imagen!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
    );
  }
}
