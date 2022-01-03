import 'package:flutter/material.dart';

class ValueBar extends StatelessWidget {
  final int value;
  final double? height;
  final Color? primaryColor;
  final Color? secondaryColor;

  const ValueBar({Key? key,
    required this.value,
    this.primaryColor,
    this.secondaryColor,
    this.height})
      : super(key: key);

  double computeRightRadius() {
    if (height != null) {
      if (value == 10) {
        return height! / 2;
      } else {
        return 0;
      }
    } else {
      if (value == 10) {
        return 6;
      } else {
        return 0;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 12,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: secondaryColor ?? Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(height != null ? height! / 2 : 6),
            bottomLeft: Radius.circular(height != null ? height! / 2 : 6),
            topRight: Radius.circular(height != null ? height! / 2 : 6),
            bottomRight: Radius.circular(height != null ? height! / 2 : 6),
          ),
        ),
        child: Row(
            children: [
              Expanded(
                flex: value,
                child: Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: SizedBox(
                    height: height ?? 12,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: primaryColor ?? Colors.green,
                        borderRadius: BorderRadius.circular(height != null ? height! - 5 / 2 : 6),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10 - value,
                child: const SizedBox(),
              )
            ]
        ),
      ),
    );
  }
}
