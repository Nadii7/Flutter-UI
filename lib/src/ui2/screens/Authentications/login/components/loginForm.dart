import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultButton.dart';
import 'package:flutter_ui/src/ui2/screens/Authentications/register/registerScreen.dart';
import 'package:flutter_ui/src/ui2/screens/HomeScreen/homeScreen.dart';
import 'package:flutter_ui/src/ui2/widgets/customPasswordField.dart';
import 'package:flutter_ui/src/ui2/widgets/customTextField.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _form = GlobalKey<FormState>();
  bool autoError = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      autovalidateMode:
          autoError ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 20,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Welcome back Alien!",
                style: TextStyle(
                  color: darkBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              // mail
              CustomTextField(
                label: 'mail',
                hint: 'your-mail@example.com',
                onChange: (value) {},
              ),
              SizedBox(height: 10),
              // password
              CustomPasswordField(
                label: 'Password',
                hint: 'your password',
                onChange: (value) {},
              ),
              // Forgot Password
              Row(
                children: [
                  TextButton(
                    child: Text(
                      'forgot your password?',
                      style: TextStyle(
                        color: blue,
                        fontSize: 14,
                      ),
                    ),
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                        (states) => yellow,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Login button
              DefaultButton(
                height: 60,
                radius: 15,
                text: 'Login',
                color: yellow,
                fontSize: 18,
                textColor: darkBlue,
                fontWeight: FontWeight.bold,
                onPress: () {
                  setState(() {
                    autoError = true;
                  });
                  final isValid = _form.currentState.validate();
                  if (!isValid) {
                    return;
                  }
                  _form.currentState.save();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              // or divider
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 10,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'or',
                    style: TextStyle(
                      color: darkBlue,
                      fontSize: 14,
                      height: 1,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Divider(
                      height: 10,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Register button
              DefaultButton(
                height: 60,
                radius: 15,
                text: 'Join Space',
                color: red,
                fontSize: 18,
                textColor: white,
                fontWeight: FontWeight.bold,
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
