// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

class WebViewPage extends StatelessWidget {
  String url;
  WebViewPage({ 
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Webview(url: url),
      ),
    );
  }
}

