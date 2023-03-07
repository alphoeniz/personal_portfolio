import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/handle_bar.dart';
import 'package:portfolio/widgets/sideNav2.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AcadPage extends StatefulWidget {
  const AcadPage({super.key});

  @override
  State<AcadPage> createState() => _AcadPageState();
}

class _AcadPageState extends State<AcadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: "#01030b".toColor(),
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
          child: Column(
            children: [
              Flexible(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 5,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 70,
                                child: CircularProfileAvatar(
                                  'assets/images/profile',
                                  radius: 63,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                child: Text('Varun Gupta',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.fredoka(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 22,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                child: Text('EDUCATION & SKILLS',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.fredoka(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 22,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      const HandleBar(),
                    ],
                  )),
              Flexible(
                flex: 8,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Flexible(
                      flex: 10,
                      child: Container(
                        height: 100,
                        width: 900,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          color: "#bfc9e0".toColor().withOpacity(0.6),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 4,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                child: CircularProfileAvatar(
                                  'assets/images/iith.jpg',
                                  radius: 45,
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Flexible(
                              flex: 20,
                              child: Text(
                                  "I am currently pursuing my Bachelors in Computer Science & Engineering at IIT Hyderabad.",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black,
                                  )),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Flexible(
                      flex: 10,
                      child: Container(
                        height: 100,
                        width: 900,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          color: "#bfc9e0".toColor().withOpacity(0.6),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 4,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 50,
                                child: CircularProfileAvatar(
                                  'assets/images/school',
                                  radius: 45,
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Flexible(
                              flex: 20,
                              child: Text(
                                  "I have done my schooling from St. Anselm’s Senior Secondary School, Alwar, Rajasthan.",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black,
                                  )),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const SideNav2(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
