import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/core/dummy_data.dart';
import 'package:flutter_ui/src/ui3/screens/onboarding/components/onboardingSlider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: OnboardingSlider(
                controller: _controller,
                data: DummyData.onboardingList,
                getCurrentPage: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
              ),
            ),
            Spacer(flex: 1),
            // Next Page
            Container(
              width: 100,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: newBlack.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: FlatButton(
                height: 80,
                color: newBlack,
                splashColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: white,
                ),
                onPressed: () {
                  setState(() {
                    if (currentPage < DummyData.onboardingList.length - 1) {
                      _controller.nextPage(
                        curve: Curves.linear,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                      );
                    } else {
                      print('hello');
                    }
                  });
                },
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
