import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marco_sito/layout/my_propertys.dart';
import 'menu.dart';

class Modal {
  static void modalShow(var context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        transitionDuration: const Duration(microseconds: 200),
        pageBuilder: (BuildContext context, Animation first, Animation second) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Stack(
                children: [
                  const Center(
                    child: Menu(),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.clear_rounded,
                          size: 28,
                          color: MyPropertys.menuColor,
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        hoverColor: MyPropertys.buttonHoverColor,
                        hoverElevation: 0,
                        highlightElevation: 0,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
