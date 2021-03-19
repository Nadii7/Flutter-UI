import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

class CustomIconButton extends StatelessWidget {
  final Function onPress;
  final double size;
  final IconData icon;

  const CustomIconButton({Key key, this.onPress, this.size, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double buttonSize = size - (size / 5);
    return Container(
      width: size ?? 100,
      height: size ?? 100,
      padding: EdgeInsets.all(size != null ? size / 10 : 10),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(
          size != null ? size / 2 : 50,
        ),
      ),
      child: FlatButton(
        height: size != null ? buttonSize : 80,
        color: newBlack,
        splashColor: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            size != null ? buttonSize / 2 : 40,
          ),
        ),
        padding: EdgeInsets.all(5),
        child: Icon(
          icon ?? Icons.add,
          color: white,
          size: size != null ? buttonSize / 2 : 40,
        ),
        onPressed: onPress ?? () {},
      ),
    );
  }
}
