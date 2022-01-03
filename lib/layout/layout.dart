import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marco_sito/helpers/responsive.dart';
import 'package:marco_sito/layout/my_propertys.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'fullscreen_modal.dart';

class Controller extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var drawerOpen = false;

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
    drawerOpen = true;
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
    drawerOpen = false;
  }
}

class SiteLayout extends GetView<Controller> {
  final Widget page;

  const SiteLayout({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: !ResponsiveWidget.isDesktopScreen(context)
          ? AppBar(
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: IconButton(
                  onPressed: () {
                    //TODO::go to homepage
                  },
                  icon: SvgPicture.asset('assets/icons/LOGO_marco.svg'),
                  iconSize: 40,
                  splashRadius: 1,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    color: MyPropertys.menuColor,
                    hoverColor: MyPropertys.buttonHoverColor,
                    onPressed: () {
                      Modal.modalShow(context);
                    },
                  ),
                )
              ],
              toolbarHeight: 50,
              backgroundColor: MyPropertys.appBarColor,
              elevation: 0,
            )
          : AppBar(
              toolbarHeight: 0,
            ),
      body: Column(children: [
        Row(children: [
          !ResponsiveWidget.isDesktopScreen(context)
              ? Container()
              : Container(
                  height: MediaQuery.of(context).size.height,
                  width: 60,
                  color: MyPropertys.appBarColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: IconButton(
                          onPressed: () {
                            //TODO::go to homepage
                          },
                          icon: SvgPicture.asset('assets/icons/LOGO_marco.svg'),
                          iconSize: 50,
                          splashRadius: 1,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.menu),
                        color: MyPropertys.menuColor,
                        onPressed: () {
                          Modal.modalShow(context);
                        },
                        splashRadius: 20,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  )),
          Expanded(
            child: page,
          ),
        ]),
        Row(
          // TODO:: footer
        ),
      ]),
    );
  }
}
