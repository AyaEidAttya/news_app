import 'package:flutter/material.dart';
import 'package:news_app/Model/CatogeryModel.dart';
import 'package:news_app/widgets/category_card.dart';

class CaregoriesListView extends StatelessWidget {
  CaregoriesListView({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(image: 'lib/assets/Business.jpeg', Cstgoryname: 'Business'),
    CategoryModel(
        image: 'lib/assets/Entertainment.jpeg', Cstgoryname: 'Entertainment'),
    CategoryModel(image: 'lib/assets/health.png', Cstgoryname: 'Health'),
    CategoryModel(image: 'lib/assets/Science.jpeg', Cstgoryname: 'Science'),
    CategoryModel(image: 'lib/assets/Sports.jpeg', Cstgoryname: 'Sports'),
    CategoryModel(
        image: 'lib/assets/technology.jpeg', Cstgoryname: 'Technology'),
    CategoryModel(image: 'lib/assets/General.png', Cstgoryname: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity, // Adjust to use full width
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CategoryCard(
            categorys: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
