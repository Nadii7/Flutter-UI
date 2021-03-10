import 'package:flutter/material.dart';
import 'package:flutter_ui/src/ui1/screens/welcomeScreen/welcomeScreen.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultButton.dart';

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
              onPress: () => navigateTo(
                context: context,
                widget: WelcomeScreen(),
              ),
              text: 'First UI',
            ),
            SizedBox(height: 20),
            DefaultButton(
              onPress: () => navigateTo(
                context: context,
                widget: SplashScreen(),
              ),
              text: 'Second UI',
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
