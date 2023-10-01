import 'package:flutter/material.dart';
import 'package:news_ap/widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 35,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}
