import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upcoming Events App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UpcomingEventsPage(),
    );
  }
}

class UpcomingEventsPage extends StatelessWidget {
  const UpcomingEventsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Events'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: upcomingEvents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(upcomingEvents[index].name),
                  subtitle: Text(upcomingEvents[index].date),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Event {
  final String name;
  final String date;
  final String description;

  Event({required this.name, required this.date, required this.description});
}

List<Event> upcomingEvents = [
  Event(
    name: 'TCA Mass',
    date: 'August 15, 2023',
    description: 'Join us at location 1',
  ),
  Event(
    name: 'TCA Mass',
    date: 'August 30, 2023',
    description: 'Join us at location 2',
  ),
  Event(
    name: 'TCA Mass',
    date: 'September 17, 2023',
    description: 'Join us at location 3',
  ),
];
