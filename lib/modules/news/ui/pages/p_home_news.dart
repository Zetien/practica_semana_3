import 'package:flutter/material.dart';
import 'package:news_z/modules/news/ui/pages/p_category_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Noticias'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Viajes'),
              Tab(text: 'Videojuegos'),
              Tab(text: 'Cine'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CategoryNewsScreen(categoriaId: 1),
            CategoryNewsScreen(categoriaId: 2),
            CategoryNewsScreen(categoriaId: 3),
          ],
        ),
      ),
    );
  }
}