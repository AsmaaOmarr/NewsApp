import 'package:dio/dio.dart';
import 'package:news_app/models/articlemodel.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> generalNews(String name) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?category=$name&country=us&apiKey=3fe52ccc85684d5fb8dd887175d42a1c');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var item in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(item);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
