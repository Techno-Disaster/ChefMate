import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  final String categorytitle;

  MealsScreen(
    this.categorytitle,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categorytitle),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Text(
        "ok",
        style: TextStyle(
          fontSize: 26,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
