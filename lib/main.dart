import 'package:flutter/material.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/acad_page.dart';

void main() {
  runApp(const MyApp());
}

//If a widget can change—when a user interacts with it, for example—it's stateful. A stateless widget never changes.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        //primarySwatch is not a Color. It's MaterialColor. Which means it's different shades of a color a material app will use.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
      '/acads': (context) => const AcadPage(),
      }
    );
  }
}
