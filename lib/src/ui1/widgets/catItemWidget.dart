import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating_bar/rating_bar.dart';

class CatItemWidget extends StatelessWidget {
  final Function onTap, onTapFav;
  final String image, title;
  final double rating, height, width;
  final bool isFav;
  const CatItemWidget({
    Key key,
    @required this.image,
    @required this.title,
    @required this.rating,
    @required this.height,
    @required this.width,
    this.isFav = false,
    this.onTap,
    this.onTapFav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Image
              Image.asset(
                image,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              // Details
              Container(
                height: height / 3,
                width: width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // title
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                title,
                                style: TextStyle(
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          // Fav Button
                          FittedBox(
                            child: SizedBox(
                              width: 30,
                              child: FlatButton(
                                height: 30,
                                color: white,
                                onPressed: onTapFav ?? () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.all(7),
                                child: FittedBox(
                                  child: Icon(
                                    Icons.favorite,
                                    color: isFav ? Colors.red : kGreyColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Rating bar
                    SizedBox(
                      height: height / 10,
                      width: width,
                      child: Row(
                        children: [
                          FittedBox(
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
                          SizedBox(width: 10),
                          FittedBox(
                            child: Text(
                              '$rating',
                              style: GoogleFonts.lato(
                                color: white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
