import 'dart:ui';

import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;

  CategoryItem(this.id, this.title, this.color, this.imageUrl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: <Widget>[
          Container(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.15, sigmaY: 6.15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover),
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
