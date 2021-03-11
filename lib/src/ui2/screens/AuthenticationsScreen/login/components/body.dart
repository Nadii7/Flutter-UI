import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultButton.dart';
import 'package:flutter_ui/src/ui2/widgets/customPasswordField.dart';
import 'package:flutter_ui/src/ui2/widgets/customTextField.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset('assets/ui2/6.png'),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      color: darkBlue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // mail
                  CustomTextField(
                    label: 'mail',
                    hint: 'your-mail@example.com',
                    onChange: (value) {},
                  ),
                  SizedBox(height: 10),
                  CustomPasswordField(
                    label: 'Password',
                    hint: 'your password',
                    onChange: (value) {},
                  ),
                  SizedBox(height: 20),
                  DefaultButton(
                    height: 60,
                    radius: 15,
                    text: 'Login',
                    color: yellow,
                    textColor: darkBlue,
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
