class ArticleModel {

  final String? image;
  final String title;
  final String? subTitle;
  final String url;

  ArticleModel( {required this.image, required this.title, required this.url, required this.subTitle});

  factory ArticleModel.fromJSon(json) {
    return ArticleModel(
            image: json['urlToImage'],
            url: json['url'],
            title: json['title'],
            subTitle: json['description']);
  }

}