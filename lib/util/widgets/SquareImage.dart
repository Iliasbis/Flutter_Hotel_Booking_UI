import 'package:flutter/material.dart';

class SquareImage extends StatelessWidget {
  final String imagePath;
  const SquareImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).width;

    return Container(
      width: width * 0.3,
      height: height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepPurple.shade100,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
