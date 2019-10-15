import 'package:flutter/material.dart';
import 'package:ziggy/categoriesscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(),
    );
  }
}

