import 'package:flutter_ui/src/core/dummy_data.dart';
import 'package:flutter_ui/src/ui1/screens/detailsScreen/detailsScreen.dart';
import 'package:flutter_ui/src/ui1/widgets/catItemWidget.dart';
import 'package:flutter/material.dart';

class CatItemSlider extends StatefulWidget {
  @override
  _CatItemSliderState createState() => _CatItemSliderState();
}

class _CatItemSliderState extends State<CatItemSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: DummyData.catItemList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CatItemWidget(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.85,
              image: DummyData.catItemList[index]['image'],
              title: DummyData.catItemList[index]['title'],
              isFav: DummyData.catItemList[index]['isFav'],
              rating: DummyData.catItemList[index]['rating'],
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      index: index,
                    ),
                  ),
                );
              },
              onTapFav: () {
                setState(() {
                  DummyData.catItemList[index]['isFav'] =
                      !DummyData.catItemList[index]['isFav'];
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
