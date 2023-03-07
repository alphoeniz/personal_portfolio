import 'package:flutter/material.dart';
import 'package:portfolio/home_page.dart';

class SideNav2 extends StatefulWidget {
  const SideNav2({super.key});

  @override
  State<SideNav2> createState() => _SideNav2State();
}

class _SideNav2State extends State<SideNav2> {
  bool _home = false;
  bool _achievements = false;
  bool _projects = false;
  bool _blog = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (event) {
            setState(() {
              _home = !_home;
            });
          },
          onExit: (event) {
            setState(() {
              _home = !_home;
            });
          },
          cursor: SystemMouseCursors.click,
          child: Container(
              width: 60,
              height: 60,
              color: "#15244B".toColor(),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage()),
                  );
                },
                child: Image.asset(
                  (!_home)
                      ? 'assets/images/home_w.png'
                      : 'assets/images/home_b.png',
                  fit: BoxFit.contain,
                ),
              )),
        ),
        MouseRegion(
          onEnter: (event) {
            setState(() {
              _achievements = !_achievements;
            });
          },
          onExit: (event) {
            setState(() {
              _achievements = !_achievements;
            });
          },
          child: Container(
            width: 60,
            height: 60,
            color: "#D9D9D9".toColor(),
            child: Image.asset(
              (!_achievements)
                  ? 'assets/images/achievements_b.png'
                  : 'assets/images/achievements.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        MouseRegion(
          onEnter: (event) {
            setState(() {
              _projects = !_projects;
            });
          },
          onExit: (event) {
            setState(() {
              _projects = !_projects;
            });
          },
          child: Container(
            width: 60,
            height: 60,
            color: "#15244B".toColor(),
            child: Image.asset(
              (!_projects)
                  ? 'assets/images/projects.png'
                  : 'assets/images/projects_b.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        MouseRegion(
          onEnter: (event) {
            setState(() {
              _blog = !_blog;
            });
          },
          onExit: (event) {
            setState(() {
              _blog = !_blog;
            });
          },
          child: Container(
            width: 60,
            height: 60,
            color: "#D9D9D9".toColor(),
            child: Image.asset(
              (!_blog) ? 'assets/images/blog_b.png' : 'assets/images/blog.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
