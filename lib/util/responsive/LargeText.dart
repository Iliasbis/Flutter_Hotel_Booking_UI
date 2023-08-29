import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign align;
  final FontWeight font;
  const LargeText({
    this.align = TextAlign.center,
    required this.text,
    this.font=FontWeight.normal,
    this.color = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(fontSize: 26, color: color, fontWeight: font),
      textAlign: align,
    );
  }
}
