import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

class OnboardingIndecator extends StatelessWidget {
  final int currentPage, length;

  const OnboardingIndecator({
    Key key,
    @required this.currentPage,
    @required this.length,
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
              height: 5,
              width: 25,
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: (index == currentPage) ? blue : blue.withOpacity(0.3),
              ),
            );
          })),
    );
  }
}
