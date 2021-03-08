import 'package:flutter/material.dart';
import 'package:flutter_ui/core/constants.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultAvatar.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        // menu button
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: black,
            size: 30,
          ),
        ),
        actions: [
          DefaultAvatar(
            image: 'assets/images/1.jpg',
            isActive: true,
          )
        ],
      ),
      body: Body(),
    );
  }
}
