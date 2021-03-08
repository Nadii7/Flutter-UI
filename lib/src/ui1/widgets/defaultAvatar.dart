import 'package:flutter/material.dart';
import 'package:flutter_ui/core/constants.dart';

class DefaultAvatar extends StatelessWidget {
  final String image;
  final bool isActive;

  const DefaultAvatar({Key key, @required this.image, @required this.isActive})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 55,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: purple,
              backgroundImage: AssetImage(image),
            ),
            Positioned(
              bottom: 0,
              left: 5,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: isActive ? Colors.green : Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
