import 'package:flutter/material.dart';
import 'package:marco_sito/layout/my_propertys.dart';
import 'package:marco_sito/widgets/on_hover.dart';

class CustomMenuFont extends StatelessWidget {
  final String text;

  const CustomMenuFont({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered) {
      final color = isHovered ? Colors.grey : MyPropertys.menuColor;
      return Text(
        text,
        style: TextStyle(
          fontSize: 50,
          fontFamily: 'BebasNeue',
          fontWeight: FontWeight.bold,
          color: color,
        ),
      );
    });
  }
}
