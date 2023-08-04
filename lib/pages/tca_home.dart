import 'package:flutter/material.dart';
import 'package:tca_app_v2/Pages/about_us.dart';
import 'package:tca_app_v2/Pages/contact_us.dart';
import 'package:tca_app_v2/Pages/faq.dart';
import 'package:tca_app_v2/Pages/gallery.dart';
import 'package:tca_app_v2/Pages/newsletter.dart';
import 'package:tca_app_v2/Pages/daily_readings.dart';
import 'package:tca_app_v2/widgets/drawer.dart';
import 'package:tca_app_v2/Pages/home.dart';
import 'package:tca_app_v2/Pages/upcoming_events.dart';

class TcaHome extends StatefulWidget {
  const TcaHome({super.key});

  @override
  State<TcaHome> createState() {
    return _TcaHomeState();
  }
}

class _TcaHomeState extends State<TcaHome> {
  Widget screen = HomePage();

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _selectScreen(String identifier) {
    if (identifier == 'Home') {
      Navigator.pop(context);
      setState(() {
        _selectedPageIndex = 1;
      });
    }
    if (identifier == 'About Us') {
      Navigator.pop(context);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const AboutUsPage(),
        ),
      );
    }
    if (identifier == 'Upcoming Events') {
      Navigator.pop(context);
      setState(() {
        _selectedPageIndex = 2;
      });
    }
    if (identifier == 'Gallery') {
      Navigator.pop(context);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const Gallery(),
        ),
      );
    }
    if (identifier == 'Newsletter') {
      Navigator.pop(context);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const Newsletter(),
        ),
      );
    }
    if (identifier == 'Contact Us') {
      Navigator.pop(context);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const ContactUs(),
        ),
      );
    }
    if (identifier == 'FAQ') {
      Navigator.pop(context);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const FAQ(),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedPageIndex = 1;
  }

  @override
  Widget build(context) {
    if (_selectedPageIndex == 0) {
      screen = DailyReadingPage(
        currentDay: 2,
      );
    }
    if (_selectedPageIndex == 1) {
      screen = HomePage();
    }
    if (_selectedPageIndex == 2) {
      screen = const UpcomingEventsPage();
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/TCA-Logo1.png',
              scale: 3,
            ),
            const SizedBox(width: 48),
            Text(
              'TCA',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      ),
      drawer: MainDrawer(
        selectScreen: _selectScreen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Daily Readings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Upcoming Events',
          ),
        ],
      ),
      body: screen,
    );
  }
}
