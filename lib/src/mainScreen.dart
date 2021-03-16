import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui1/screens/welcomeScreen/welcomeScreen.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultButton.dart';
import 'package:flutter_ui/src/ui3/screens/onboarding/onboarding.dart';
import 'ui2/screens/splashScreen/splashScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultButton(
              height: 60,
              radius: 20,
              color: purple,
              text: 'First UI',
              onPress: () => navigateTo(
                context: context,
                widget: WelcomeScreen(),
              ),
            ),
            SizedBox(height: 20),
            DefaultButton(
              height: 60,
              radius: 20,
              color: blue,
              text: 'Second UI',
              onPress: () => navigateTo(
                context: context,
                widget: SplashScreen(),
              ),
            ),
            SizedBox(height: 20),
            DefaultButton(
              height: 60,
              radius: 20,
              color: newBlack,
              text: 'Third UI',
              onPress: () => navigateTo(
                context: context,
                widget: OnboardingScreen(),
              ),
            )
          ],
        ),
      ),
    );
  }

  navigateTo({BuildContext context, Widget widget}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
