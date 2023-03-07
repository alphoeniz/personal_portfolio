import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HandleBar extends StatefulWidget {
  const HandleBar({super.key});

  @override
  State<HandleBar> createState() => _HandleBarState();
}

class _HandleBarState extends State<HandleBar> {
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  bool _linkedin = false;
  bool _github = false;
  bool _instagram = false;
  bool _twitter = false;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _linkedin = !_linkedin;
          });
        },
        onExit: (event) {
          setState(() {
            _linkedin = !_linkedin;
          });
        },
        child: SizedBox(
          width: 80,
          height: 80,
          child: GestureDetector(
            onTap: () {
              _launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/varun-gupta-60455525a/'));
            },
            child: Image.asset(
              (!_linkedin)
                  ? 'assets/images/linkedin_w.png'
                  : 'assets/images/linkedin_b.png',
            ),
          ),
        ),
      ),
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _github = !_github;
          });
        },
        onExit: (event) {
          setState(() {
            _github = !_github;
          });
        },
        child: SizedBox(
          width: 75,
          height: 75,
          child: GestureDetector(
            onTap: () {
              _launchUrl(Uri.parse('https://github.com/procodervarun'));
            },
            child: Image.asset(
              (!_github)
                  ? 'assets/images/github_w.png'
                  : 'assets/images/github_b.png',
            ),
          ),
        ),
      ),
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _instagram = _instagram;
          });
        },
        onExit: (event) {
          setState(() {
            _instagram = _instagram;
          });
        },
        child: SizedBox(
          width: 75,
          height: 75,
          child: GestureDetector(
            onTap: () {
              _launchUrl(Uri.parse('https://www.instagram.com/vrhunn/'));
            },
            child: Image.asset(
              (!_instagram)
                  ? 'assets/images/insta_w.png'
                  : 'assets/images/insta_b.png',
            ),
          ),
        ),
      ),
      MouseRegion(
        onEnter: (event) {
          setState(() {
            _twitter = !_twitter;
          });
        },
        onExit: (event) {
          setState(() {
            _twitter = !_twitter;
          });
        },
        child: SizedBox(
          width: 75,
          height: 75,
          child: GestureDetector(
            onTap: () {
              _launchUrl(Uri.parse('https://twitter.com/'));
            },
            child: Image.asset(
              (!_twitter)
                  ? 'assets/images/twitter_w.png'
                  : 'assets/images/twitter_b.png',
            ),
          ),
        ),
      ),
    ]);
  }
}
