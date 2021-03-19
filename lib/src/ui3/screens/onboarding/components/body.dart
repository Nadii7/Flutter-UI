import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/dummy_data.dart';
import 'package:flutter_ui/src/ui3/screens/home/home.dart';
import 'package:flutter_ui/src/ui3/screens/onboarding/components/onboardingSlider.dart';
import 'package:flutter_ui/src/ui3/widgets/customIconButton.dart';

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
            // onboarding Slider
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
            CustomIconButton(
              size: 100,
              icon: Icons.play_arrow_rounded,
              onPress: () {
                setState(() {
                  if (currentPage < DummyData.onboardingList.length - 1) {
                    _controller.nextPage(
                      curve: Curves.linear,
                      duration: Duration(
                        milliseconds: 200,
                      ),
                    );
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  }
                });
              },
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
