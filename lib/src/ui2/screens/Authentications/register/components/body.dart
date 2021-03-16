import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'registerForm.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // BG Image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/ui2/7.png'),
              ),
              // back Button
              Positioned(
                top: 40,
                left: 10,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: red,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              // Login Form
              Align(
                alignment: Alignment.bottomCenter,
                child: RegisterForm(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
