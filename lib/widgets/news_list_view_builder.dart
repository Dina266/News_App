
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_ap/models/articel_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

// ignore: must_be_immutable
class NewsListViewBuilder extends StatefulWidget {
  final String category;
  double h;

  NewsListViewBuilder({super.key, required this.category, this.h =12  } );


  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future ;
  @override
  void initState() {
    future = NewsService(Dio()).getNews(category: widget.category.toLowerCase());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops there is an error, try later'),
            );
          } else {
            return   SliverToBoxAdapter(
              
                child: Center(
                  heightFactor: widget.h,
                  child: const CircularProgressIndicator()));
          }
        });
  }
}
