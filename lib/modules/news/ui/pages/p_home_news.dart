import 'package:flutter/material.dart';
import 'package:news_z/modules/news/ui/pages/p_category_screen.dart';
import 'package:news_z/modules/news/ui/widgets/w_custom_text.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Center(
              child: CustomText(
                text: 'Noticias',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                
              ),
            ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Viajes', icon: Icon(Icons.airplanemode_active),),
              Tab(text: 'Videojuegos',icon: Icon(Icons.gamepad)),
              Tab(text: 'Cine',icon: Icon(Icons.movie)),
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