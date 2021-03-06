import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marco_sito/layout/layout.dart';
import 'package:marco_sito/pages/curriculum.dart';

void main() {
  Get.put(Controller());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Curriculum(
      ),
    );
  }
}