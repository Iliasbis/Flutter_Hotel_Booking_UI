import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../responsive/SmallText.dart';

class OptionButtons extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color color;

  final String text;
  const OptionButtons({
    super.key,
    this.color = Colors.black,
    this.size = 24,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: color,
              ),
              const SizedBox(width: 10),
              SmallText(
                text: text,
                color: color,
                font: FontWeight.w600,
              ),
            ],
          ),
          Icon(
            CupertinoIcons.forward,
            size: size,
            color: color,
          ),
        ],
      ),
    );
  }
}
