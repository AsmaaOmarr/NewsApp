// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:news_app/models/articlemodel.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel article;

  const NewsTile({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            article.img ??
                "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80",
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                  'https://developers.google.com/static/maps/documentation/maps-static/images/error-image-generic.png');
            },
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          article.title ?? "No Title",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          article.description ?? "No description",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
