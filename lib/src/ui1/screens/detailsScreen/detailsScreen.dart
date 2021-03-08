import 'package:flutter/material.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final int index;

  const DetailsScreen({Key key, @required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(index:index),
    );
  }
}
