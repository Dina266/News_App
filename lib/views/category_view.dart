

import 'package:flutter/material.dart';
import 'package:news_ap/widgets/news_list_view_builder.dart';


class CategoryView extends StatelessWidget {
  final String categoriName;
  const CategoryView({super.key , required this.categoriName});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: Navigator.of(context).pop,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Row(
            children: [
              Text(
                'RealTime',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'News',
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
        
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: CustomScrollView(
          slivers: [
            
            const SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            NewsListViewBuilder(category: categoriName , h : 20.0)
          ],
            ),
        ),
      ));
  }
}