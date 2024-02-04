import 'package:flutter/material.dart';
import '../Models/Category_Model.dart';
import 'Category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key,});
final List<CategoryModel> categories= const[
  CategoryModel(image: 'assets/business.png', categoryName: 'Business'),
  CategoryModel(image: 'assets/entertaiment.png', categoryName: 'Entertainment'),
  CategoryModel(image: 'assets/health.png', categoryName: 'Health'),
  CategoryModel(image: 'assets/science.png', categoryName: 'Science'),
  CategoryModel(image: 'assets/sport.png', categoryName: 'Sport'),
  CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
  CategoryModel(image: 'assets/general.png', categoryName: 'General'),


];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index){
          return  CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}