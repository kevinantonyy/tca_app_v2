import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({super.key, required this.selectedScreen});

  final void Function(String identifier) selectedScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.home,
            size: 26,
          ),
          title: const Text(
            'Home Page',
          ),
          onTap: () {
            selectedScreen('Home');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.people,
            size: 26,
          ),
          title: const Text(
            'About Us',
          ),
          onTap: () {
            selectedScreen('About Us');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.calendar_month,
            size: 26,
          ),
          title: const Text(
            'Upcoming Events',
          ),
          onTap: () {
            selectedScreen('Upcoming Events');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.photo_camera_back,
            size: 26,
          ),
          title: const Text(
            'Gallery',
          ),
          onTap: () {
            selectedScreen('Gallery');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.newspaper,
            size: 26,
          ),
          title: const Text(
            'Newsletter',
          ),
          onTap: () {
            selectedScreen('Newsletter');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.contact_support,
            size: 26,
          ),
          title: const Text(
            'Contact Us',
          ),
          onTap: () {
            selectedScreen('Contact Us');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.question_answer,
            size: 26,
          ),
          title: const Text(
            'FAQ',
          ),
          onTap: () {
            selectedScreen('FAQ');
          },
        ),
      ],
    );
  }
}
