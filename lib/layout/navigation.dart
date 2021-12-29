import 'package:flutter/material.dart';
import 'package:marco_sito/helpers/responsive.dart';

AppBar navigation(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      title: Text('Lamb Studios Logo'),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

            },
          ),
        )
      ],
      toolbarHeight: !ResponsiveWidget.isDesktopScreen(context) ? 50 : 0,
      backgroundColor: Colors.blue[900],
      elevation: 0,
    );
