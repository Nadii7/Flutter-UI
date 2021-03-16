import 'package:flutter/material.dart';
import 'loginForm.dart';

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
                child: Image.asset('assets/ui2/6.png'),
              ),
              // Login Form
              Align(
                alignment: Alignment.bottomCenter,
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
