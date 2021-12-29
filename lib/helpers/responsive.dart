import 'package:flutter/material.dart';

const int smallBrakepoint = 640;
const int bigBrakepoint = 1007;

class ResponsiveWidget extends StatelessWidget {
  final Widget desktopScreen;
  final Widget? tabletScreen;
  final Widget? mobileScreen;

  const ResponsiveWidget({
    Key? key,
    required this.desktopScreen,
    this.tabletScreen,
    this.mobileScreen,
  }) : super(key: key);

  static bool isMobileScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= smallBrakepoint;

  static bool isTabletScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > smallBrakepoint &&
          MediaQuery.of(context).size.width <= bigBrakepoint;

  static bool isDesktopScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > bigBrakepoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width > bigBrakepoint) {
        return desktopScreen;
      } else if (_width > smallBrakepoint && _width <= bigBrakepoint) {
        return tabletScreen ?? desktopScreen;
      } else {
        return mobileScreen ?? desktopScreen;
      }
    });
  }
}