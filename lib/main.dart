import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/login_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor:Colors.black,
      ),
    );
    return MaterialApp(
      title: 'ChefMate',
      color: Colors.black,

      debugShowCheckedModeBanner: false,
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/' home (here screen) directory jesa
      routes: {
        '/': (ctx) => LoginPage(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
