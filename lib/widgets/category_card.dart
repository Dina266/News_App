import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_ap/models/category_model.dart';
import 'package:news_ap/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categori;
  const CategoryCard({super.key, required this.categori});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => 
        CategoryView(categoriName: categori.categoryName),));
        log(categori.categoryName);
      },
      child: Padding(
        padding: const EdgeInsets.only(right :8.0),
        child: Container(
          height: 110,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:  DecorationImage(image: AssetImage(categori.image), fit: BoxFit.fill)
          ),
          child:  Center(
            child: Text(categori.categoryName , style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),
        ),
      ),
    );
  }
}