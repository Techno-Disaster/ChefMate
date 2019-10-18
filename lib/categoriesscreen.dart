import 'package:flutter/material.dart';
import 'package:ziggy/data.dart';
import 'package:ziggy/item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Dabeli"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            ) // this part is for map to list the map takes
            //dummy data then converts it to a list for gridview
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          maxCrossAxisExtent: 250,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
      ),
    );
  }
}
