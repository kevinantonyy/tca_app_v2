import 'package:flutter/material.dart';
// import 'package:tca_app_v2/models/category.dart';

class GalleryImagesScreen extends StatelessWidget {
  const GalleryImagesScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Text(
          'This is the page with all the images from the specific album,'),
    );
  }
}
