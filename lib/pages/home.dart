import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(6.0),
                child: Text(
                  'Slide #1',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                child: Text(
                  'Slide #2',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                child: Text(
                  'Slide #3',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                child: Text(
                  'Slide #4',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                child: Text(
                  'Slide #5',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              viewportFraction: 0.8,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/pic1.png',
                  height: 650,
                  width: 600,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/pic2.png',
                  height: 650,
                  width: 600,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/pic3.png',
                  height: 650,
                  width: 600,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/pic4.png',
                  height: 650,
                  width: 600,
                ),
              ),
            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          /*Center(
            child: Text(
              'About Us',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Text(
              'A Small Introduction',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'This short video is a quick introduction about our association and what we do.',
            ),
          ),
          const SizedBox(
            height: 16,
          ),*/
        ],
      ),
    );
  }
}
