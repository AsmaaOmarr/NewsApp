// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:news_app/widgets/newslistviewbuilder.dart';

class CategoryNewsPage extends StatelessWidget {
  final String categoryName;

  const CategoryNewsPage({
    Key? key,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              categoryName,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.amber[700]),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: CustomScrollView(slivers: [
          NewsListViewBuilder(nameOfCategory: categoryName),
        ]),
      ),
    );
  }
}
