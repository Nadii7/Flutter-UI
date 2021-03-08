import 'package:flutter/material.dart';
import 'package:flutter_ui/core/constants.dart';
import 'package:flutter_ui/core/dummy_data.dart';
import 'package:flutter_ui/src/ui1/widgets/defaultButton.dart';
import 'package:flutter_ui/src/ui1/widgets/quantityWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating_bar/rating_bar.dart';

class DetailsWidget extends StatelessWidget {
  final double rating;
  final int price;
  final Function onPress;
  final String title, location, description;

  const DetailsWidget(
      {Key key,
      this.title,
      this.location,
      this.description,
      this.rating,
      this.price,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // Location
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 15,
              ),
              SizedBox(width: 5),
              // location
              Text(
                location,
                style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          // Rating
          SizedBox(
            width: 170,
            child: Row(
              children: [
                Flexible(
                  child: FittedBox(
                    child: RatingBar.readOnly(
                      initialRating: rating,
                      isHalfAllowed: true,
                      halfFilledIcon: Icons.star_half_rounded,
                      filledIcon: Icons.star_rate_rounded,
                      emptyIcon: Icons.star_outline_rounded,
                      emptyColor: white,
                      filledColor: Colors.yellow,
                      maxRating: 5,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Flexible(
                  child: FittedBox(
                    child: Text(
                      '$rating',
                      style: GoogleFonts.lato(
                        color: black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          QuantityWidget(
            getValue: (value) => print(value),
          ),
          SizedBox(height: 20),
          // Description
          Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                description ?? DummyData.description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          SizedBox(height: 20),
          // price and book button
          Row(
            children: [
              Text(
                "\$",
                style: GoogleFonts.actor(
                  color: purple,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
              // price
              Text(
                '$price',
                style: GoogleFonts.lato(
                  color: purple,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "/package",
                style: GoogleFonts.lato(
                  color: purple,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              // book button
              DefaultButton(
                onPress: onPress,
                text: 'Book Now',
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
