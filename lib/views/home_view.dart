import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('News',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('Cloude',
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 187, 50),
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: CaregoriesListView(),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 22),
                ),
                const SliverToBoxAdapter(
                  child: NewsListViewBuilder(),
                ),
              ],
            )));
  }
}
