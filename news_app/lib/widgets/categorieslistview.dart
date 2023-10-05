// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import '../db/categories.dart';
import 'categorycard.dart';

class CategoriesListView extends StatelessWidget {

  Function()? onTap;

  CategoriesListView({
    Key? key,
    this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: SizedBox(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(obj: categories[index]);
            }),
      ),
    );
  }
}
