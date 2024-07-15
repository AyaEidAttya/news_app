import 'package:flutter/material.dart';
import 'package:news_app/Model/Artical_Model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articals;

  NewsListView({super.key, required this.articals});

  Widget build(BuildContext context) {
    // NewsService(Dio()).getGenralNews();
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: NewStile(
              articalModel: articals[index],
            ),
          );
        },
        itemCount: articals.length);
  }
}
