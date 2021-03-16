import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

class OnboardingIndecator extends StatelessWidget {
  final int currentPage, length;
  final double height, width, margin;
  final Color color;

  const OnboardingIndecator({
    Key key,
    @required this.currentPage,
    @required this.length,
    this.height,
    this.width,
    this.color,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(length, (int index) {
            return AnimatedContainer(
              height: height ?? 5,
              width: width ?? 25,
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: margin ?? 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height ?? 5),
                color: (index == currentPage)
                    ? color ?? blue
                    : color != null
                        ? color.withOpacity(0.2)
                        : blue.withOpacity(0.3),
              ),
            );
          })),
    );
  }
}
