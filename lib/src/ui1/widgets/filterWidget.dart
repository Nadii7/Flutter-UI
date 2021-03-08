import 'package:flutter/material.dart';
import 'package:flutter_ui/core/constants.dart';

class FilterWidget extends StatelessWidget {
  final Function onTap;
  final String title;
  final bool isSelected;

  const FilterWidget({Key key, this.onTap, this.title, this.isSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      color: white,
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontSize: isSelected ? 16 : 14,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      textColor: isSelected ? purple : black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
