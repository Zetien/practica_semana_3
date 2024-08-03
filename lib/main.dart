import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_z/modules/news/controllers/bloc/c_news_bloc.dart';
import 'package:news_z/modules/news/data/repositories/r_news.dart';
import 'package:news_z/modules/news/ui/pages/p_home_news.dart';
import 'package:provider/provider.dart';
import 'modules/news/ui/pages/p_detail_news.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<NewsRepository>(create: (_) => NewsRepository()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Noticias',
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
          create: (context) => NewsBloc(context.read<NewsRepository>()),
          child: HomeScreen(),
        ),
        '/detalle': (context) => const DetailScreen(),
      },
    );
  }
}
