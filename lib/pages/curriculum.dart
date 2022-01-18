import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marco_sito/layout/layout.dart';
import 'package:marco_sito/layout/my_propertys.dart';
import 'package:marco_sito/widgets/round_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SiteLayout(
        page: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: MyPropertys.darkColor,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: FittedBox(
                    child: Text(
                      'Zaninielli\nMarco',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Heading_Pro',
                        fontWeight: FontWeight.bold,
                        color: MyPropertys.lightColor,
                        fontSize: 65.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  child: RoundImage(
                    size: 100.0,
                    image: Image.asset('assets/images/Profile.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: FittedBox(
                    child: Text(
                      'Via di Sanfontane 6\n'
                      '38045 Civezzano (TN) Italia\n'
                      '+39 345 1533 956\n'
                      'marco@lambstudios.it\n'
                      'marco.lambstudios.it',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontFamily: 'Heading_Pro',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 18.0,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [],
          ),
        ),
      ],
    ));
  }
}
