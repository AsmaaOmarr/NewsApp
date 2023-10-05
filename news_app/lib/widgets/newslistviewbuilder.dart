// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/services/news_services.dart';
import 'news_tilelistview.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String nameOfCategory;
  const NewsListViewBuilder({
    super.key,
    required this.nameOfCategory,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices().generalNews(widget.nameOfCategory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, AsyncSnapshot) {
          if (AsyncSnapshot.hasData) {
            return NewsTileListView(
              listOfArticles: AsyncSnapshot.data ?? [],
            );
          } else if (AsyncSnapshot.hasError) {
            return SliverFillRemaining(
              child: Center(
                  child:
                      Text("There was an error please wait and refresh again")),
            );
          } else {
            return SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });

    // if (isLoading) {
    //   return SliverFillRemaining(
    //       child: Center(child: CircularProgressIndicator()));
    // } else {
    //   return news.isNotEmpty
    //       ? NewsTileListView(
    //           listOfArticles: news,
    //         )
    //       : SliverFillRemaining(
    //           child: Center(child: Text("There was an error please wait and refresh again")),
    //         );
    // }
  }
}
