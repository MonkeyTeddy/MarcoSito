import 'dart:html';

import 'package:flutter/material.dart';

class RoundImage extends StatelessWidget {
  final double size;
  final Image image;

  const RoundImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: size,
            child: ClipOval(
              child: image,
            ),
          ),
        ),
      ],
    );
  }
}
