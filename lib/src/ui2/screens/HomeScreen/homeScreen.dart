import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: white,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Image.asset('assets/ui2/7.png'),
      ),
    );
  }
}
