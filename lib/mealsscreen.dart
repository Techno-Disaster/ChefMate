import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dabeli"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Text(
        "Khalo fends",
        style: TextStyle(
          fontSize: 26,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      
    );
  }
}
