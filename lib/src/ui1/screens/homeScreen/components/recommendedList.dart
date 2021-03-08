import 'package:flutter/material.dart';
import 'package:flutter_ui/core/dummy_data.dart';
import 'package:flutter_ui/src/ui1/screens/detailsScreen/detailsScreen.dart';
import 'package:flutter_ui/src/ui1/widgets/catItemWidget.dart';

class RecommendedList extends StatefulWidget {
  const RecommendedList({
    Key key,
  }) : super(key: key);

  @override
  _RecommendedListState createState() => _RecommendedListState();
}

class _RecommendedListState extends State<RecommendedList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: DummyData.catItemList.length,
            physics: ClampingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) => CatItemWidget(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.5,
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
      ],
    );
  }
}
