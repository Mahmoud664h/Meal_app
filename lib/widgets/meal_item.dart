import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl)),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 44),
            color: Colors.black54,
            child: Column(
              children: [
                Text(meal.title),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
