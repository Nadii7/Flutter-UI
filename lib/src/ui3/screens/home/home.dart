import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: newBlack,
      ),
      body: Body(),
    );
  }
}
