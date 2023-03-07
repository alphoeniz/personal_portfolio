import 'package:flutter/material.dart';
import 'package:portfolio/acad_page.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  bool _acad = false;
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
              _acad = !_acad;
            });
          },
          onExit: (event) {
            setState(() {
              _acad = !_acad;
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
                        builder: (context) => const AcadPage()),
                  );
                },
                child: Image.asset(
                  (!_acad)
                      ? 'assets/images/academics.png'
                      : 'assets/images/academics_b.png',
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
