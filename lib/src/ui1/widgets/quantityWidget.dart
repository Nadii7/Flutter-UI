import 'package:flutter/material.dart';
import 'package:flutter_ui/core/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityWidget extends StatefulWidget {
  final Function(int) getValue;
  const QuantityWidget({
    Key key,
    this.getValue,
  }) : super(key: key);

  @override
  _QuantityWidgetState createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kSecondaryColor.withOpacity(0.1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 30,
                child: FlatButton(
                  height: 40,
                  color: purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.zero,
                  child: FittedBox(
                    child: Icon(
                      Icons.remove,
                      color: white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (value != 1) value--;
                    });
                  },
                ),
              ),
              Text(
                "$value",
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 30,
                child: FlatButton(
                  height: 40,
                  color: purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.zero,
                  child: FittedBox(
                    child: Icon(
                      Icons.add,
                      color: white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      value++;
                    });
                  },
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 15),
        Icon(
          Icons.access_time,
          size: 25,
        ),
        SizedBox(width: 5),
        // days
        Text(
          "$value Days",
          style: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
