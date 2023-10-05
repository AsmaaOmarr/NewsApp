// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/Pages/webviewpage.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> listOfArticles;

  const NewsTileListView({
    Key? key,
    required this.listOfArticles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: listOfArticles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(14, 5, 14, 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              print(listOfArticles[index].url);
              return WebViewPage(
                url: listOfArticles[index].url,
              );
            }));
          },
          child: NewsTile(
            article: listOfArticles[index],
          ),
        ),
      );
    }));
  }
}
