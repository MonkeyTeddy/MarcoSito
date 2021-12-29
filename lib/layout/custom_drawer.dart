import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        child: ListView(
          children: [

            FloatingActionButton(
                onPressed: (){},
              child: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
    );
  }
}
