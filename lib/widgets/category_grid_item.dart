import 'package:flutter/material.dart';
import 'package:section_8_app_multi_screen/models/category.dart';

class CategoriesGridItem extends StatelessWidget {
  const CategoriesGridItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(0.9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(category.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.onBackground,
      ),),
    );
  }
}
