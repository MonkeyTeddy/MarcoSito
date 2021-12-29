import 'package:flutter/material.dart';
import 'package:marco_sito/widgets/round_image.dart';
import '../widgets/value_bar.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text('Zaninielli'),
              Text('Marco'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RoundImage(
                  size: 70,
                  image: Image.asset('assets/images/Profile.png'),
                ),
              ),
              Text('Contatti'),
              Text('Via di Sanfontane 6'),
              Text('38045 Civezzano (TN) Italia'),
              Text('+39 345 1533 956'),
              Text('marco@zaninelli.it'),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: ValueBar(
                  value: 9,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: ValueBar(
                  value: 9,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: ValueBar(
                  value: 3,
                  height: 9,
                  primaryColor: Colors.pink,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: ValueBar(
                  value: 9,
                  height: 9,
                ),
              ),
            ],
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
    );
  }
}
