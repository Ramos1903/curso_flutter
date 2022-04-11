import 'package:flutter/material.dart';
import 'package:meals/utils/app-routes.dart';

import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category c;
  const CategoryItem({Key? key, required this.c}) : super(key: key);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: c,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            c.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                c.color.withOpacity(0.5),
                c.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
