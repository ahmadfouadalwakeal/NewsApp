import 'package:dio/dio.dart';
import 'package:news_app/Models/ArticleModel.dart';

class NewsService{
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category})async{
    try{
  Response response=await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=02f4b1c4e1844ff6840a7839a2355648&category=$category');
  Map<String,dynamic> jasonData=response.data;

  List<dynamic> articles=jasonData['articles'];

  List<ArticleModel> articlesList=[];

  for(var article in articles){
    ArticleModel articleModel=ArticleModel.fromjson(article);
    articlesList.add(articleModel);
  }
  return articlesList;
    }catch(e){
      return[];
    }
  }
}