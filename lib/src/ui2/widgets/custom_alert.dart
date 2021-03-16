import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:toast/toast.dart';

class CustomAlert {
  showSnackBar({BuildContext context, String title}) {
    final _snackBar = SnackBar(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      elevation: 5,
      backgroundColor: red,
      behavior: SnackBarBehavior.fixed,
      duration: Duration(seconds: 5),
    );
    Scaffold.of(context).showSnackBar(_snackBar);
  }

  toast({BuildContext context, String title}) {
    Toast.show(
      title,
      context,
      duration: 5,
      gravity: Toast.BOTTOM,
      textColor: white,
      backgroundColor: darkBlue,
      backgroundRadius: 10,
    );
  }
}
