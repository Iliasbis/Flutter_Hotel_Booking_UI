import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback clickedIcon;
  AppBarButton({
    super.key,
    required this.icon,
    required this.clickedIcon,
  });

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.sizeOf(context).height;
    // var width = MediaQuery.sizeOf(context).height;
    return GestureDetector(
      onTap: clickedIcon,
      child: Container(
        padding: const EdgeInsets.all(10),
        // width: width * 0.29,
        // height: height * 0.29,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
