// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Pages/categorynewspage.dart';
import '../models/categorymodel.dart';

class CategoryCard extends StatelessWidget {
  CategoryModel obj;
  CategoryCard({
    Key? key,
    required this.obj,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryNewsPage(categoryName: obj.name,)),
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(14, 14, 0, 14),
        height: 120,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(obj.img),
          ),
        ),
        child: Center(
          child: Text(
            obj.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
