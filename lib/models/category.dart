import 'package:flutter/material.dart';


class Category {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;
 

  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
    this.imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    
  });
}
