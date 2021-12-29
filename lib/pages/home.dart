import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marco_sito/pages/curriculum.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          icon: const Icon(Icons.text_snippet_outlined),
          onPressed: (){
            Get.to(const Curriculum());
          },
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'This is the homescreen',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
