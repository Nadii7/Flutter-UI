import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui2/screens/onboardingScreen/onboardingScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  Animation<double> animation, animation2;
  AnimationController _controller, _controller2;
  @override
  void initState() {
    // _loading();
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _controller2 = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animation = new CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInExpo,
    );
    animation2 = new CurvedAnimation(
      parent: _controller2,
      curve: Curves.easeInCubic,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward().then(
          (_) => _controller2.forward().then(
                (_) => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (c) => OnboardingScreen(),
                  ),
                ),
              ),
        );
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 3),
          // Image
          ScaleTransition(
            scale: animation,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Image.asset(
                'assets/ui2/1.png',
              ),
            ),
          ),
          Spacer(flex: 1),
          // Text
          FadeTransition(
            opacity: animation2,
            child: Text(
              "space",
              style: GoogleFonts.roboto(
                color: red,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Text
          FadeTransition(
            opacity: animation2,
            child: Text(
              "Aliens",
              style: GoogleFonts.roboto(
                color: blue,
                fontSize: 100,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(flex: 5),
        ],
      ),
    );
  }
}
