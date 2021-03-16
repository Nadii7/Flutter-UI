import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui2/widgets/onboardingIndecator.dart';

class OnboardingSlider extends StatelessWidget {
  final PageController controller;
  final Function(int) getCurrentPage;
  final List<Map<String, dynamic>> data;

  const OnboardingSlider({
    Key key,
    @required this.controller,
    @required this.data,
    this.getCurrentPage,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: data.length,
      controller: controller,
      onPageChanged: (value) => getCurrentPage(value),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            // Image
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                data[index]['image'],
              ),
            ),
            SizedBox(height: 20),
            OnboardingIndecator(
              currentPage: index,
              length: data.length,
              color: black,
              height: 5,
              width: 50,
              margin: 1,
            ),
            Spacer(),
            // Title
            Text(
              data[index]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: newBlack,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
