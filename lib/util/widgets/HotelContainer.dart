import 'package:flutter/material.dart';
import 'package:hotel_booking/util/responsive/ExtraSmallText.dart';
import 'package:hotel_booking/util/responsive/SmallText.dart';

class HotelContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String rate;
  final String price;
  const HotelContainer(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description,
      required this.rate,
      required this.price});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(left:12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
        width: width * 0.106,
        height: height * 0.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepPurple.shade100,
          image: DecorationImage(
            image: AssetImage(imagePath),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmallText(
              text: title,
              color: Colors.white,
            ),
            ExtraSmallText(
              text: description,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SmallText(
                        text: price, color: Colors.white, font: FontWeight.w600),
                    SmallText(
                      text: "night",
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star_rounded,
                        color: const Color.fromARGB(255, 247, 247, 18)),
                    SmallText(text: rate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
