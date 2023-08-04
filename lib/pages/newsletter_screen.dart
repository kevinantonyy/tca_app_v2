import 'package:flutter/material.dart';
import 'package:tca_app_v2/models/newsletter_category.dart';

class NewsletterScreen extends StatelessWidget {
  const NewsletterScreen({
    super.key,
    required this.newsCategory,
  });

  final NewsletterCategory newsCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(newsCategory.title),
      ),
      body: Text('This is where the $newsCategory.title can be found'),
    );
  }
}
