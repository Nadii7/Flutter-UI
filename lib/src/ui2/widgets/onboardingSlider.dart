import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

class OnboardingSlider extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  OnboardingSlider({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // OnBoarding Image
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Image.asset(image),
            ),
            SizedBox(height: 30),
            // OnBoarding Title
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            // OnBoarding Discription
            Text(
              description,
              style: TextStyle(
                height: 1.5,
                color: kTextColor,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                letterSpacing: 0.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
