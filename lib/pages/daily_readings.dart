import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Bible Reading App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DailyReadingPage(currentDay: 1),
    );
  }
}

class DailyReadingPage extends StatelessWidget {
  final int currentDay;

  DailyReadingPage({required this.currentDay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Bible Reading'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Day $currentDay',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              dailyVerses[currentDay - 1].verse,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              dailyVerses[currentDay - 1].reference,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BibleVerse {
  final String verse;
  final String reference;

  BibleVerse({required this.verse, required this.reference});
}

List<BibleVerse> dailyVerses = [
  BibleVerse(
    verse: 'Bible Verse',
    reference: 'Reference',
  ),
  BibleVerse(
    verse: 'Bible Verse',
    reference: 'Reference',
  ),
];
