import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Category_card.dart';
import 'package:news_app/Widgets/News_tile.dart';
import 'package:dio/dio.dart';

import '../Models/ArticleModel.dart';
import '../Services/News_service.dart';
import '../Widgets/Category_List_View.dart';
import '../Widgets/News_List_View.dart';
import '../Widgets/News_List_View_Builder.dart';

class Home_Views extends StatelessWidget {
  const Home_Views({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News',
              style: TextStyle(color: Colors.black),),
            Text('Cloud',
              style: TextStyle(color: Colors.orange),),
          ],
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView(),),
            SliverToBoxAdapter(child: SizedBox(height: 32,),),
            NewsListViewBuilder(
              catgegory: 'general',
            ),
          ],),
      ),
    );
  }
}



