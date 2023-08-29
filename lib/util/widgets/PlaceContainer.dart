import 'package:flutter/material.dart';
import 'package:hotel_booking/util/responsive/MediumText.dart';

class PlaceContainer extends StatelessWidget {
  final String imagePath;
  final String text;

  const PlaceContainer(
      {super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 14),
      width: width * 0.092,
      height: height * 0.095,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.5),
        color: Colors.deepPurple.shade100,
        image: DecorationImage(
          image: AssetImage(imagePath),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MediumText(
            text: text,
            color: Colors.white,
            font: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
