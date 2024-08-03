import 'package:flutter/material.dart';
import 'package:news_z/modules/news/data/models/m_categorie.dart';

class CategorySelector extends StatelessWidget {
  final List<Categorie> categories;
  final Function(int) onCategorySelected;

  const CategorySelector({super.key, required this.categories, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: categories.map((categoria) {
        return GestureDetector(
          onTap: () => onCategorySelected(categoria.id),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(categoria.nombre),
          ),
        );
      }).toList(),
    );
  }
}