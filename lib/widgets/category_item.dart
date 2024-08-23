import 'package:flutter/material.dart';
import '../model/product_model.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 65,
          width: 65,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Image.asset('images/${category.image}'),
        ),
        const SizedBox(height: 2),
        Text(
          category.name.toUpperCase(),
          style: const TextStyle(
              color: Colors.brown,
              fontSize: 10,
              fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}