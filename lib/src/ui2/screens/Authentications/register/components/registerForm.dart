import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultButton.dart';
import 'package:flutter_ui/src/ui2/screens/HomeScreen/homeScreen.dart';
import 'package:flutter_ui/src/ui2/widgets/customPasswordField.dart';
import 'package:flutter_ui/src/ui2/widgets/customTextField.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RefisterFormState createState() => _RefisterFormState();
}

class _RefisterFormState extends State<RegisterForm> {
  final _form = GlobalKey<FormState>();
  bool autoError = false;
  bool _accept = false;

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
            top: 10,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  "Join Space Aliens",
                  style: GoogleFonts.abrilFatface(
                    color: red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // name
              CustomTextField(
                label: 'name',
                hint: 'daft punk',
                onChange: (value) {},
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              // password
              CustomPasswordField(
                label: 'Confirm Password',
                hint: 'confirm password',
                onChange: (value) {},
              ),
              SizedBox(height: 10),
              // Terms and Policies
              CheckboxListTile(
                dense: true,
                value: _accept,
                checkColor: darkBlue,
                activeColor: yellow,
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Accept terms and policies',
                  style: TextStyle(
                    color: darkBlue,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _accept = !_accept;
                  });
                },
              ),
              SizedBox(height: 20),
              // Register button
              DefaultButton(
                height: 60,
                radius: 15,
                text: 'Join Now',
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
                  if (_accept == false) {
                    return;
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => HomeScreen(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
