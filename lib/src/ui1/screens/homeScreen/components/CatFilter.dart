import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/dummy_data.dart';
import 'package:flutter_ui/src/ui1/widgets/filterWidget.dart';

class CatFilter extends StatefulWidget {
  @override
  _CatFilterState createState() => _CatFilterState();
}

class _CatFilterState extends State<CatFilter> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 3),
        child: Container(
          height: 50,
          child: ListView.builder(
              shrinkWrap: true,
              reverse: true,
              itemCount: DummyData.catList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, index) {
                return FilterWidget(
                  isSelected: selected == index,
                  title: DummyData.catList[index],
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                );
              }),
        ),
      ),
    );
  }
}
