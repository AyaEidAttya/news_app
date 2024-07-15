import 'package:dio/dio.dart';
import 'package:news_app/Model/Artical_Model.dart';

class NewsService {
  final Dio dio ;
NewsService(this.dio);
  Future<List<ArticalModel>> getGenralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=9a85dc5e961048e4926c9ae4f58891d9');

    Map<String, dynamic> jesonData = response.data;
    List<dynamic> articles = jesonData['articles'];
    List<ArticalModel> articlesList = [];
    for (var article in articles) {
      ArticalModel articalModel = ArticalModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articlesList.add(articalModel);
    }
    return articlesList;
  }
}
