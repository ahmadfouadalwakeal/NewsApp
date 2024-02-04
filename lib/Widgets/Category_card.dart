import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Model.dart';
import 'package:news_app/Views/Category_View.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
 final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
          return CategoryView(
            category: category.categoryName,
          );
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image:AssetImage(category.image),fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(category.categoryName,
            style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
          ),
        ),
      ),
    );
  }
}
