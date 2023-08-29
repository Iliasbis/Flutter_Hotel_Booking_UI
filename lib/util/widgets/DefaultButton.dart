import 'package:flutter/material.dart';
import 'package:hotel_booking/util/responsive/MediumText.dart';

class DefaultButton extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback clickedButton;
  DefaultButton({
    super.key,
    required this.clickedButton,
    required this.text,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return GestureDetector(
      onTap: clickedButton,
      child: Container(
        width: width,
        height: height * 0.062,
        decoration: BoxDecoration(
          color: const Color(0xff2C67FF),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MediumText(
              text: text,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
