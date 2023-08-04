import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                    image: NetworkImage(
                        'http://tamilcatholicsusa.org/wp-content/uploads/2019/08/TCA-Logo1.png'))),
            _buildSection(Icons.star, 'Our Mission',
                'The mission of our non-profit Association is to bring Tamil Catholics, living in USA and all over the world, together to persevere, cherish and promote the unique heritage of our culture and tradition to the coming generations in the name of our Lord Jesus Christ. '),
            _buildSection(Icons.work, 'What We Do',
                'As a community we come together in prayer by organizing events like retreats and special Mass. We work to promote fellowship and oneness in helping and supporting the needy, through charitable work. We organize classes and educational activities on Tamil language, culture and history in addition to Bible study.'),
            _buildSection(Icons.info, 'About Us',
                'This short video is a quick introduction about our association and what we do.'),
            _buildYouTubeSection('WzhVGdnD9go'),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(IconData icon, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 8),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            content,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  Widget _buildYouTubeSection(String videoId) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(),
        ),
        Center(
          child: YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId,
              flags: const YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
          ),
        ),
      ],
    );
  }
}
