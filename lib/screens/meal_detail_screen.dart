import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedmeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      backgroundColor: Color.fromRGBO(22, 24, 31, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(22, 24, 31, 1.0),
        centerTitle: true,
        title: Text(selectedmeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              selectedmeal.imageUrl,
              fit: BoxFit.fill,
            ),
            Container(
              child: Text(
                "Ingredients",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              margin: EdgeInsets.all(10),
            ),
            Container(
              color: Color.fromRGBO(22, 24, 31, 1.0),
              height: queryData.size.height * 0.3,
              width: queryData.size.width * 0.75,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  margin: EdgeInsets.all(7.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.blue[700],
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Center(
                      child: Text(
                        selectedmeal.ingredients[index].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                itemCount: selectedmeal.ingredients.length,
              ),
            ),
            Container(
              child: Text(
                "Steps",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              margin: EdgeInsets.all(10),
            ),
            Container(
              color: Color.fromRGBO(22, 24, 31, 1.0),
              height: queryData.size.height * 0.35,
              width: queryData.size.width * 0.75,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  margin: EdgeInsets.all(7.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.blue[700],
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Center(
                      child: Text(
                        selectedmeal.steps[index].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                itemCount: selectedmeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
