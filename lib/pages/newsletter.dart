import 'package:flutter/material.dart';
import 'package:tca_app_v2/models/dummy_data.dart';
import 'package:tca_app_v2/models/newsletter_category.dart';
import 'package:tca_app_v2/pages/newsletter_screen.dart';
import 'package:tca_app_v2/widgets/newsletter_grid_item.dart';

class Newsletter extends StatelessWidget {
  const Newsletter({super.key});

  void _onSelectCategory(BuildContext context, NewsletterCategory category) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => NewsletterScreen(newsCategory: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Newsletter')),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final c in dummyNewsletters)
            NewsletterGridItem(
              newsCategory: c,
              onSelectCategory: () {
                _onSelectCategory(context, c);
              },
            ),
        ],
      ),
    );
  }
}
