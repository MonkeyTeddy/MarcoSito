import 'package:flutter/material.dart';
import 'package:marco_sito/helpers/responsive.dart';
import 'package:marco_sito/layout/custom_drawer.dart';
import 'package:marco_sito/layout/navigation.dart';
import 'package:marco_sito/pages/curriculum.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: navigation(context, scaffoldkey),
      body: SingleChildScrollView(
          child: Curriculum()
      ),
    );
  }
}
