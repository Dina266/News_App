
import 'package:flutter/cupertino.dart';
import 'package:news_ap/models/category_model.dart';

import 'category_card.dart';

// ignore: must_be_immutable
class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  List <CategoryModel> categories = const [
    CategoryModel(image: 'assets/general.jpeg' , categoryName: 'General'),
    CategoryModel(image: 'assets/health.png' , categoryName: 'Health'),
    CategoryModel(image: 'assets/science.jpeg' , categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg' , categoryName: 'Technology'),
    CategoryModel(image: 'assets/enternait.jpeg' , categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/bussiness.jpeg' , categoryName: 'Business'),
    CategoryModel(image: 'assets/sports.jpeg' , categoryName: 'Sports'),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5, top: 8 , bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text('Explorer' ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold), textAlign: TextAlign.left,)),
        SizedBox(
          height: 110,
          child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => 
            CategoryCard(categori : categories[index])
            ),
        ),
      ],
    );
  }
}