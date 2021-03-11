import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/ui1/screens/homeScreen/components/recommendedList.dart';
import 'CatFilter.dart';
import 'catItemSlider.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: [
        CatFilter(),
        SizedBox(height: 20),
        CatItemSlider(),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // View all button
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => purple),
                ),
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 14,
                    color: black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        ),
        RecommendedList()
      ],
    );
  }
}
