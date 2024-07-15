import 'package:flutter/material.dart';
import 'package:news_app/Model/CatogeryModel.dart';

class CategoryCard extends StatelessWidget {
   CategoryCard({super.key, required this.categorys});

final CategoryModel categorys;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 160,
        decoration: BoxDecoration(
         image: DecorationImage(
            image: AssetImage(categorys.image),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child: Text(
              categorys.Cstgoryname,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
