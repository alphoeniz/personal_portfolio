import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/handle_bar.dart';
import 'package:portfolio/widgets/sideNav.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: "#01030b".toColor(),
        body: Row(
          children: [
            Flexible(
              flex: 4,
              child: Container(
                color: "#01030b".toColor(),
                child: Image.asset('assets/images/profile.png'),
              ),
            ),
            Flexible(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Flexible(
                    flex: 8,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  color: "#01030b".toColor(),
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 24, 24, 0),
                                  child: Text(
                                    'Varun Gupta',
                                    style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 75,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 0, 24, 0),
                                  child: Text(
                                      'I am a sophomore in computer science at the Indian Institute of Technology, Hyderabad. I am passionate about technology and innovation, with a strong background in computer science, web development, competitive programming and computer vision. I am committed to staying in touch with the latest industry trends and technologies, always looking for opportunities to improve and grow as a developer.',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: HandleBar(),
                                )
                              ],
                            )),
                        const SideNav(),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 7,
                    child: Container(
                      child: Image.asset('assets/images/bg.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
