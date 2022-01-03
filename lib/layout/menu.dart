import 'package:flutter/material.dart';
import 'package:marco_sito/widgets/custom_menu_font.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          child: const CustomMenuFont(text: 'Home'),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            Navigator.pop(context);
            //TODO::navigation to home page
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          child: const CustomMenuFont(text: 'Portfolio'),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            Navigator.pop(context);
            //TODO::navigation to portfolio page
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          child: const CustomMenuFont(text: 'Curriculum'),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            Navigator.pop(context);
            //TODO::navigation to curriculum page
          },
        ),
      ],
    );
  }
}
