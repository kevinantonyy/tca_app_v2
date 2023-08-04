import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:tca_app_v2/models/category.dart';
// import 'package:tca_app_v2/models/dummy_data.dart';
import 'package:tca_app_v2/pages/gallery_images_screen.dart';
// import 'package:tca_app_v2/widgets/category_grid_item.dart';
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:googleapis/drive/v3.dart' as drive;

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() {
    return _GalleryState();
  }
}

class _GalleryState extends State<Gallery> {
  // String folderPath = '/Users/rino/Desktop/TCA_Categories';
  // List<String> imagePaths = [];
  drive.DriveApi? _driveApi;
  List<drive.File> _folders = [];
  List<drive.File> _images = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getImageInFolder();
    authenticateWithGoogle();
  }

  void authenticateWithGoogle() async {
    final credentials = await auth.clientViaServiceAccount(
      File('jsonKey/tca-app-394902-7a4d3ba505f3.json') as auth
          .ServiceAccountCredentials, // Replace with the actual path to your JSON credentials file
      [drive.DriveApi.driveScope],
    );

    _driveApi = drive.DriveApi(credentials);
    listFoldersAndImages();
  }

  void listFoldersAndImages() async {
    try {
      final folderLink =
          'https://drive.google.com/drive/folders/1NC1K1X6XsEfDi5YesV5mb6AEeBYfa3nJ';
      final folderId = folderLink.split('/').last;

      // List all folders inside the parent folder
      final folders = await _driveApi!.files.list(
          q: "'$folderId' in parents and mimeType = 'application/vnd.google-apps.folder'");
      setState(() {
        _folders = folders.files ?? [];
        print('Folder length ${_folders.length}');
      });

      // List all images inside each folder
      for (var folder in _folders) {
        final images = await _driveApi!.files.list(
          q: "'${folder.id}' in parents and mimeType contains 'image/'",
        );
        setState(() {
          _images.addAll(images.files ?? []);
          print('Images length ${_images.length}');
        });
      }
    } catch (e) {
      print('Error listing folders and images: $e');
    }
  }

  /*void getImageInFolder() async {
    try {
      Directory folder = Directory(folderPath);
      if (await folder.exists()) {
        List<FileSystemEntity> files = folder.listSync();
        List<String> tempImagePaths = [];
        for (var file in files) {
          if (file is File && isImageFile(file.path)) {
            tempImagePaths.add(file.path);
          }
        }
        setState(() {
          imagePaths = tempImagePaths;
        });
      } else {
        print('Folder not found: $folderPath');
      }
    } catch (e) {
      print('Error counting images: $e');
    }
  }*/

  bool isImageFile(String filePath) {
    final imageExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.bmp'];
    String extension = filePath.toLowerCase();
    return imageExtensions.any((ext) => extension.endsWith(ext));
  }

  void _onSelectCategory(BuildContext context, String title) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => GalleryImagesScreen(
          title: title,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gallery'),
      ),
      body: GridView.builder(
        itemCount: _images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: ((context, index) {
          final image = _images[0];
          return Card(
            child: InkWell(
              onTap: () {
                _onSelectCategory(context, '');
              },
              child: Image.network(
                image.webContentLink!,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          );
        }),
      ),
    );
  }
}
