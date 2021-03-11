import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/dummy_data.dart';
import 'package:flutter_ui/src/ui2/widgets/onboardingButton.dart';
import 'package:flutter_ui/src/ui2/widgets/onboardingIndecator.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentPage = 0;
  PageController _controller = PageController();
  List<Widget> _pages = DummyData.pages;

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Onboarding PageView
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: _pages.length,
                  onPageChanged: _onchanged,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, int index) => _pages[index],
                ),
              ),
              // OnBoading Indicator
              OnboardingIndecator(
                length: _pages.length,
                currentPage: _currentPage,
              ),
              Spacer(), // OnBoading Next Button
              OnboardingButton(
                pages: _pages.length,
                currentPage: _currentPage,
                controller: _controller,
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
