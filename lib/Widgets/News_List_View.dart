import 'package:flutter/material.dart';
import 'package:news_app/Services/News_service.dart';
import '../Models/ArticleModel.dart';
import 'News_tile.dart';
import 'package:dio/dio.dart';


class News_List_View extends StatelessWidget {
   News_List_View({ super.key,required this.articles });

  List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return  SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context,index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
