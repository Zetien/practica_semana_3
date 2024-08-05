// lib/widgets/news_card.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_z/modules/news/data/models/m_news.dart';
import 'package:news_z/modules/news/ui/widgets/w_custom_text.dart';
import 'package:news_z/modules/news/ui/widgets/w_news_card_image.dart';
import 'package:news_z/theme/theme_colors.dart';

class NewsCard extends StatelessWidget {
  final News news;

  const NewsCard({
    super.key,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detalle', arguments: news);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          width: 350.0,
          child: Card(
            surfaceTintColor: ThemeColors.white,
            color: ThemeColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(
                color: ThemeColors.primary,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15.0,
                right: 15.0,
               
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  NewsCardImage(
                    news: news,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      text: news.titulo,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5.0,
                      //bottom: 10.0,
                    ),
                    child: CustomText(
                      text: DateFormat(
                        'MMMM d, HH:mm',
                      ).format(
                        news.fecha,
                        //color: ThemeColors.tertiary.withOpacity(0.4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
