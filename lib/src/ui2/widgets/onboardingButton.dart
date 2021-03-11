import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui2/screens/AuthenticationsScreen/login/loginScreen.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    Key key,
    @required this.currentPage,
    @required this.pages,
    @required this.controller,
  }) : super(key: key);

  final int currentPage, pages;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Remove Button
          TextButton(
            child: Text(
              "Back",
              style: TextStyle(
                color: blue,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () {
              if (currentPage > 0)
                controller.previousPage(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
            },
          ),
          // Next Button
          SizedBox(
            width: 120,
            child: FlatButton(
              height: 50,
              color: blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                currentPage == pages - 1 ? "GO" : "Next",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                if (currentPage < pages - 1) {
                  controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                } else if (currentPage == pages - 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
