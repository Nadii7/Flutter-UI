import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ui/core/constants.dart';
import 'package:flutter_ui/src/ui1/screens/homeScreen/homeScreen.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultButton.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
          child: Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
        ),
        // Details
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacer(flex: 1),
                // Title
                Text(
                  "Winter\nVacation Trips",
                  style: TextStyle(
                    color: black,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(flex: 1),
                // Sub Title
                Text(
                  "Enjoy your winter vacations with warmth\nand amazing sightseeing on the mountains.\nEnjoy the best experience with us!",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Spacer(flex: 1),
                // Button
                DefaultButton(
                  onPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  text: "Let’s Go!",
                  icon: Icons.arrow_forward_ios_outlined,
                ),
                Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
