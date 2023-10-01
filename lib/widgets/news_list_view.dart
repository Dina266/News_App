import 'package:flutter/material.dart';
import 'package:news_ap/models/articel_model.dart';
import 'package:news_ap/views/web_view.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) => GestureDetector(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        WebViewScreen(url: articles[index].url))),
              ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: NewsTile(articleModel: articles[index]),
          )),
    ));
  }
}
