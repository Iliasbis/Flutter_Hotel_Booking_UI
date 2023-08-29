import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight font;
  const SmallText({
    required this.text,
    this.font = FontWeight.normal,
    this.color = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(fontSize: 16, color: color, fontWeight: font));
  }
}
