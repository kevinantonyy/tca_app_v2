import 'package:flutter/material.dart';
import 'package:tca_app_v2/models/newsletter_category.dart';

class NewsletterGridItem extends StatelessWidget {
  const NewsletterGridItem({
    super.key,
    required this.newsCategory,
    required this.onSelectCategory,
  });

  final NewsletterCategory newsCategory;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              newsCategory.color.withOpacity(0.55),
              newsCategory.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          newsCategory.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
