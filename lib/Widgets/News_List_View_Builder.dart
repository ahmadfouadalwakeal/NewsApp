import 'package:flutter/material.dart';

import '../Models/ArticleModel.dart';
import '../Services/News_service.dart';
import 'package:dio/dio.dart';

import 'News_List_View.dart';

class NewsListViewBuilder extends StatefulWidget {
   NewsListViewBuilder({super.key, required this.catgegory,});
   final String catgegory;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future =NewsService(Dio()).getNews(category: widget.catgegory,);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future ,
        builder: (context, snapshot) {
      if(snapshot.hasData){
        return News_List_View(
        articles: snapshot.data!,
      );
      }else if(snapshot.hasError){
        return const SliverToBoxAdapter(
          child: Text('oops there was an error, try later'),
        );
      }else{
        return const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),);
      }
    });
  }
}
