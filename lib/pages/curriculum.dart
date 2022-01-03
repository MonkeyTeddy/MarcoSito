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
                Text(
                  'Zaninielli',
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.bold,
                    color: MyPropertys.lightColor,
                    fontSize: 55,
                  ),
                ),
                Text(
                  'Marco',
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.bold,
                    color: MyPropertys.lightColor,
                    fontSize: 55,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RoundImage(
                    size: 70,
                    image: Image.asset('assets/images/Profile.png'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Contatti',
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const LineOfText(text: 'Via di Sanfontane 6'),
                const LineOfText(text: '38045 Civezzano (TN) Italia'),
                const LineOfText(text: '+39 345 1533 956'),
                const TextUrl(text: 'marco.lambstudios.it', url: "http://www.lambstudios.it"),
                const LineOfText(text: 'marco@lambstudios.it'),
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

class LineOfText extends StatelessWidget {
  final String text;

  const LineOfText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}

class TextUrl extends StatelessWidget {
  final String text;
  final String url;

  const TextUrl({Key? key, required this.text, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: GoogleFonts.nunito(
          fontSize: 18,
          color: Colors.white,
        ),
        recognizer: TapGestureRecognizer()..onTap = () async {
          if(canLaunch(url) == true){
            launch(url);
          }else{
            print('Culd not lauch URL');
          }
        }
      ),
    );
  }
}
