import 'package:flutter/material.dart';

class UpcomingEventsDrawer extends StatelessWidget {
  const UpcomingEventsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Events'),
        backgroundColor: Colors.grey,
      ),
      body: const Text('Upcoming Events Tab'),
    );
  }
}
