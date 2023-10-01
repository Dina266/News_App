import 'package:dio/dio.dart';
import 'package:news_ap/models/articel_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=7c0e19981d974550ae99f2547081c7c3&category=$category');
      // ignore: avoid_print
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articels = jsonData['articles'];

      List<ArticleModel> articelsList = [];

      for (var articel in articels) {
        ArticleModel articleModel = ArticleModel.fromJSon(articel);
        articelsList.add(articleModel);
      }

      return articelsList;
    } catch (e) {
      return [];
    }
  }
}
