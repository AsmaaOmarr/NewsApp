// ignore_for_file: public_member_api_docs, sort_constructors_first
class ArticleModel {
  final String? img;
  final String? title;
  final String? description;
  final String url;

  ArticleModel({
    required this.img,
    required this.title,
    required this.description,
    required this.url,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      img: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      url:json['url'],
    );
  }
}
