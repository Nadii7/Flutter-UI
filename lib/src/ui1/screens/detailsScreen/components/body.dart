import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:flutter_ui/src/core/dummy_data.dart';
import 'package:flutter_ui/src/ui1/screens/detailsScreen/components/detailsWidget.dart';

class Body extends StatelessWidget {
  final int index;
  const Body({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = DummyData.catItemList[index];
    return Stack(
      children: [
        // Image
        Image.asset(
          data['image'],
          height: MediaQuery.of(context).size.height * 0.45,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        // Details
        Align(
          alignment: Alignment.bottomCenter,
          child: DetailsWidget(
            title: data['title'],
            location: data['location'],
            rating: data['rating'],
            price: data['price'],
            // description: data['description'],
            onPress: () {},
          ),
        ),
        // Back Icon
        Positioned(
          top: 40,
          left: 10,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            ),
          ),
        ),
      ],
    );
  }
}
